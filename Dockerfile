FROM ubuntu:16.04

RUN debconf-set-selections <<< 'mysql-server mysql-server/root_password password 123456'
RUN debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 123456'

RUN apt-get update && apt-get install -y mysql-server mysql-client
RUN service mysql start
