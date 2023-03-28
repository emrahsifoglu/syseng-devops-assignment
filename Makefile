.PHONY: lock
lock: 	## Lock the dependencies
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv run pipenv lock

.PHONY: install
install: 	## install the dependencies
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv run pipenv sync

.PHONY: activate
activate: 	## Activate the Pipenv shell
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv shell

.PHONY: serve
serve: 	## Serving Flask app
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv run python app.py

.PHONY: remove
remove: ## Remove virtual environment
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv --rm
