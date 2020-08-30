FROM azul/zulu-openjdk:8

RUN apt-get update && apt-get install -y curl && apt-get install -y vim

ENV HBASE_VERSION=2.3.1
ENV HBASE_URL=http://apache.mirror.cdnetworks.com/hbase/$HBASE_VERSION/hbase-$HBASE_VERSION-bin.tar.gz

RUN curl -fSL "$HBASE_URL" -o /tmp/hbase.tar.gz \
    && tar -xvf /tmp/hbase.tar.gz -C /opt/ \
    && rm /tmp/hbase.tar.gz

RUN ln -s /opt/hbase-$HBASE_VERSION /opt/hbase
RUN ln -s /opt/hbase-$HBASE_VERSION/conf /opt/hbase/conf

COPY hbase-site.xml /opt/hbase/conf

ENV HBASE_HOME /opt/hbase
ENV HBASE_CONF_DIR /opt/hbase/conf
ENV PATH $HBASE_HOME/bin:$PATH
ENV JAVA_HOME /usr/lib/jvm/zulu8-ca-amd64
