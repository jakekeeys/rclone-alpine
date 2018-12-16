FROM golang:1-alpine AS build

RUN apk update && \
    apk add git && \
    go get github.com/ncw/rclone && \
    go install github.com/ncw/rclone

FROM alpine:latest
COPY --from=build /go/bin/rclone /usr/local/bin/rclone