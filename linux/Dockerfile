FROM debian:9-slim

ARG ARCH=amd64
ENV ARCH=${ARCH}

RUN mkdir -p /usr/share/man/man1/ && mkdir /output && \
    dpkg --add-architecture ${ARCH} && \
    apt update -y && \
    apt install -y --no-install-recommends file \
    openjdk-8-jdk-headless:${ARCH} \
    gcc:${ARCH} \
    libc6-dev:${ARCH}

ADD . /src

WORKDIR /src

VOLUME /output

CMD ["/src/build.sh"]