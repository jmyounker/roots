#!/bin/sh

if [[ ! -e .pyenv  ]]; then
  git clone https://github.com/pyenv/pyenv.git .pyenv
else
  ( cd .pyenv && git pull )
fi

export PYENV_ROOT="$(pwd)/.pyenv"

if [[ ! -e "$(pyenv root)/plugins/pyenv-virtualenv" ]]; then
  git clone https://github.com/pyenv/pyenv-virtualenv.git "$(pyenv root)/plugins/pyenv-virtualenv"
else
  ( cd .pyenv/plugins/pyenv-virtualenv && git pull )
fi

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv install 3.10.6

pyenv virtualenv py-3.10

