FROM hadoop_base:3.1.2

ADD yarn-site.xml /etc/hadoop/

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 8031 8088

CMD ["/start.sh"]
