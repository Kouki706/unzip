FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt update && \
  apt install -y --no-install-recommends \
  jlha-utils tar zip unzip && \
  # clean to reduce image size
  apt-get clean -y && \
  apt-get autoremove -y && \
  apt-get autoclean -y && \
  rm -rf /var/lib/apt/lists/*

CMD ["bash"]
