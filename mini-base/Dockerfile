FROM       uggedal/alpine
MAINTAINER Luis Lavena <luislavena@gmail.com>

ADD ./apk-install /usr/sbin/apk-install
RUN apk update && apk upgrade
RUN rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
