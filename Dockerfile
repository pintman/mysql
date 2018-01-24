FROM ubuntu:16.04

RUN apt update && apt install mysql-server mysql-client
RUN service mysql start
