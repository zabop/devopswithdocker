Size of image `front`, created using [`frontDockerfile` of the previous exercise](https://github.com/zabop/devopswithdocker/blob/master/part3/ex5/frontDockerfile): **666 MB**.
(I know this from `docker image ls` after `docker build --file frontDockerfile . --tag front`.)

After joininng `RUN` commands, `apt-get purge`s & `rm -rf /var/lib/apt/lists/*`, (see frontDockerfile in the current directory), image size is **664 MB**.
