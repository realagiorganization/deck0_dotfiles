#!/usr/bin/env bash
set -euo pipefail

DOCKER_BIN="${DOCKER:-docker}"
IMAGE_TAG="${IMAGE_TAG:-proxmox-mock:local}"
CONTAINER_NAME="${CONTAINER_NAME:-proxmox-mock}"
SSH_PORT="${SSH_PORT:-2222}"
KEY_DIR="${KEY_DIR:-$HOME/.local/share/proxmox-mock}"
AUTHORIZED_KEYS_FILE="${AUTHORIZED_KEYS_FILE:-$KEY_DIR/id_ed25519.pub}"
PRIVATE_KEY_FILE="${PRIVATE_KEY_FILE:-$KEY_DIR/id_ed25519}"

if [ ! -f "$AUTHORIZED_KEYS_FILE" ]; then
  mkdir -p "$KEY_DIR"
  ssh-keygen -t ed25519 -N "" -f "$PRIVATE_KEY_FILE" >/dev/null
fi

AUTHORIZED_KEYS="$(cat "$AUTHORIZED_KEYS_FILE")"

"$DOCKER_BIN" run -d --rm \
  --name "$CONTAINER_NAME" \
  -p "$SSH_PORT":22 \
  -e AUTHORIZED_KEYS="$AUTHORIZED_KEYS" \
  "$IMAGE_TAG"

echo "Mock SSH key: $PRIVATE_KEY_FILE"
