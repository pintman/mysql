FROM ubuntu:16.04

RUN echo 'mysql-server mysql-server/root_password password 123456' | debconf-set-selections
RUN echo 'mysql-server mysql-server/root_password_again password 123456' | debconf-set-selections

RUN apt-get update && apt-get install -y mysql-server mysql-client

# Must be run from a script.
RUN service mysql start
