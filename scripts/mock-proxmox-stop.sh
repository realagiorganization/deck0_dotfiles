#!/usr/bin/env bash
set -euo pipefail

DOCKER_BIN="${DOCKER:-docker}"
CONTAINER_NAME="${CONTAINER_NAME:-proxmox-mock}"

"$DOCKER_BIN" rm -f "$CONTAINER_NAME"
