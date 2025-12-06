lint:
	docker run -t --rm -v $$(pwd):/app -w /app bufbuild/buf lint

.PHONY: gen
gen:
	docker build -t protoc . && docker run --rm -v $$(pwd):/src protoc