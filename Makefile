.PHONY: start snapshot-env snapshot-nlp-env start-nlp clear-proxy

default: clear-proxy start

snapshot-env: 
	conda env export > stats.yaml

snapshot-nlp-env: 
	conda env export > nlp_env.yaml

start: snapshot-env
	jupyter lab --no-browser --NotebookApp.token='' --NotebookApp.password=''

start-nlp: snapshot-nlp-env
	jupyter lab --no-browser --NotebookApp.token='' --NotebookApp.password=''

clear-proxy:
	for e in $(env| grep proxy| cut -f1 -d'='); do unset $e; done
