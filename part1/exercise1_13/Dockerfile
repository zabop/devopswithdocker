FROM alpine:latest
EXPOSE 8080

COPY --from=golang:1.16-alpine /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"
#^based on: https://stackoverflow.com/a/59485924/8565438

RUN apk add --no-cache git
#^based on: https://stackoverflow.com/a/58393258/8565438

RUN git clone https://github.com/docker-hy/material-applications.git
WORKDIR /material-applications/example-backend

RUN go build
CMD ["./server"]