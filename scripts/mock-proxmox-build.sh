#!/usr/bin/env bash
set -euo pipefail

DOCKER_BIN="${DOCKER:-docker}"
IMAGE_TAG="${IMAGE_TAG:-proxmox-mock:local}"

"$DOCKER_BIN" build -t "$IMAGE_TAG" mock/proxmox
