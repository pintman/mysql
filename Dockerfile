FROM ubuntu:16.04

RUN apt-get update && apt-get install -y mysql-server mysql-client
RUN service mysql start
