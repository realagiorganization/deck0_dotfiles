#!/usr/bin/env bash
set -euo pipefail

DOCKER_BIN="${DOCKER:-docker}"
IMAGE_TAG="${IMAGE_TAG:-proxmox-mock:local}"
CONTAINER_NAME="${CONTAINER_NAME:-proxmox-mock}"
SSH_PORT="${SSH_PORT:-2222}"
AUTHORIZED_KEYS_FILE="${AUTHORIZED_KEYS_FILE:-$HOME/.ssh/id_rsa.pub}"

if [ ! -f "$AUTHORIZED_KEYS_FILE" ]; then
  echo "authorized keys file not found: $AUTHORIZED_KEYS_FILE" >&2
  exit 1
fi

AUTHORIZED_KEYS="$(cat "$AUTHORIZED_KEYS_FILE")"

"$DOCKER_BIN" run -d --rm \
  --name "$CONTAINER_NAME" \
  -p "$SSH_PORT":22 \
  -e AUTHORIZED_KEYS="$AUTHORIZED_KEYS" \
  "$IMAGE_TAG"
