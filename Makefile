ifneq (,)
.error This Makefile requires GNU Make.
endif

# Ensure additional Makefiles are present
MAKEFILES = Makefile.docker Makefile.lint
$(MAKEFILES): URL=https://raw.githubusercontent.com/devilbox/makefiles/master/$(@)
$(MAKEFILES):
	@if ! (curl --fail -sS -o $(@) $(URL) || wget -O $(@) $(URL)); then \
		echo "Error, curl or wget required."; \
		echo "Exiting."; \
		false; \
	fi
include $(MAKEFILES)

# Set default Target
.DEFAULT_GOAL := help


# -------------------------------------------------------------------------------------------------
# Default configuration
# -------------------------------------------------------------------------------------------------
# Own vars
TAG        = latest

# Makefile.docker overwrites
NAME       = PHP
#VERSION    = X.X
IMAGE      = devilbox/php-fpm-community
FLAVOUR    = devilbox
FILE       = Dockerfile-$(VERSION)
DIR        = Dockerfiles/$(FLAVOUR)
ifeq ($(strip $(TAG)),latest)
	DOCKER_TAG = $(VERSION)-$(FLAVOUR)
else
	DOCKER_TAG = $(VERSION)-$(FLAVOUR)-$(TAG)
endif
ARCH       = linux/amd64

# Makefile.lint overwrites
FL_IGNORES  = .git/,.github/
SC_IGNORES  = .git/,.github/


# -------------------------------------------------------------------------------------------------
#  Default Target
# -------------------------------------------------------------------------------------------------
.PHONY: help
help:
	@echo "lint                                     Lint project files and repository"
	@echo
	@echo "build [ARCH=...] [TAG=...]               Build Docker image"
	@echo "rebuild [ARCH=...] [TAG=...]             Build Docker image without cache"
	@echo "push [ARCH=...] [TAG=...]                Push Docker image to Docker hub"
	@echo
	@echo "manifest-create [ARCHES=...] [TAG=...]   Create multi-arch manifest"
	@echo "manifest-push [TAG=...]                  Push multi-arch manifest"
	@echo
	@echo "test [ARCH=...]                          Test built Docker image"
	@echo

# -------------------------------------------------------------------------------------------------
#  Overwrite Targets
# -------------------------------------------------------------------------------------------------

# Append additional target to lint
lint: lint-readme

.PHONY: lint-readme
lint-readme:
	@echo "################################################################################"
	@echo "# Lint projects in README.md"
	@echo "################################################################################"
	./build/update-readme.sh
	git diff --quiet || { echo "Build Changes"; git diff; git status; false; }


# -------------------------------------------------------------------------------------------------
#  Docker Targets
# -------------------------------------------------------------------------------------------------
.PHONY: build
build: docker-arch-build

.PHONY: rebuild
rebuild: docker-arch-rebuild

.PHONY: push
push: docker-arch-push


# -------------------------------------------------------------------------------------------------
#  Manifest Targets
# -------------------------------------------------------------------------------------------------
.PHONY: manifest-create
manifest-create: docker-manifest-create

.PHONY: manifest-push
manifest-push: docker-manifest-push


# -------------------------------------------------------------------------------------------------
#  Test Targets
# -------------------------------------------------------------------------------------------------
.PHONY: test
test:
	@echo "Not implemented"
