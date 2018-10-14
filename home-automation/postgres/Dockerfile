# Notice:
# When updating this file, please also update virtualization/Docker/Dockerfile.dev
# This way, the development image and the production image are kept in sync.

FROM arm64v8/postgres:10
LABEL maintainer="Kees Verhaar <kverhaar@gmail.com>"

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD pg_isready