WORKSPACE_DIR ?= $(PWD)

# If the first argument is "dev" or "test" or "ci" or "stg" or "prod"...
ifneq ( $(filter wordlist 1,dev test ci stg prod), $(firstword $(MAKECMDGOALS)))
  # use the rest as arguments for "dev" or "test" or "ci" or "stg" or "prod"
  ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(ARGS):;@:)
endif

.PHONY: usage
usage:
	@echo "Test: $SECRECT"

