FROM debian:jessie

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y bison flex libevent-dev build-essential git libpcre3-dev libmysqlclient-dev libpq-dev

RUN mkdir /usr/lib64
RUN git clone -b master https://github.com/larskanis/greensql-fw /greensql-fw
WORKDIR /greensql-fw
RUN make && make install

