#/bin/bash

# delete container, image
sudo docker-compose down
sudo docker image ls | grep hbase | awk '{print $3}' | xargs docker rmi {}

# build image
cd ./base
sudo docker build -t hbase_base:2.3.1 .
cd ../

cd ./master
sudo docker build -t hbase_master:2.3.1 .
cd ../

cd ./region
sudo docker build -t hbase_region:2.3.1 .
cd ../

cd ./zookeeper
sudo docker build -t hbase_zookeeper:2.3.1 .
cd ../

cd ./thrift
sudo docker build -t hbase_thrift:2.3.1 .
cd ../

cd ./rest
sudo docker build -t hbase_rest:2.3.1 .
cd ../
# run image
#sudo docker run --name=hbase_docker -h hbase_docker --network hadoop_fluentd_hadoop -p 8080:8080 -p 8085:8085 -p 9090:9090 -p 9095:9095 -p 16010:16010 -d -v /data/hbase/log:/data hbase_docker
sudo docker-compose up -d
