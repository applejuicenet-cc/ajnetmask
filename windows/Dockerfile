FROM debian:8-slim

RUN mkdir -p /usr/share/man/man1/ && mkdir /output && \
    apt update -y && \
    apt install -y --no-install-recommends \
    ca-certificates \
    curl \
    unzip \
    file \
    mingw-w64

ENV ARCH="win64"

ARG JDK_VERSION="1.8.0.252-2.b09"

RUN curl -s -L "https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-${JDK_VERSION}/java-1.8.0-openjdk-${JDK_VERSION}.ojdkbuild.windows.x86_64.zip" -o /tmp/jdk.zip

RUN unzip -j /tmp/jdk.zip "*/include/*" -d /tmp/jdk/

ADD ./ /src

WORKDIR /src

VOLUME /output

CMD ["/src/build.sh"]
