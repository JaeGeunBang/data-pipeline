### Hbase Docker 셋팅

<hr>


Dockerfile을 기반으로 build, run을 수행한다.



**Docker build, run**

```
> cd ./master
> sudo docker build -t hbase_docker .

> sudo docker run --name=hbase-docker -h hbase-docker -p 8080:8080 -p 8085:8085 -p 9090:9090 -p 9095:9095 -p 16010:16010 -d -v /data/hbase/log:/data hbase_docker
```
