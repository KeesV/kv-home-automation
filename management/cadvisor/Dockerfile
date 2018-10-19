FROM unibaktr/cadvisor:linux-arm64v8-latest
LABEL maintainer="Kees Verhaar <kverhaar@gmail.com>"

RUN apt-get update && apt-get install curl -y

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD curl -f -s --output /dev/null http://localhost:8080/metrics || exit 1