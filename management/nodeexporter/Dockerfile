FROM rycus86/prometheus-node-exporter
LABEL maintainer="Kees Verhaar <kverhaar@gmail.com>"

RUN apk update && apk add curl

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD curl -f -s --output /dev/null http://localhost:9100/metrics || exit 1