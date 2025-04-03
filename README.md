# Logimos Go CLI Starter Repository

## Overview
This repository provides a quick-start template for building robust, maintainable Go CLI applications, ensuring consistency and efficiency from day one.

## Features
- Cobra CLI Framework
- Structured Logging with Zap
- Configuration management using Viper
- Harmonized development environment with Nix (`flake.nix`)
- Reproducible development setup (`.devcontainer`)
- Comprehensive linting with GolangCI-Lint
- Unit testing framework
- CI/CD via GitHub Actions

## Repository Structure

```
go-cli-starter/
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile
├── .github/
│   └── workflows/
│       └── ci.yml
├── cmd/
│   └── root.go
├── internal/
│   ├── config/
│   │   └── config.go
│   └── logging/
│       └── logger.go
├── pkg/
├── scripts/
├── tests/
│   └── example_test.go
├── .gitignore
├── .golangci.yml
├── flake.nix
├── go.mod
├── go.sum
├── main.go
└── README.md
```

## Getting Started

### 1. Clone Template

```bash
git clone <repo-url>
```

### 2. Set Up Development Environment

#### Using Nix:

```bash
nix develop
```

##### Install Modules

```bash
go mod tidy
```

#### Using VS Code DevContainer:

- Open in VS Code
- Use the Remote Containers extension to launch

### 3. Run the Application

```bash
go run main.go
```

### 4. Testing

```bash
go test ./...
```

### 5. Linting

```bash
golangci-lint run
```

### 6. Make

For convenience, we have a Makefile that provides shortcuts for common commands.

## Contributing

- Fork the repository
- Create your feature branch
- Commit and push your changes
- Submit a Pull Request

## License