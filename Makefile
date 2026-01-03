ACT ?= act
ACT_FLAGS ?=
ACT_PLATFORMS ?= -P ubuntu-latest=ghcr.io/catthehacker/ubuntu:act-latest
DOCKER ?= docker
SSH_BIN ?= ssh
SSH_OPTS ?=
DISCOVERY_OUTPUT_DIR ?= discovery/latest
DISCOVERY_VMS_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_VMS.md
DISCOVERY_STORAGES_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_STORAGES.md
DISCOVERY_ISOS_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_ISOS.md
DISCOVERY_VMS_PORTS_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_VMS_PORTS.md
DISCOVERY_VMS_SCREENSHOTS_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_VMS_SCREENSHOTS.md
SCREENSHOT_DIR ?= $(DISCOVERY_OUTPUT_DIR)/vm_screenshots
DISCOVERY_OUTPUT_DIR_ABS := $(abspath $(DISCOVERY_OUTPUT_DIR))
DISCOVERY_VMS_PATH_ABS := $(abspath $(DISCOVERY_VMS_PATH))
DISCOVERY_STORAGES_PATH_ABS := $(abspath $(DISCOVERY_STORAGES_PATH))
DISCOVERY_ISOS_PATH_ABS := $(abspath $(DISCOVERY_ISOS_PATH))
DISCOVERY_VMS_PORTS_PATH_ABS := $(abspath $(DISCOVERY_VMS_PORTS_PATH))
DISCOVERY_VMS_SCREENSHOTS_PATH_ABS := $(abspath $(DISCOVERY_VMS_SCREENSHOTS_PATH))
SCREENSHOT_DIR_ABS := $(abspath $(SCREENSHOT_DIR))
SSH_BIN_RESOLVED := $(if $(findstring /,$(SSH_BIN)),$(abspath $(SSH_BIN)),$(SSH_BIN))

.PHONY: actions-install actions-list actions-test actions-vhs actions-run actions-discovery actions-proxmox-mock submodules discovery-full mock-proxmox-build mock-proxmox-run mock-proxmox-stop mock-proxmox-smoke

submodules:
	git submodule update --init --recursive

actions-install:
	./scripts/install-act.sh

actions-list:
	$(ACT) -l

actions-test: submodules
	$(ACT) -n -W .github/workflows/vhs.yml $(ACT_PLATFORMS) $(ACT_FLAGS)

actions-vhs: submodules
	$(ACT) -W .github/workflows/vhs.yml -j record $(ACT_PLATFORMS) $(ACT_FLAGS)

actions-discovery: submodules
	$(ACT) -W .github/workflows/thinkpadkali1dotfiles-discovery.yml -j record $(ACT_PLATFORMS) $(ACT_FLAGS)

actions-proxmox-mock: submodules
	$(ACT) -W .github/workflows/proxmox-mock-ci.yml -j smoke-test $(ACT_PLATFORMS) $(ACT_FLAGS)

discovery-full: submodules
	@mkdir -p "$(DISCOVERY_OUTPUT_DIR_ABS)" "$(SCREENSHOT_DIR_ABS)"
	cd thinkpadkali1dotfiles && SSH_BIN="$(SSH_BIN_RESOLVED)" SSH_OPTS="$(SSH_OPTS)" DISCOVERY_VMS_PATH="$(DISCOVERY_VMS_PATH_ABS)" ./scripts/check_hosts.sh
	cd thinkpadkali1dotfiles && SSH_BIN="$(SSH_BIN_RESOLVED)" SSH_OPTS="$(SSH_OPTS)" DISCOVERY_STORAGES_PATH="$(DISCOVERY_STORAGES_PATH_ABS)" ./scripts/discover_storages.sh
	cd thinkpadkali1dotfiles && SSH_BIN="$(SSH_BIN_RESOLVED)" SSH_OPTS="$(SSH_OPTS)" DISCOVERY_ISOS_PATH="$(DISCOVERY_ISOS_PATH_ABS)" ./scripts/discover_isos.sh
	cd thinkpadkali1dotfiles && SSH_BIN="$(SSH_BIN_RESOLVED)" SSH_OPTS="$(SSH_OPTS)" DISCOVERY_VMS_PORTS_PATH="$(DISCOVERY_VMS_PORTS_PATH_ABS)" ./scripts/discover_vm_ports.sh
	cd thinkpadkali1dotfiles && SSH_BIN="$(SSH_BIN_RESOLVED)" SSH_OPTS="$(SSH_OPTS)" SCREENSHOT_DIR="$(SCREENSHOT_DIR_ABS)" DISCOVERY_VMS_SCREENSHOTS_PATH="$(DISCOVERY_VMS_SCREENSHOTS_PATH_ABS)" ./scripts/capture_vm_screenshots.sh

actions-run: actions-vhs

mock-proxmox-build:
	DOCKER="$(DOCKER)" ./scripts/mock-proxmox-build.sh

mock-proxmox-run:
	DOCKER="$(DOCKER)" ./scripts/mock-proxmox-run.sh

mock-proxmox-stop:
	DOCKER="$(DOCKER)" ./scripts/mock-proxmox-stop.sh

mock-proxmox-smoke:
	./scripts/mock-proxmox-smoke.sh
