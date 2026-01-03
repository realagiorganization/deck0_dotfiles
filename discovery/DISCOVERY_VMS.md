## Check at 2026-01-02T15:05:24+02:00
| 🖥️ Host | 🔌 SSH | 🏗️ Proxmox |
| --- | --- | --- |
- Host: root@mock
  - SSH reachable.
## Check at 2026-01-02T15:05:53+02:00
| 🖥️ Host | 🔌 SSH | 🏗️ Proxmox |
| --- | --- | --- |
- Host: root@mock
  - Unreachable (SSH failed).
| root@mock | ❌ unreachable | — |

## Check at 2026-01-02T15:06:21+02:00
| 🖥️ Host | 🔌 SSH | 🏗️ Proxmox |
| --- | --- | --- |
- Host: root@mock
  - SSH reachable.
  - Inspecting root@mock for Proxmox services...
    - Proxmox detected; collecting VM/LXC inventory.
    - VMs (qm list):
             VMID NAME                 STATUS     MEM(MB)    BOOTDISK(GB) PID
              101 mockvm101            running    1024              10.00 4242
              102 mockvm102            stopped    2048              20.00 0
    - LXCs (pct list):
             VMID STATUS     LOCK         NAME
              201 running                 mocklxc201
              202 stopped                mocklxc202
| root@mock | ✅ reachable | ℹ️ see details above |

