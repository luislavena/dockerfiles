FROM       luislavena/mini-base
MAINTAINER Luis Lavena <luislavena@gmail.com>

ENV REDIS_VERSION 2.8.12-r0

RUN apk-install redis=$REDIS_VERSION

ADD ./redis.conf /etc/redis.conf
ADD ./start.sh /start.sh

VOLUME ["/var/lib/redis"]

EXPOSE 6379

CMD ["/start.sh"]
