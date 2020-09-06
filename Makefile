.PHONY: start

default: start

start:
	jupyter lab --no-browser --NotebookApp.token='' --NotebookApp.password=''
