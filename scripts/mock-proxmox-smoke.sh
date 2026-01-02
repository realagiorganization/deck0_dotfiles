#!/usr/bin/env bash
set -euo pipefail

OUTPUT_DIR="${OUTPUT_DIR:-/home/deck/discovery/latest}"
KEY_FILE="${KEY_FILE:-$HOME/.local/share/proxmox-mock/id_ed25519}"

if [ ! -f "$KEY_FILE" ]; then
  echo "Missing key: $KEY_FILE" >&2
  exit 1
fi

required_files=(
  "$OUTPUT_DIR/DISCOVERY_VMS.md"
  "$OUTPUT_DIR/DISCOVERY_STORAGES.md"
  "$OUTPUT_DIR/DISCOVERY_ISOS.md"
  "$OUTPUT_DIR/DISCOVERY_VMS_PORTS.md"
  "$OUTPUT_DIR/DISCOVERY_VMS_SCREENSHOTS.md"
)

for f in "${required_files[@]}"; do
  if [ ! -s "$f" ]; then
    echo "Missing or empty: $f" >&2
    exit 1
  fi
 done

if ! rg -q "VMID NAME" "$OUTPUT_DIR/DISCOVERY_VMS.md"; then
  echo "Expected VM inventory header not found." >&2
  exit 1
fi

if ! rg -q "local" "$OUTPUT_DIR/DISCOVERY_STORAGES.md"; then
  echo "Expected storage output not found." >&2
  exit 1
fi

echo "Mock Proxmox discovery smoke test: OK"
