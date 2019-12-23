FROM debian:9-slim

RUN mkdir -p /usr/share/man/man1/ && mkdir /output && \
    dpkg --add-architecture i386 && \
    apt update -y && \
    apt install -y --no-install-recommends file mingw-w64 openjdk-8-jdk-headless openjdk-8-jdk-headless:i386

ARG ARCH=win64
ENV ARCH=${ARCH}

ADD . /src

WORKDIR /src

VOLUME /output

CMD ["/src/build.sh"]