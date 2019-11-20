.PHONY: mypy
mypy:
	poetry run mypy --ignore-missing-imports --strict app

.PHONY: flake8
flake8:
	poetry run flake8 app tests

.PHONY: test
test:
	poetry run pytest -s tests --cov=app

.PHONY: test-all
test-all:
	$(MAKE) mypy
	$(MAKE) flake8
	$(MAKE) test
