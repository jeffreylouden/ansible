# Dockerfile used for testing configuration on a clean environment.

FROM fedora:36 AS base
WORKDIR /usr/local/bin
RUN dnf update -y && \
    dnf upgrade -y && \
    dnf install -y ansible git curl && \
    dnf autoremove -y && \
    dnf clean all

FROM base AS local
ARG TAGS
RUN groupadd -g 1000 jeffreylouden
RUN useradd -g 1000 -u 1000 -G wheel jeffreylouden
RUN echo "jeffreylouden:password" | chpasswd
USER jeffreylouden
WORKDIR /home/jeffreylouden

FROM local
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml --ask-become-pass --ask-vault-pass"]
