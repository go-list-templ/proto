#!/bin/sh
find /src/api -name "*.proto" -exec protoc \
  --go_out=/src/gen/api \
  --go_opt=paths=source_relative \
  --go-grpc_out=/src/gen/api \
  --go-grpc_opt=paths=source_relative \
  -I=/src/api \
  {} \;