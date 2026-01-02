## Storage check at 2026-01-02T15:06:41+02:00
| 🖥️ Host | 🔌 SSH | 🗂️ Notes |
| --- | --- | --- |
- Host: root@mock
  - SSH reachable.
  - df -hT:
    Filesystem     Type      Size  Used Avail Use% Mounted on
    udev           devtmpfs  1.9G     0  1.9G   0% /dev
    tmpfs          tmpfs     394M  1.2M  393M   1% /run
    /dev/sda1      ext4      100G   40G   56G  42% /
  - lsblk -f:
    NAME   FSTYPE LABEL UUID                                 MOUNTPOINT
    sda                                                      
    ├─sda1 ext4         1234-ABCD                            /
    └─sda2 swap         5678-EFGH                            
  - pvesm status:
    Name          Type     Status     Total     Used        Available %
    local         dir      active 100000000 40000000 60000000 40.00%
    local-lvm     lvmthin  active 200000000 80000000 120000000 40.00%
| root@mock | ✅ reachable | Proxmox storage reachable |

