### Fluentd docker 셋팅

<hr>



환경은 WSL2, Docker를 통해 fluentd 셋팅을 진행한다.



docker file과 docker 실행은 아래 링크 참고.

***dockerfile***

- https://github.com/fluent/fluentd-docker-image/blob/master/v1.11/debian/Dockerfile

  

build, run

- https://hub.docker.com/r/fluent/fluentd/



**build**

```
docker build -t fluentd .
```



**run**

```
docker run -d -p 24224:24224 -v /data/fluentd/log:/fluentd/log --rm -it fluentd
```

> run이 제대로 동작하지 않는다면 `docker logs <container id>`를 통해 에러를 확인해 수정한다.



**접속**

```
docker exec -it <container id> /bin/bash
```



**network 연결** 

```bash
docker network ls # 네트워크 조회
docker network inspect <network 이름> # 특정 네트워크에 연결된 container 확인

docker run -d -p 24224:24224 -v /data/fluentd/log:/fluentd/log --network <network 이름> --rm -it fluentd # container 시작시 --network 파라미터 추가
```

