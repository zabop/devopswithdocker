Size of image `front`, created using [`frontDockerfile` of the previous exercise](https://github.com/zabop/devopswithdocker/blob/master/part3/ex5/frontDockerfile): **666 MB**. (I know this from `docker image ls` after `docker build --file frontDockerfile . --tag front`.)

After joining `RUN` commands, `apt-get purge`s & `rm -rf /var/lib/apt/lists/*` (see [`frontDockerfile` in the current directory](https://github.com/zabop/devopswithdocker/blob/master/part3/ex6/frontDockerfile)), image size is **664 MB**.

Size of image `back`, created using [`backDockerfile` of the previous exercise](https://github.com/zabop/devopswithdocker/blob/master/part3/ex5/backDockerfile): **458 MB**. (I know this from `docker image ls` after `docker build --file backDockerfile . --tag back --no-cache`.)

After joining `RUN` commands, `apk del git` and `rm -rf /var/cache/apk/*`, (see [`backDockerfile` in the current directory](https://github.com/zabop/devopswithdocker/blob/master/part3/ex6/backDockerfile)), image size is still **458 MB**. Strange.
