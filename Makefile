.PHONY: setup build run test lint clean format-fix lint-fix lint-migrate lint-list-linters lint-list-formatters

default: help

help: ## Display help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

nix-shell: ## Enter the nix-shell
	nix develop

setup: ## Setup the project
	go mod tidy

build: ## Build the application
	go build -o bin/logimos-cli main.go

run: ## Run the application
	go run main.go

test: ## Run all tests
	go test ./...

lint-fix: ## Run all linters and fix lint issues https://golangci-lint.run/usage/configuration/#linters-settings
	golangci-lint run

lint-migrate: ## Migrate from old linters to new linters https://golangci-lint.run/usage/configuration/#migrate
	golangci-lint migrate --format json

lint-list-linters: ## Display all available linters https://golangci-lint.run/usage/configuration/#linters-settings
	golangci-lint help linters

lint-list-formatters: ## Display all confiured formatters https://golangci-lint.run/usage/configuration/#linters-settings
	golangci-lint linters

clean: ## Clean the project
	rm -rf bin

validate-golangci-lint: ## Validate the golangci-lint configuration
	golangci-lint config verify

# gofumpt -w -extra ./... doesn't work with nix-shell cwd is not the project root
format-fix: ## Fix formatting issues
	find . -name '*.go' -type f -print0 | xargs -0 gofumpt -w -extra
