MODULE_NAME := mrftiming

OPI_VERSION := 1.0.0
OPI_DIRNAME := mrf-timing


OPIS_HOME = /opt/epics/OPIS
OPI_DIR = /opt/epics/opi/bob
LINK_DIR = ../../OPIS

.PHONY: opiinstall	## Install the OPIs
opiinstall:
	rsync -va --delete --exclude 'README.md' --exclude 'Makefile*' --exclude '.git' \
	./ $(OPIS_HOME)/$(MODULE_NAME)/$(OPI_VERSION)/
	cd $(OPI_DIR); rm -f $(OPI_DIRNAME); ln -s $(LINK_DIR)/$(MODULE_NAME)/$(OPI_VERSION)/ $(OPI_DIRNAME)

