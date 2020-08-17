### Kafka docker compose 

<hr>



Kafka는 Zookeeper, Kafka Broker가 필요하므로, `Docker-compose`로 구성한다.

- docker-compose는 여러 container를 통합 관리할 수 있는 툴

  

https://github.com/simplesteph/kafka-stack-docker-compose

위 링크에서 

1. Single Zookeeper, Single Kafka Broker
2. Single Zookeeper, Multiple Kafka Broker
3. Multiple Zookeeper, Single Kafka Broker
4. Multiple Zookeeper, Multiple Kafka Broker
5. full stack

와 같은 설정을 위한 docker-compose 파일 (.yml)을 제공한다.



4번 설정 이후, docker ps를 하면 아래와 같이 Zookeeper 3개, Kafka Broker 3개 Container가 실행하고 있는것을 볼 수 있다.

```
CONTAINER ID        IMAGE                         COMMAND                  CREATED             STATUS              PORTS                                                  NAMES
59baf3dae991        confluentinc/cp-kafka:5.5.0   "/etc/confluent/dock…"   46 seconds ago      Up 45 seconds       0.0.0.0:9092->9092/tcp                                 kafka-stack-docker-compose_kafka1_1
f26862ba2050        confluentinc/cp-kafka:5.5.0   "/etc/confluent/dock…"   46 seconds ago      Up 45 seconds       9092/tcp, 0.0.0.0:9093->9093/tcp                       kafka-stack-docker-compose_kafka2_1
043d8e0dd409        confluentinc/cp-kafka:5.5.0   "/etc/confluent/dock…"   46 seconds ago      Up 46 seconds       9092/tcp, 0.0.0.0:9094->9094/tcp                       kafka-stack-docker-compose_kafka3_1
9f6ee58531f4        zookeeper:3.4.9               "/docker-entrypoint.…"   47 seconds ago      Up 46 seconds       2888/tcp, 0.0.0.0:2181->2181/tcp, 3888/tcp             kafka-stack-docker-compose_zoo1_1
e8038689cb7f        zookeeper:3.4.9               "/docker-entrypoint.…"   47 seconds ago      Up 46 seconds       2181/tcp, 2888/tcp, 3888/tcp, 0.0.0.0:2182->2182/tcp   kafka-stack-docker-compose_zoo2_1
be4b128492c4        zookeeper:3.4.9               "/docker-entrypoint.…"   47 seconds ago      Up 46 seconds       2181/tcp, 2888/tcp, 3888/tcp, 0.0.0.0:2183->2183/tcp   kafka-stack-docker-compose_zoo3_1
```

