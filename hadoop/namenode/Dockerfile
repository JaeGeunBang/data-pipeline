FROM hadoop-base:3.1.2

ADD hdfs-site.xml /etc/hadoop/

RUN mkdir /opt/hadoop/dfs/name
VOLUME /opt/hadoop/dfs/name

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 9870 9000

CMD ["/start.sh", "/opt/hadoop/dfs/name"]
