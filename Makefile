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

.PHONY: actions-install actions-list actions-test actions-vhs actions-run actions-discovery actions-proxmox-mock actions-cloud-auth submodules discovery-full mock-proxmox-build mock-proxmox-run mock-proxmox-stop mock-proxmox-smoke secrets-aws-keys secrets-aws-oidc secrets-azure-sp secrets-azure-oidc secrets-gcp-sa secrets-gcp-wif

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

actions-cloud-auth: submodules
	$(ACT) -W .github/workflows/cloud-auth-smoke.yml $(ACT_PLATFORMS) $(ACT_FLAGS)

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

secrets-aws-keys:
	@read -r -s -p "AWS_ACCESS_KEY_ID: " AWS_ACCESS_KEY_ID; echo; \
	read -r -s -p "AWS_SECRET_ACCESS_KEY: " AWS_SECRET_ACCESS_KEY; echo; \
	read -r -s -p "AWS_REGION: " AWS_REGION; echo; \
	printf '%s' "$$AWS_ACCESS_KEY_ID" | gh secret set AWS_ACCESS_KEY_ID; \
	printf '%s' "$$AWS_SECRET_ACCESS_KEY" | gh secret set AWS_SECRET_ACCESS_KEY; \
	printf '%s' "$$AWS_REGION" | gh secret set AWS_REGION; \
	unset AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_REGION

secrets-aws-oidc:
	@read -r -p "AWS_ROLE_TO_ASSUME (arn:...): " AWS_ROLE_TO_ASSUME; \
	read -r -p "AWS_REGION: " AWS_REGION; \
	printf '%s' "$$AWS_ROLE_TO_ASSUME" | gh secret set AWS_ROLE_TO_ASSUME; \
	printf '%s' "$$AWS_REGION" | gh secret set AWS_REGION; \
	unset AWS_ROLE_TO_ASSUME AWS_REGION

secrets-azure-sp:
	@read -r -s -p "AZURE_CREDENTIALS JSON: " AZURE_CREDENTIALS; echo; \
	printf '%s' "$$AZURE_CREDENTIALS" | gh secret set AZURE_CREDENTIALS; \
	unset AZURE_CREDENTIALS

secrets-azure-oidc:
	@read -r -p "AZURE_CLIENT_ID: " AZURE_CLIENT_ID; \
	read -r -p "AZURE_TENANT_ID: " AZURE_TENANT_ID; \
	read -r -p "AZURE_SUBSCRIPTION_ID: " AZURE_SUBSCRIPTION_ID; \
	printf '%s' "$$AZURE_CLIENT_ID" | gh secret set AZURE_CLIENT_ID; \
	printf '%s' "$$AZURE_TENANT_ID" | gh secret set AZURE_TENANT_ID; \
	printf '%s' "$$AZURE_SUBSCRIPTION_ID" | gh secret set AZURE_SUBSCRIPTION_ID; \
	unset AZURE_CLIENT_ID AZURE_TENANT_ID AZURE_SUBSCRIPTION_ID

secrets-gcp-sa:
	@read -r -p "Path to GCP service account key JSON: " GCP_SA_KEY_PATH; \
	gh secret set GCP_SA_KEY < "$$GCP_SA_KEY_PATH"; \
	unset GCP_SA_KEY_PATH

secrets-gcp-wif:
	@read -r -p "GCP_WIF_PROVIDER (projects/.../providers/...): " GCP_WIF_PROVIDER; \
	read -r -p "GCP_WIF_SERVICE_ACCOUNT (name@project.iam.gserviceaccount.com): " GCP_WIF_SERVICE_ACCOUNT; \
	printf '%s' "$$GCP_WIF_PROVIDER" | gh secret set GCP_WIF_PROVIDER; \
	printf '%s' "$$GCP_WIF_SERVICE_ACCOUNT" | gh secret set GCP_WIF_SERVICE_ACCOUNT; \
	unset GCP_WIF_PROVIDER GCP_WIF_SERVICE_ACCOUNT
