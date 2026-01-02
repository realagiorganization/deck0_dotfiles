# deck0_dotfiles

[![VHS](https://github.com/realagiorganization/deck0_dotfiles/actions/workflows/vhs.yml/badge.svg)](https://github.com/realagiorganization/deck0_dotfiles/actions/workflows/vhs.yml)

This repository captures the files created or touched during the RDP setup and desktop customization.

## Demo (Arch Linux + KDE)
![Arch Linux KDE demo](assets/archlinux-kde.gif)

## Demo (ThinkpadKali1 discovery)
![ThinkpadKali1 discovery demo](assets/thinkpadkali1dotfiles-discovery.gif)

## Full discovery (thinkpadkali1dotfiles submodule)
- Local run: `make submodules` then `make discovery-full`
- GitHub Action (VHS): `make actions-discovery`

## Discovery reports
- Latest report: [discovery/latest/REPORT.md](discovery/latest/REPORT.md)
- Latest outputs:
  - [discovery/latest/DISCOVERY_VMS.md](discovery/latest/DISCOVERY_VMS.md)
  - [discovery/latest/DISCOVERY_STORAGES.md](discovery/latest/DISCOVERY_STORAGES.md)
  - [discovery/latest/DISCOVERY_ISOS.md](discovery/latest/DISCOVERY_ISOS.md)
  - [discovery/latest/DISCOVERY_VMS_PORTS.md](discovery/latest/DISCOVERY_VMS_PORTS.md)
  - [discovery/latest/DISCOVERY_VMS_SCREENSHOTS.md](discovery/latest/DISCOVERY_VMS_SCREENSHOTS.md)

## Golden goal: mock Proxmox discovery
- Initialize submodules: `make submodules`
- Use the submodule mock SSH that emulates Proxmox (`qm` + `pct` output): `SSH_BIN=./thinkpadkali1dotfiles/scripts/mock/ssh`
- Run discovery against the mock host: `CHECK_HOSTS="root@mock" make discovery-full`
- Publish the report and outputs from `discovery/latest/` (e.g., commit `discovery/latest/REPORT.md` and the `DISCOVERY_*.md` files)

## RDP setup
- [RDP_CAVEATS.md](RDP_CAVEATS.md)
- [RDP server launcher](Desktop/RDP%20%F0%9F%A7%BE%F0%9F%94%90%20SAM.desktop)
- [RDP client template](Desktop/RDP%20%F0%9F%A7%BE%F0%9F%94%90%20SAM.rdp)
- [SAM file](Desktop/rdp.sam)

## Shell history
- [.bash_history](.bash_history)

## Codex (AI agent) data
- [Codex config](.codex/config.toml)
- [Codex auth](.codex/auth.json)
- [Codex history](.codex/history.jsonl)
- [Codex log](.codex/log/)
- [Codex sessions](.codex/sessions/)
- [Codex skills](.codex/skills/)
- [Codex version](.codex/version.json)
- [Codex rules](.codex/rules/)

## Konsole
- [konsolerc](.config/konsolerc)
- [konsolesshconfig](.config/konsolesshconfig)
- [Konsole profiles and color schemes](.local/share/konsole/)

## Plasma (KDE)
- [Panel/widgets layout](.config/plasma-org.kde.plasma.desktop-appletsrc)
- [plasmarc](.config/plasmarc)
- [plasmashellrc](.config/plasmashellrc)
- [plasmaparc](.config/plasmaparc)
- [plasma-localerc](.config/plasma-localerc)
- [plasmanotifyrc](.config/plasmanotifyrc)
- [plasma-nm](.config/plasma-nm)
- [plasma-workspace](.config/plasma-workspace)
- [PlasmaDiscoverUpdates](.config/PlasmaDiscoverUpdates)
- [kdeglobals](.config/kdeglobals)
- [kcminputrc](.config/kcminputrc)
- [kwinrc](.config/kwinrc)
- [ksmserverrc](.config/ksmserverrc)
- [Plasma user data](.local/share/plasma/)
- [Plasma comic engine cache](.local/share/plasma_engine_comic/)
- [Plasma icons](.local/share/plasma_icons/)

## tmux
- [.tmux.conf](.tmux.conf)

## Git ignore policy
- [.gitignore](.gitignore)
