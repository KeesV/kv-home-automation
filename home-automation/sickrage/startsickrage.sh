docker stop sickrage
docker rm sickrage
docker run \
 -d -p 8082:8081 \
 -v /home/kees/sickrage/data:/data \
 -v /home/kees/sickrage/config:/config \
 -v /etc/localtime:/etc/localtime \
 -v /mnt/video/Series:/tvshows \
 -v /mnt/downloads/SABnzbd/Downloads/sickrage:/downloads \
 --restart=always \
 --name sickrage kverhaar/sickrage

