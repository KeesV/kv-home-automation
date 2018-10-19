FROM rycus86/prometheus
LABEL maintainer="Kees Verhaar <kverhaar@gmail.com>"

RUN apk update && apk add curl

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD curl -f http://127.0.0.1:9090/status || exit 1