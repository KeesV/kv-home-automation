FROM arm64v8/python:2.7

RUN pip install --upgrade pip && pip install pytz

RUN \
 mkdir /data && \
 mkdir /config && \
 mkdir /downloads && \
 mkdir /tvshows
COPY sickrage /sickrage
RUN pip install --user -U -r /sickrage/requirements.txt
WORKDIR /sickrage
VOLUME /data /config /downloads /tvshows
EXPOSE 8081
ENTRYPOINT ["python","SiCKRAGE.py"]

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD curl -f http://127.0.0.1:8081/home || exit 1

CMD ["--datadir=/data", "--config=/config/config.ini"]

