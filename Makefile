.PHONY: lock
lock: 	## Lock the dependencies
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv run pipenv lock

.PHONY: install
install: 	## install the dependencies
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv run pipenv sync

.PHONY: activate
activate: 	## Activate the Pipenv shell
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv shell

.PHONY: dev
dev: 	## Serving Flask app
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv run flask --app src/main run -h 0.0.0.0 -p 5001

.PHONY: requirements
requirements: ## Generate a requirements.txt
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv requirements > requirements.txt

.PHONY: remove
remove: ## Remove virtual environment
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv --rm
