FROM alpine:latest

# Build: docker build --platform linux/arm64 --tag zabop/tippecanoe . 

# first RUN line based on: https://github.com/jskeates/docker-tippecanoe/blob/7bdb6c9d49302fae8c2ac03323524b327789481e/Dockerfile#L6
RUN apk add --no-cache git g++ make libgcc libstdc++ sqlite-libs sqlite-dev zlib-dev bash \
    && git clone --depth 1 https://github.com/felt/tippecanoe.git \
    && cd tippecanoe \
    && make -j \
    && make install \
    && cd .. \
    && adduser --disabled-password appuser \
    && chown appuser . \
    && apk del git g++ make libgcc sqlite-dev zlib-dev bash \
    && rm -rf /var/cache/apk/*

USER appuser
ENTRYPOINT [ "tippecanoe" ]