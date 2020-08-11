FROM debian:8-slim

RUN mkdir -p /usr/share/man/man1/ && mkdir /output && \
    apt update -y && \
    apt install -y --no-install-recommends \
    ca-certificates \
    unzip \
    file \
    mingw-w64

ADD "https://api.adoptopenjdk.net/v2/binary/nightly/openjdk8?openjdk_impl=hotspot&os=windows&arch=x64&release=latest&type=jdk" /tmp/jdk.zip

ENV ARCH="win64"

RUN unzip -j /tmp/jdk.zip "*/include/*" -d /tmp/jdk/

ADD ./ /src

WORKDIR /src

VOLUME /output

CMD ["/src/build.sh"]
