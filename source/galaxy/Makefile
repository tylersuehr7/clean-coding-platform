SHELL := /bin/sh

setup-dev-environment:
	(source ./venv/bin/bin/activate && \
	pip3 install --upgrade pip && \
	pip3 install -r requirements.txt)
	make setup-dev-sqlite

setup-dev-sqlite:
	rm db.sqlite3 || true
	find galaxy -name "00**.py" -type f -delete || true
	(. ./vars.common.script.env && \
	source ./venv/bin/bin/activate && \
	./entrypoint.sh)

make-migrations-and-migrate:
	(. ./vars.common.script.env && \
	source ./venv/bin/bin/activate && \
	python3 manage.py makemigrations && \
	python3 manage.py migrate)

generate-openapi-schema-and-clients:
	(. ./vars.common.script.env && \
	source ./venv/bin/bin/activate && \
	rm -rf generated-clients && \
	python3 manage.py spectacular --file schema.yml && \
	python3 manage.py runscript generate_openapi_clients)
