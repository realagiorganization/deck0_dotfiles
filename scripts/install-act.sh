#!/usr/bin/env bash
set -euo pipefail

version="${1:-latest}"
arch="$(uname -m)"
case "$arch" in
  x86_64|amd64) arch="x86_64" ;;
  aarch64|arm64) arch="arm64" ;;
  *)
    echo "Unsupported architecture: $arch" >&2
    exit 1
    ;;
esac

if [ "$version" = "latest" ]; then
  url="https://github.com/nektos/act/releases/latest/download/act_Linux_${arch}.tar.gz"
else
  url="https://github.com/nektos/act/releases/download/${version}/act_Linux_${arch}.tar.gz"
fi

install_dir="$HOME/.local/bin"
mkdir -p "$install_dir"

tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT

curl -fsSL "$url" -o "$tmpdir/act.tgz"
tar -xzf "$tmpdir/act.tgz" -C "$tmpdir"
install -m 0755 "$tmpdir/act" "$install_dir/act"

echo "Installed act to $install_dir/act"
