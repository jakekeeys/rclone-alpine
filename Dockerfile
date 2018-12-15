FROM golang:1-alpine

RUN apk update && \
    apk add git && \
    go get github.com/ncw/rclone && \
    go install github.com/ncw/rclone

