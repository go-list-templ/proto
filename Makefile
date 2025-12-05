lint:
	docker run -t --rm -v $$(pwd):/app -w /app bufbuild/buf lint
gen:
	docker run -t --rm -v $$(pwd):/app -w /app bufbuild/buf generate