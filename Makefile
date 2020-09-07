.PHONY: start

default: start

snapshot-env: 
	conda env export > stats.yaml

start: snapshot-env
	jupyter lab --no-browser --NotebookApp.token='' --NotebookApp.password=''
