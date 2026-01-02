# Next Steps

## Current state
- GitHub Actions/VHS workflow added; pushes work when DNS resolves `github.com`.
- Local Actions runner uses `act` via Makefile, but installation failed because DNS could not resolve `github.com`.
- `.actrc` added with default platform mapping for `act`.
- Latest commits are local and not pushed due to intermittent DNS failures.

## What to do next
1) Restore DNS/network so `github.com` resolves.
2) Run:
   - `make actions-install`
   - `make actions-list`
   - `make actions-test`
   - `make actions-vhs`
3) Push: `git push -u origin main`

## Notes
- If `act` install succeeds, the Makefile targets should work as-is.
- The VHS workflow will generate `assets/archlinux-kde.gif` and auto-commit it via GitHub Actions.
