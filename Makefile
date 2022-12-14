CLI_NAME:=posix2ldap

test:
	go test -v ./...
cli:
	go build -o ${CLI_NAME} ${CLI_NAME}.go
lint:
	find . -type f -name '*.go' | xargs goimports -w
	find . -type f -name '*.go' | xargs -n 1 go fmt
	golangci-lint run
coverage:
	go test -coverprofile cover.out ./...
	go tool cover -html=cover.out

