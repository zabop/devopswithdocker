FROM docker:26.1-cli
# build: docker build --tag builder .  
# use:
# docker run -e DOCKER_USER=zabop -e DOCKER_PWD=dckr_pat_XXXXXXXXXXXXXXXXXXXXXX -v /var/run/docker.sock:/var/run/docker.sock builder mluukkai/express_app zabop/testing

WORKDIR /home

COPY builder.sh builder.sh

# install bash & git:
RUN apk add --no-cache bash git
# based on https://stackoverflow.com/a/40944512 & https://stackoverflow.com/a/58393258

ENTRYPOINT ["./builder.sh"]
CMD ["mluukkai/express_app", "zabop/testing"]