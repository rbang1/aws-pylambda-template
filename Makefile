venv: requirements.txt
	test -L ./bin/python || virtualenv -p python3 .
	./bin/pip install -r requirements.txt

config-%: config-%.yaml
	cp $@.yaml config.yaml

deploy-%: venv config-%
	./bin/lambda deploy --use-requirements

test: venv
	./bin/lambda invoke -v
