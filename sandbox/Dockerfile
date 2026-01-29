FROM python:3.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash ca-certificates curl git jq less openssh-client ripgrep \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash dev && \
    mkdir -p /workspace && chown -R dev:dev /workspace

USER dev
ENV HOME=/home/dev
WORKDIR /workspace

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
