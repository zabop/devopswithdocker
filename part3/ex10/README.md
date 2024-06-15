The original Dockerfile: [here](https://github.com/zabop/devopswithdocker/blob/master/part1/exercise1.15/Dockerfile).
The resulting image is **845 MB**. Using `alpine:latest` instead of `ubuntu:24.04`, using 1 `RUN` commands instead of many, and removing dependencies only needed for building tippecanoe results in a **373 MB** image. See the new Dockerfile.
