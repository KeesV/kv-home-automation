FROM arm64v8/debian:stretch-backports

RUN apt-get update
RUN apt-get install -y python-certbot-nginx -t stretch-backports nginx
RUN cd /etc/nginx/sites-enabled && unlink default

VOLUME /etc/nginx/ssl
VOLUME /etc/nginx/sites-enabled
VOLUME /etc/letsencrypt
EXPOSE 443
CMD ["nginx","-g","daemon off;"]