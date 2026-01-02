#!/usr/bin/env bash
set -euo pipefail

mkdir -p /root/.ssh
chmod 700 /root/.ssh

if [ -n "${AUTHORIZED_KEYS:-}" ]; then
  echo "$AUTHORIZED_KEYS" > /root/.ssh/authorized_keys
elif [ -f /mock/authorized_keys ]; then
  cp /mock/authorized_keys /root/.ssh/authorized_keys
else
  : > /root/.ssh/authorized_keys
fi

chmod 600 /root/.ssh/authorized_keys
ssh-keygen -A >/dev/null 2>&1

exec /usr/sbin/sshd -D -e
