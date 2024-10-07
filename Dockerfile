ARG CONFLUENCE_IMAGE_VERSION=undefined
FROM atlassian/confluence:${CONFLUENCE_IMAGE_VERSION}

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install -y texlive-full \
  && apt install -y poppler-utils \
  && rm -rf /var/lib/apt/lists/*
