FROM ubuntu:24.04

RUN apt-get update \
    && apt-get -y install git build-essential libsqlite3-dev zlib1g-dev

RUN git clone --depth 1 https://github.com/felt/tippecanoe.git \
    && cd tippecanoe \
    && make -j \
    && make install \
    && cd ..