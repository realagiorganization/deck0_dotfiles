# Proxmox Mock (container + optional KubeVirt)

This mock provides a lightweight SSH endpoint that emulates Proxmox commands
(`pvesh`, `qm`, `pct`, `pvesm`, `nmap`, and `ip`) for discovery testing.

## Build and run locally (Docker/Podman)

Build:
```
docker build -t proxmox-mock:local mock/proxmox
```

Run (port 2222 on localhost):
```
docker run -d --name proxmox-mock \
  -p 2222:22 \
  -e AUTHORIZED_KEYS="$(cat ~/.ssh/id_rsa.pub)" \
  proxmox-mock:local
```

Test SSH:
```
ssh -p 2222 root@localhost "qm list"
```

Run discovery against the mock:
```
CHECK_HOSTS="root@localhost" SSH_OPTS="-p 2222" make discovery-full
```

## MicroK8s (Deployment + Service)

Build and load the image into MicroK8s:
```
docker build -t proxmox-mock:local mock/proxmox
microk8s ctr image import <(docker save proxmox-mock:local)
```

Apply the deployment/service:
```
microk8s kubectl apply -f mock/proxmox/k8s/namespace.yaml
microk8s kubectl apply -f mock/proxmox/k8s/deployment.yaml
microk8s kubectl apply -f mock/proxmox/k8s/service.yaml
```

Port-forward SSH:
```
microk8s kubectl -n proxmox-mock port-forward svc/proxmox-mock-ssh 2222:22
```

Then run discovery:
```
CHECK_HOSTS="root@localhost" SSH_OPTS="-p 2222" make discovery-full
```

## KubeVirt (optional VM)

This optional path spins up a KubeVirt VM that exposes the same mock SSH endpoint
via a containerDisk image.

1) Enable KubeVirt in MicroK8s:
```
microk8s enable kubevirt
```

2) Import the image and apply the VM:
```
microk8s ctr image import <(docker save proxmox-mock:local)
microk8s kubectl apply -f mock/proxmox/kubevirt/vm.yaml
```

3) Expose SSH and run discovery:
```
virtctl expose vm proxmox-mock-vm --name proxmox-mock-ssh --port 22 --target-port 22
microk8s kubectl -n proxmox-mock port-forward svc/proxmox-mock-ssh 2222:22
CHECK_HOSTS="root@localhost" SSH_OPTS="-p 2222" make discovery-full
```
