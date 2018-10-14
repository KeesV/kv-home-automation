docker stop node-red
docker rm node-red
docker run \
 -d -p 1880:1880 \
 -e "FLOWS=flows.json" \
 --net=host \
 -v /etc/localtime:/etc/localtime:ro \
 -v /home/kees/node-red/data:/data \
 --restart=always \
 --name node-red kverhaar/node-red

