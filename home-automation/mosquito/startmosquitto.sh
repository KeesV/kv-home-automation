docker stop mosquitto
docker rm mosquitto
docker run \
 -d -p 1883:1883 \
 --net=host \
 -v /etc/localtime:/etc/localtime:ro \
 -v /home/kees/mosquitto/config:/mosquitto/config \
 -v /home/kees/mosquitto/log:/mosquitto/log \
 -v /home/kees/mosquitto/data:/mosquitto/data \
 --restart=always \
 --name mosquitto kverhaar/mosquitto

