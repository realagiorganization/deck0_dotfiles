## ISO/image check at 2026-01-02T15:05:53+02:00
| 🖥️ Host | 🔌 SSH | 🗂️ Notes |
| --- | --- | --- |
- Search roots: /var/lib/vz /mnt /media /isos /iso (maxdepth 4)
- Host: root@mock
  - Unreachable (SSH failed).
| root@mock | ❌ unreachable | No image scan (SSH failed) |

## ISO/image check at 2026-01-02T15:06:21+02:00
| 🖥️ Host | 🔌 SSH | 🗂️ Notes |
| --- | --- | --- |
- Search roots: /var/lib/vz /mnt /media /isos /iso (maxdepth 4)
- Host: root@mock
  - SSH reachable.
  - Images found:
    /var/lib/vz/template/iso/mock1.iso	102400 KB
    /var/lib/vz/template/iso/mock2.img	204800 KB
| root@mock | ✅ reachable | Scanning /var/lib/vz /mnt /media /isos /iso (maxdepth 4) |

