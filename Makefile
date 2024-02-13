SHELL:=/bin/bash
VERSION=0x03

.PHONY: build
build:
	@docker build --tag adstool_rhel7 .

.PHONY: run
run:
	@docker run -it --rm adstool_rhel7 bash || true
