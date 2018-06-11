all: help

# @bin/start.sh
start:
	@bin/start.py

rebuild:
	@bin/rebuild.sh

destroy:
	@bin/destroy.sh

stop:
	@bin/stop.sh

status:
	@bin/status.sh

help:
	@echo "THIS IS THE HELP"
