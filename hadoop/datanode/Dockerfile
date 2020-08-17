FROM hadoop-base:3.1.2

RUN mkdir /opt/hadoop/dfs/data
VOLUME /opt/hadoop/dfs/data

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 9866 9864 9867 9865

CMD ["/start.sh"]
