#FROM aarch64/debian:jessie-slim
FROM arm64v8/debian:stable-slim

RUN apt-get update && apt-get install -y \
 wget \
 build-essential \
 libssl1.1 libssl-dev \
 libc-ares-dev uuid-dev libwebsockets-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
RUN wget http://mosquitto.org/files/source/mosquitto-1.5.3.tar.gz && tar -xzvf mosquitto-1.5.3.tar.gz 
WORKDIR /mosquitto-1.5.3
RUN make WITH_LIBWEBSOCKETS=yes && make install && /sbin/ldconfig

RUN mkdir /mosquitto \
 && mkdir /mosquitto/config \
 && mkdir /mosquitto/data \
 && mkdir /mosquitto/log \
 && cp /etc/mosquitto/mosquitto.conf.example /mosquitto/config/mosquitto.conf
ADD mosquitto.logrotate /etc/logrotate.d/mosquitto
VOLUME /mosquitto/config /mosquitto/data /mosquitto/log

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD mosquitto_sub -t '$SYS/#' -C 1 | grep -v Error || exit 1

ENTRYPOINT ["mosquitto", "-v", "-c", "/mosquitto/config/mosquitto.conf"]

