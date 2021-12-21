FROM debian:buster-slim

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /workdir
RUN apt update && \
    apt install -y --no-install-recommends \
    jlha-utils \
    tar \
    zip \
    unar

RUN useradd -d /workdir developer

COPY start.sh /start.sh
ENTRYPOINT ["/start.sh"]

CMD ["bash"]
