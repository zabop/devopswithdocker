Using [`backDockerfile` of the previous exercise](https://github.com/zabop/devopswithdocker/blob/master/part3/ex6/backDockerfile) resulted in a **458 MB** image. Switching from `FROM alpine:latest` to `FROM golang:1.16-alpine` and not installing Go manually results in a tiny bit smaller image: **457 MB**. See [`backDockerfile`](https://github.com/zabop/devopswithdocker/blob/master/part3/ex7/backDockerfile).

Using [`frontDockerfile` of the previous exercise](https://github.com/zabop/devopswithdocker/blob/master/part3/ex6/frontDockerfile) resulted in a **664 MB** image. Switching from `FROM ubuntu:22.04`to `FROM node:16-alpine` (and making some further changes) results in a considerably smaller, **496 MB** image. See [`frontDockerfile`](https://github.com/zabop/devopswithdocker/blob/master/part3/ex7/frontDockerfile).