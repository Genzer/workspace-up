# Genzer's `workspace-up`

This repository is used to automatically initialize my Macbook Pro workspace. This was created when I needed to migrate my old workspace to a new Macbook Pro and the progress was too cumbersome. For laziness's sake, I thought I could automate some steps.

## Prequequisites

It is required that Python 3.7 is installed

## Usage

First, Ansible (>= 2.7.5) MUST be installed.

```bash
$ python3.7 -m venv .venv
$ source .venv/bin/activate
(venv) $ pip install ansible>=2.7.5
```

This playbook uses some awesome Roles:

- geerlingguy.homebrew.

To install them:

```bash
(venv) $ ansible-galaxy install -r galaxy.requirements.yaml
```

Run

```bash
(venv) $ ansible-playbook --ask-become-pass workspace-up.yaml
```

## TODOs

> NOTE: This is written in todo.txt Format.

- (A) Incorporate with Genzer/dotfiles (a private repository).
