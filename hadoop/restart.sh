#/bin/bash

# docker-compose down, delete image
sudo docker-compose down
sudo docker image ls | grep zulu-openjdk | awk '{print $1 ":" $2}' | xargs docker rmi --force {}
sudo docker image ls | grep hadoop | awk '{print $3}' | xargs docker rmi {}

# build image
cd base/
sudo docker build -t hadoop_base:3.1.2 .
cd ..

cd namenode/
sudo docker build -t hadoop_namenode:3.1.2 .
cd ..

cd datanode/
sudo docker build -t hadoop_datanode:3.1.2 .
cd ..

cd resourcemanager/
sudo docker build -t hadoop_resourcemanager:3.1.2 .
cd ..

cd nodemanager/
sudo docker build -t hadoop_nodemanager:3.1.2 .
cd ..

# docker-compuse up
sudo docker-compose up -d
