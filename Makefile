.PHONY: build push start run test

push:
	@git add .
	@git commit -m "pushed Make"
	@git push origin develop

build: 
	@go build -o build/apiserver -v ./cmd/apiserver

start: build
	@./build/apiserver

run: start

test:
	go test -v -race -timeout 30s ./...

.DEFAULT_GOAL = build