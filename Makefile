# Makefile for a Rust project

# Variables
CARGO = cargo
CARGO_FMT = $(CARGO) fmt
CARGO_CLIPPY = $(CARGO) clippy
CARGO_TEST = $(CARGO) test
CARGO_BUILD = $(CARGO) build
CARGO_RUN = $(CARGO) run

# Default target: build the project
.PHONY: all
all: build

# Format the code
.PHONY: format
format:
	$(CARGO_FMT)

# Lint the code
.PHONY: lint
lint:
	$(CARGO_CLIPPY) --all-targets --all-features -- -D warnings

# Run tests
.PHONY: test
test:
	$(CARGO_TEST)

# Build the project
.PHONY: build
build:
	$(CARGO_BUILD) --release

# Run the project
.PHONY: run
run:
	$(CARGO_RUN)

# Clean the project
.PHONY: clean
clean:
	$(CARGO) clean

# Help message
.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  all       Build the project (default)"
	@echo "  format    Format the code"
	@echo "  lint      Lint the code"
	@echo "  test      Run tests"
	@echo "  build     Build the project"
	@echo "  run       Run the project"
	@echo "  clean     Clean the project"
	@echo "  help      Display this help message"

