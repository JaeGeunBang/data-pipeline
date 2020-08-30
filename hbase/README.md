### Hbase Docker 셋팅

<hr>


Dockerfile을 기반으로 build, run을 수행한다.



**Docker build, run**

```
> cd ./master
> sudo docker build -t hbase_docker .

> sudo docker run --name=hbase-docker -h hbase-docker -p 8080:8080 -p 8085:8085 -p 9090:9090 -p 9095:9095 -p 16010:16010 -d -v /data/hbase/log:/data hbase_docker
```



### 참고



$HBASE_HOME, $JAVA_HOME은 꼭 설정되어야 한다.

- $HBASE_HOME가 제대로 설정되지 않는다면 `**Error: Could not find or load main class org.apache.hadoop.hbase.util.HBaseConfTool**` 이슈가 발생한다.
- $JAVA_HOME이 제대로 설정되지 않는다면, 다른 HBase 서비스들이 실행되지 않는다.