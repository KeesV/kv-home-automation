# Notice:
# When updating this file, please also update virtualization/Docker/Dockerfile.dev
# This way, the development image and the production image are kept in sync.

FROM fg2it/grafana-armhf:v5.1.4
LABEL maintainer="Kees Verhaar <kverhaar@gmail.com>"

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD curl -f http://127.0.0.1:3000/login || exit 1