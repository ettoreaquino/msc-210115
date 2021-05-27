update-env:
	conda env export | grep -v "^prefix: " > environment.yml && \
	pip freeze > requirements.txt

conda-create:
	conda env create -f environment.yml