.PHONY: build push

push:
	git add .
	git commit -m "pushed Make"
	git push origin develop

build: 
	go build -o build/project -v ./cmd/apiserver

.DEFAULT_GOAL = build