### Hadoop Docker 셋팅

<hr>


하둡 3.2.1 버전으로 셋팅하며, 간단하게 NameNode, DataNode만 띄운다.



먼저 base 디렉토리에서 build 한다.

```bash
cd base
sudo docker build -t hadoop-base:3.2.1 .
```



빌드된 base를 NameNode, DataNode에서 각각 Image를 참조한다.

이후 NameNode와 DataNode 디렉토리에서 각각 buile 한다.

```
cd namenode
sudo docker build -t hadoop-namenode:3.2.1 .

cd datanode
sudo docker build -t hadoop-datanode:3.2.1 .
```



마지막으로, docker-compose를 통해 각 이미지를 컨테이너로 실행한다.

```
sudo docker-compose up -d
```



`localhost:9870` 에 접속해서 NameNode WebUI가 뜨는것을 확인한다.