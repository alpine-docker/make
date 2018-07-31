FROM alpine:edge

RUN apk add --update --no-cache make

cmd ["make"]
