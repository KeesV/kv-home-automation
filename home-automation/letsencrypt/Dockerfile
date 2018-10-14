FROM arm64v8/debian:stretch

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
RUN /opt/letsencrypt/letsencrypt-auto --os-packages-only
RUN /opt/letsencrypt/letsencrypt-auto --install-only
WORKDIR /opt/letsencrypt
VOLUME /etc/letsencrypt
EXPOSE 80
EXPOSE 443
CMD ["./letsencrypt-auto", "--no-bootstrap", "--no-self-upgrade"]