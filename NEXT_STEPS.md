# Next Steps

## Current state
- GitHub Actions/VHS workflow added; `.actrc` maps `ubuntu-latest`.
- `act` installed to `/home/deck/.local/bin/act`.
- `make actions-list` and `make actions-test` completed successfully.
- Added `.dockerignore` to keep build context small for the Docker image.
- `make actions-vhs` now builds the image but fails in `charmbracelet/vhs-action`: `Failed to install ffmpeg`.
- Workflow now seeds ffmpeg via `apt` and sets tool-cache envs, but the action still tries to download ffmpeg via GitHub API and fails under `act`.
- Added ACT-specific VHS inputs and a lightweight `Dockerfile.archlinux.act` to reduce local build pressure.
- `git push` to `origin main` succeeded.

## What to do next
1) Re-run `make actions-vhs` with a GitHub token for `act`, e.g.:
   - `GH_TOKEN=$(gh auth token) make actions-vhs ACT_FLAGS="--bind -s GH_TOKEN=$GH_TOKEN"`
2) If the local run still fails, rely on GitHub Actions for the recording.
3) If the GIF was generated/committed locally, check `git status` and push if needed.
4) Build and run the mock Proxmox container: `make mock-proxmox-build` then `make mock-proxmox-run`.
5) Run discovery against the mock SSH endpoint: `CHECK_HOSTS="root@localhost" SSH_OPTS="-p 2222" make discovery-full`.
6) If using MicroK8s, deploy the mock manifests and port-forward SSH as described in `mock/proxmox/README.md`.

## Testing and packaging (next steps)
- Testing: run the CI workflow `Proxmox Mock CI` after the next push to validate discovery against the local container mock.
- Testing: ensure the smoke test script passes locally (`scripts/mock-proxmox-smoke.sh`).
- Packaging: confirm the GHCR publish step succeeds on `main` and update tags as needed.
- Packaging: add a versioned release tag and a changelog entry when the mock image is published.

## Notes
- The VHS workflow will generate `assets/archlinux-kde.gif` and auto-commit it via GitHub Actions.
