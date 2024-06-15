FROM alpine:latest AS builder

RUN apk add --no-cache git g++ make libgcc libstdc++ sqlite-libs sqlite-dev zlib-dev bash
# based on: https://github.com/jskeates/docker-tippecanoe/blob/7bdb6c9d49302fae8c2ac03323524b327789481e/Dockerfile#L6

RUN git clone --depth 1 https://github.com/felt/tippecanoe.git \
    && cd tippecanoe \
    && make -j \
    && make install \
    && cd ..