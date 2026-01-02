ACT ?= act
ACT_FLAGS ?=
ACT_PLATFORMS ?= -P ubuntu-latest=ghcr.io/catthehacker/ubuntu:act-latest
DISCOVERY_OUTPUT_DIR ?= discovery
DISCOVERY_VMS_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_VMS.md
DISCOVERY_STORAGES_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_STORAGES.md
DISCOVERY_ISOS_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_ISOS.md
DISCOVERY_VMS_PORTS_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_VMS_PORTS.md
DISCOVERY_VMS_SCREENSHOTS_PATH ?= $(DISCOVERY_OUTPUT_DIR)/DISCOVERY_VMS_SCREENSHOTS.md
SCREENSHOT_DIR ?= $(DISCOVERY_OUTPUT_DIR)/vm_screenshots

.PHONY: actions-install actions-list actions-test actions-vhs actions-run actions-discovery submodules discovery-full

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

discovery-full: submodules
	@mkdir -p "$(DISCOVERY_OUTPUT_DIR)" "$(SCREENSHOT_DIR)"
	DISCOVERY_VMS_PATH="$(DISCOVERY_VMS_PATH)" ./thinkpadkali1dotfiles/scripts/check_hosts.sh
	DISCOVERY_STORAGES_PATH="$(DISCOVERY_STORAGES_PATH)" ./thinkpadkali1dotfiles/scripts/discover_storages.sh
	DISCOVERY_ISOS_PATH="$(DISCOVERY_ISOS_PATH)" ./thinkpadkali1dotfiles/scripts/discover_isos.sh
	DISCOVERY_VMS_PORTS_PATH="$(DISCOVERY_VMS_PORTS_PATH)" ./thinkpadkali1dotfiles/scripts/discover_vm_ports.sh
	SCREENSHOT_DIR="$(SCREENSHOT_DIR)" DISCOVERY_VMS_SCREENSHOTS_PATH="$(DISCOVERY_VMS_SCREENSHOTS_PATH)" ./thinkpadkali1dotfiles/scripts/capture_vm_screenshots.sh

actions-run: actions-vhs
