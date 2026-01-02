# Next Steps

## Current state
- GitHub Actions/VHS workflow added; `.actrc` maps `ubuntu-latest`.
- `act` installed to `/home/deck/.local/bin/act`.
- `make actions-list` and `make actions-test` completed successfully.
- `make actions-vhs` failed during checkout: `no space left on device` writing to `/tmp`.
- `git push` to `origin main` succeeded.

## What to do next
1) Free disk space (especially `/tmp`/Docker): remove unused images/containers or clean temp files.
2) Re-run `make actions-vhs`.
3) If the GIF was generated/committed locally, check `git status` and push if needed.
4) Build and run the mock Proxmox container: `make mock-proxmox-build` then `make mock-proxmox-run`.
5) Run discovery against the mock SSH endpoint: `CHECK_HOSTS="root@localhost" SSH_OPTS="-p 2222" make discovery-full`.
6) If using MicroK8s, deploy the mock manifests and port-forward SSH as described in `mock/proxmox/README.md`.

## Testing and packaging (next steps)
- Testing: add a smoke test that runs discovery against the container mock and verifies non-empty outputs in `discovery/latest/`.
- Testing: wire a CI job to build the mock image and run discovery with `SSH_OPTS="-p 2222"` against localhost.
- Packaging: publish the mock image to a registry (e.g., `ghcr.io/realagiorganization/proxmox-mock`) and update K8s manifests to reference it.
- Packaging: add a versioned release tag and a changelog entry when the mock image is published.

## Notes
- The VHS workflow will generate `assets/archlinux-kde.gif` and auto-commit it via GitHub Actions.
