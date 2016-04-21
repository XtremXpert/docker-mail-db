From mariadb:latest

MAINTAINER Benoît Vézina <xtremxpert@xtremxpert.com>

COPY setup-mailserv.sql /tmp/setup-mailserv.sql

RUN mysqladmin -u root -p $MYSQL_ROOT_PASSWORD create mailserver
RUN mysql -u root -p $MYSQL_ROOT_PASSWORD mailserver < /tmp/setup-mailserv.sql
