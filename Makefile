.PHONY: help build test

# Shell that make should use
SHELL:=bash
OWNER:=scrapinghub

ALL_STACKS:=arche-notebook
ALL_IMAGES:=$(ALL_STACKS)

help:
# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
	@grep -E '^[a-zA-Z0-9_%/-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build/%: DARGS?=
build/%: ## build the latest image for a stack
	docker build $(DARGS) --rm --force-rm -t $(OWNER)/$(notdir $@):latest ./$(notdir $@)

build-test-all: $(foreach I,$(ALL_IMAGES),build/$(I) test/$(I) ) ## build and test all stacks

test/%: ## run tests against a stack
	@TEST_IMAGE="$(OWNER)/$(notdir $@)" pytest tests
