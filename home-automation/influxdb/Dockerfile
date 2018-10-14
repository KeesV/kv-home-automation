# Notice:
# When updating this file, please also update virtualization/Docker/Dockerfile.dev
# This way, the development image and the production image are kept in sync.

FROM arm64v8/influxdb:latest
LABEL maintainer="Kees Verhaar <kverhaar@gmail.com>"

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD curl -sI http://127.0.0.1:8086/ping || exit 1