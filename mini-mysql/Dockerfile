FROM       luislavena/mini-base
MAINTAINER Luis Lavena <luislavena@gmail.com>

ENV MYSQL_VERSION 5.5.37-r0

RUN apk-install mysql=$MYSQL_VERSION mysql-client=$MYSQL_VERSION pwgen

ADD ./mysql.cnf /etc/mysql/my.cnf
ADD ./start.sh /start.sh

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

CMD ["/start.sh"]
