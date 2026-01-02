FROM alpine:3.19

RUN apk add --no-cache \
    bash \
    coreutils \
    iproute2 \
    openssh \
    python3 \
    shadow \
    util-linux \
  && mkdir -p /mock/bin /run/sshd

ENV PATH="/mock/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

COPY bin/ /mock/bin/
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh /mock/bin/* \
  && sed -i 's/^#PermitRootLogin.*/PermitRootLogin prohibit-password/' /etc/ssh/sshd_config \
  && sed -i 's/^#PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config

EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]
