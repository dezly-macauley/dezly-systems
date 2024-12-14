_______________________________________________________________________________
## Add the virtual environment to your path and enable autocompletion

Open up your `.zshrc` and add these lines to the file.

```
# Enable shell auto completion for uv commands
eval "$(uv generate-shell-completion zsh)"

# Enable shell auto completion for uvx commands
eval "$(uvx --generate-shell-completion zsh)"

# Add the Python virtual environment created by uv to your path so that
# you can use packages that were installed by uv (even when your virtual
# environment is not activated)
export PATH="$HOME/.venv/bin/:$PATH"

# This is for using programs installed by the `uv tool command`
export PATH="/home/dezly-macauley/.local/bin:$PATH"
```
_______________________________________________________________________________

First check what version of Python you have on your system:

```
python --version
```

Python 3.14.0a2
_______________________________________________________________________________

Create a virual environment in your home directory
```
cd ~
uv venv --python 3.14.0a2
```

You will get a message like this:
Using CPython 3.14.0a2 interpreter at: /run/current-system/sw/bin/python
Creating virtual environment at: .venv
Activate with: source .venv/bin/activate

The way uv works is that it will first check your system for that version
of Python. If it doesn't find it then it will download it.

_______________________________________________________________________________


Activate the virtual environment

```
cd ~
source .venv/bin/activate
```

You can deactivate your virtual environment by typing `deactivate`

To check that it is using Python from the virtual environment,
run this command (`make sure the virtual environment is activated first`):

```
which 
/home/dezly-macauley/.venv/bin/python
```

/home/dezly-macauley/.venv/bin/python

_______________________________________________________________________________

Make sure that your virtual environment is activated before you run
the following commands:

```
uv tool install vyper
uv pip install vyper-lsp
```

How to uninistall packages:

This command will only remove
```
uv pip uninistall
```

uv pip-autoremove vyper-lsp -y

_______________________________________________________________________________

To check that it was installed: 

```
uv pip show vyper-lsp 
```

or for a cleaner output, just use grep
```
uv pip list | grep vyper-lsp
```

This will show all dependencies in the project
```
uv pip list
```
