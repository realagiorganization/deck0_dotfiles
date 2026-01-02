ACT ?= act
ACT_FLAGS ?=
ACT_PLATFORMS ?= -P ubuntu-latest=ghcr.io/catthehacker/ubuntu:act-latest

.PHONY: actions-install actions-list actions-test actions-vhs actions-run

actions-install:
	./scripts/install-act.sh

actions-list:
	$(ACT) -l

actions-test:
	$(ACT) -n -W .github/workflows/vhs.yml $(ACT_PLATFORMS) $(ACT_FLAGS)

actions-vhs:
	$(ACT) -W .github/workflows/vhs.yml -j record $(ACT_PLATFORMS) $(ACT_FLAGS)

actions-run: actions-vhs
