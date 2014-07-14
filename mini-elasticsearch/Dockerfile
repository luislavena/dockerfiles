FROM       luislavena/mini-java
MAINTAINER Luis Lavena <luislavena@gmail.com>

# FIXME: perhaps all containers can benefit from these packages?
RUN apk-install ca-certificates wget

ENV ELASTICSEARCH_VERSION 1.2.2

RUN \
  mkdir -p /opt && \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$ELASTICSEARCH_VERSION.tar.gz && \
  tar -xzf elasticsearch-$ELASTICSEARCH_VERSION.tar.gz && \
  rm -rf elasticsearch-$ELASTICSEARCH_VERSION.tar.gz && \
  mv elasticsearch-$ELASTICSEARCH_VERSION /opt/elasticsearch

ADD ./elasticsearch.yml /opt/elasticsearch/config/elasticsearch.yml
ADD ./start.sh /start.sh

VOLUME ["/var/lib/elasticsearch"]

EXPOSE 9200
EXPOSE 9300

CMD ["/start.sh"]
