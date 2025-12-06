FROM golang:alpine

RUN apk add protoc protobuf-dev

# Устанавливаем protoc-gen-go с поддержкой модулей
ENV GO111MODULE=on
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

WORKDIR /src

COPY generate.sh /generate.sh
RUN chmod +x /generate.sh

ENTRYPOINT ["/generate.sh"]