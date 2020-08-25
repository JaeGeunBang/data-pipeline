#/bin/bash

# delete container, image 
sudo docker ps -a | grep fluentd | awk '{print $1}' | xargs docker stop {}
sudo docker ps -a | grep fluentd | awk '{print $1}' | xargs docker rm {}
sudo docker image ls | grep fluentd | awk '{print $3}' | xargs docker rmi {}

# build image, start container
sudo docker build -t fluentd_hadoop .
docker run -d --name fluentd_hadoop -p 24224:24224 --network hadoop_fluentd_hadoop -v /data/fluentd/log:/fluentd/log -it fluentd_hadoop
