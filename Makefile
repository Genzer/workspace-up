.PHONY: all
run: deps
	.venv/bin/ansible-playbook workspace-up.yaml --ask-become-pass 

.venv:
	python3.8 -m venv .venv

.PHONY: deps
deps: .venv
	.venv/bin/python -m pip install ansible==2.9.11
	.venv/bin/ansible-galaxy install -r galaxy.requirements.yaml
