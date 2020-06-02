FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/Hallelujah1025/Stroke-Survivors
COPY . $GOPATH/src/github.com/Hallelujah1025/Stroke-Survivors
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./Stroke-Survivors"]
