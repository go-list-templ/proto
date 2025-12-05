FROM bufbuild/buf:latest

COPY . /app

# Install protoc.
RUN apk add --no-cache protobuf-dev

# Verify installations.
RUN buf --version && \
    protoc --version


WORKDIR /app