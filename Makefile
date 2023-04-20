.PHONY: build
build:
	python setup.py sdist bdist_wheel

.PHONY: upload
upload:
	twine upload dist/*

.PHONY: run
run:
	@read -p "Enter task description: " task_description; \
	python gptloop/cli.py "$$task_description" --verbose
