# Notice:
# When updating this file, please also update virtualization/Docker/Dockerfile.dev
# This way, the development image and the production image are kept in sync.

FROM arm64v8/python:3.6
LABEL maintainer="Kees Verhaar <kverhaar@gmail.com>"
SHELL ["/bin/bash", "-c"]

# Uncomment any of the following lines to disable the installation.
#ENV INSTALL_TELLSTICK no
#ENV INSTALL_OPENALPR no
#ENV INSTALL_FFMPEG no
#ENV INSTALL_LIBCEC no
#ENV INSTALL_PHANTOMJS no
#ENV INSTALL_SSOCR no

RUN apt-get update && apt-get install libudev-dev postgresql-server-dev-all libavahi-compat-libdnssd-dev -y
RUN apt-get clean

RUN python3 -m venv homeassistant

WORKDIR /homeassistant
RUN source bin/activate \
 && python3 -m pip install wheel \
 && python3 -m pip install psycopg2 \
 && python3 -m pip install homeassistant

VOLUME /config
EXPOSE 8123 51827
ENV TZ Europe/Amsterdam

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD curl -f http://127.0.0.1:8123 || exit 1

CMD source bin/activate && hass --config /config