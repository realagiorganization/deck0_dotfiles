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

## Storage check at 2026-01-02T18:36:32+02:00
| 🖥️ Host | 🔌 SSH | 🗂️ Notes |
| --- | --- | --- |
- Host: root@localhost
  - SSH reachable.
  - df -hT:
    Filesystem     Type                 Size  Used Avail Use% Mounted on
    fuse-overlayfs fuse.fuse-overlayfs  939G  822G  117G  88% /
    tmpfs          tmpfs                 64M     0   64M   0% /dev
    shm            tmpfs                 64M     0   64M   0% /dev/shm
    /dev/nvme0n1p8 ext4                 939G  822G  117G  88% /etc/hosts
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/asound
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/acpi
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/scsi
    tmpfs          tmpfs                7.3G     0  7.3G   0% /sys/firmware
    tmpfs          tmpfs                7.3G     0  7.3G   0% /sys/devices/virtual/powercap
  - lsblk -f:
    NAME        FSTYPE FSVER LABEL UUID FSAVAIL FSUSE% MOUNTPOINTS
    sdb                                                
    ├─sdb1                                             
    ├─sdb2                                             
    └─sdb3                                             
    zram0                                              [SWAP]
    nvme0n1                                            
    ├─nvme0n1p1                                        
    ├─nvme0n1p2                                        
    ├─nvme0n1p3                                        
    ├─nvme0n1p4                                        
    ├─nvme0n1p5                                        
    ├─nvme0n1p6                                        
    ├─nvme0n1p7                                        
    └─nvme0n1p8                          116.6G    88% /etc/hosts
                                                       /etc/hostname
                                                       /etc/resolv.conf
| root@localhost | ✅ reachable | Proxmox storage reachable |

## Storage check at 2026-01-02T18:45:22+02:00
| 🖥️ Host | 🔌 SSH | 🗂️ Notes |
| --- | --- | --- |
- Host: root@localhost
  - SSH reachable.
  - df -hT:
    Filesystem     Type                 Size  Used Avail Use% Mounted on
    fuse-overlayfs fuse.fuse-overlayfs  939G  826G  113G  88% /
    tmpfs          tmpfs                 64M     0   64M   0% /dev
    shm            tmpfs                 64M     0   64M   0% /dev/shm
    /dev/nvme0n1p8 ext4                 939G  826G  113G  88% /etc/hosts
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/asound
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/acpi
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/scsi
    tmpfs          tmpfs                7.3G     0  7.3G   0% /sys/firmware
    tmpfs          tmpfs                7.3G     0  7.3G   0% /sys/devices/virtual/powercap
  - lsblk -f:
    NAME        FSTYPE FSVER LABEL UUID FSAVAIL FSUSE% MOUNTPOINTS
    sdb                                                
    ├─sdb1                                             
    ├─sdb2                                             
    └─sdb3                                             
    zram0                                              [SWAP]
    nvme0n1                                            
    ├─nvme0n1p1                                        
    ├─nvme0n1p2                                        
    ├─nvme0n1p3                                        
    ├─nvme0n1p4                                        
    ├─nvme0n1p5                                        
    ├─nvme0n1p6                                        
    ├─nvme0n1p7                                        
    └─nvme0n1p8                          112.7G    88% /etc/hosts
                                                       /etc/hostname
                                                       /etc/resolv.conf
| root@localhost | ✅ reachable | Proxmox storage reachable |

## Storage check at 2026-01-03T12:30:11+00:00
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

## Storage check at 2026-01-03T12:31:26+00:00
| 🖥️ Host | 🔌 SSH | 🗂️ Notes |
| --- | --- | --- |
- Host: root@localhost
  - SSH reachable.
  - df -hT:
    Filesystem     Type                 Size  Used Avail Use% Mounted on
    fuse-overlayfs fuse.fuse-overlayfs  939G  865G   74G  93% /
    tmpfs          tmpfs                 64M     0   64M   0% /dev
    shm            tmpfs                 64M     0   64M   0% /dev/shm
    /dev/nvme0n1p8 ext4                 939G  865G   74G  93% /etc/hosts
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/asound
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/acpi
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/scsi
    tmpfs          tmpfs                7.3G     0  7.3G   0% /sys/firmware
    tmpfs          tmpfs                7.3G     0  7.3G   0% /sys/devices/virtual/powercap
  - lsblk -f:
    NAME        FSTYPE FSVER LABEL UUID FSAVAIL FSUSE% MOUNTPOINTS
    sdb                                                
    ├─sdb1                                             
    ├─sdb2                                             
    └─sdb3                                             
    zram0                                              [SWAP]
    nvme0n1                                            
    ├─nvme0n1p1                                        
    ├─nvme0n1p2                                        
    ├─nvme0n1p3                                        
    ├─nvme0n1p4                                        
    ├─nvme0n1p5                                        
    ├─nvme0n1p6                                        
    ├─nvme0n1p7                                        
    └─nvme0n1p8                           73.5G    92% /etc/hosts
                                                       /etc/hostname
                                                       /etc/resolv.conf
| root@localhost | ✅ reachable | Proxmox storage reachable |

## Storage check at 2026-01-03T12:32:17+00:00
| 🖥️ Host | 🔌 SSH | 🗂️ Notes |
| --- | --- | --- |
- Host: root@localhost
  - SSH reachable.
  - df -hT:
    Filesystem     Type                 Size  Used Avail Use% Mounted on
    fuse-overlayfs fuse.fuse-overlayfs  939G  868G   71G  93% /
    tmpfs          tmpfs                 64M     0   64M   0% /dev
    shm            tmpfs                 64M     0   64M   0% /dev/shm
    /dev/nvme0n1p8 ext4                 939G  868G   71G  93% /etc/hosts
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/asound
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/acpi
    tmpfs          tmpfs                7.3G     0  7.3G   0% /proc/scsi
    tmpfs          tmpfs                7.3G     0  7.3G   0% /sys/firmware
    tmpfs          tmpfs                7.3G     0  7.3G   0% /sys/devices/virtual/powercap
  - lsblk -f:
    NAME        FSTYPE FSVER LABEL UUID FSAVAIL FSUSE% MOUNTPOINTS
    sdb                                                
    ├─sdb1                                             
    ├─sdb2                                             
    └─sdb3                                             
    zram0                                              [SWAP]
    nvme0n1                                            
    ├─nvme0n1p1                                        
    ├─nvme0n1p2                                        
    ├─nvme0n1p3                                        
    ├─nvme0n1p4                                        
    ├─nvme0n1p5                                        
    ├─nvme0n1p6                                        
    ├─nvme0n1p7                                        
    └─nvme0n1p8                           70.6G    92% /etc/hosts
                                                       /etc/hostname
                                                       /etc/resolv.conf
| root@localhost | ✅ reachable | Proxmox storage reachable |

