# kv-home-automation-docker
Home automation Docker-based setup.

This repo contains two Docker compose stacks, that make up my home automation setup. 
1. Management: This contains the tools used for managing & monitoring the infrastructure. 
2. Home-automation: This contains the tools that do the actual automation.

## Prerequisites
1. Install Docker
2. Install Docker compose (minimum version 1.17)
3. Create a `/etc/environment` file that contains at least the following:
```
HTTP_USERNAME=<username used for tools behind Traefik basic auth>
HTTP_PASSWORD=<encoded password for Traefik basic auth>
DOMAINNAME=<your domain name, e.g. myhome.com>
CLOUDFLARE_EMAIL=<email you used for registering at cloudflare DNS>
CLOUDFLARE_API_KEY=<your cloudflare API key>
BABYCAM_HOST=<IP/port of webcam I have running in the babyroom (optional)>
HA_KEY=<API key of home assistant>
HA_POSTGRES_USER=<user for the Home Assistant postgres instance>
HA_POSTGRES_PASSWORD=<password for the Home Assistant postgres instance>
GRAFANA_POSTGRES_USER=<user for the Grafana postgres instance>
GRAFANA_POSTGRES_PASSWORD=<password for the Grafana postgres instance>
```

## Domain / DNS
I have registered a public domain and configured that to use (https://www.cloudflare.com/)[Cloudflare] as DNS. This allows me to use Traefik to automatically generate and renew (https://letsencrypt.org/)[Let's Encrypt] SSL certificates.
This requires Traefik to know the Cloudflare account and API key, hence that's why they're configured above.
