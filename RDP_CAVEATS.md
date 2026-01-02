# RDP setup log and explanation

## Goal
Make FreeRDP shadow server accept Microsoft RDP/Remmina connections from remote.

## What failed
- RDP/TLS/NLA variants without a SAM file failed with negotiation errors or PAM auth errors.
- TLS auth failed with PAM errors like:
  - `pam_authenticate failure: Authentication token manipulation error`
- NLA without a SAM file prompted for credentials but failed because PAM did not accept the user.

## Root cause
PAM authentication on the Steam Deck rejected credentials (user not found or token errors). This is a local authentication issue, not an RDP protocol issue.

## Working fix
Use NLA with a SAM file so FreeRDP validates credentials via NTLM hash instead of PAM. Created a SAM file for user `deck` with password `1111` and configured `freerdp-shadow-cli` to use it.

## Remaining files
- `/home/deck/Desktop/RDP 🧾🔐 SAM.desktop`
- `/home/deck/Desktop/RDP 🧾🔐 SAM.rdp`
- `/home/deck/Desktop/rdp.sam`

## Server command used
`/usr/bin/freerdp-shadow-cli /port:35589 /bind-address:0.0.0.0 /sec:nla +auth /sam-file:/home/deck/Desktop/rdp.sam`

## Notes
- The `.rdp` file points to `192.168.0.109:35589` and uses NLA.
- Remote access still needs router port-forwarding or a VPN.
