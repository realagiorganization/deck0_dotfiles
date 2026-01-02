# Discovery Report (latest)

Generated via `make discovery-full` using the `thinkpadkali1dotfiles` submodule.

## Run context
- CHECK_HOSTS: root@localhost
- SSH_BIN: ssh (containerized mock on port 2222)
- SSH_OPTS: `-p 2222 -i $HOME/.local/share/proxmox-mock/id_ed25519 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null`
- Output directory: discovery/latest/

## Outputs
- VM/LXC inventory log: `discovery/latest/DISCOVERY_VMS.md`
- Storage discovery log: `discovery/latest/DISCOVERY_STORAGES.md`
- ISO/image discovery log: `discovery/latest/DISCOVERY_ISOS.md`
- Port discovery log: `discovery/latest/DISCOVERY_VMS_PORTS.md`
- VM screenshot log: `discovery/latest/DISCOVERY_VMS_SCREENSHOTS.md`
- VM screenshots: `discovery/latest/vm_screenshots/`
