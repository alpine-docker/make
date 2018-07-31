FROM alpine:edge

RUN apk add --update --no-cache make=4.2.1-r2

ENTRYPOINT ["make"]
CMD ["--help"]
