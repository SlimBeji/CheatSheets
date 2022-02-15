# ================= Python ===============
# ================= pip commands ===============
# Install package
pip install package==1.1.1

# Install from requirements.txt
pip install -r requirements.txt

# Install from pipfile
pip install -p

# Show package informations
pip show my_package

# Create requirements.txt
pip freeze > requirements.txt

# ================= venv/pyenv commands ===============
# Create a venv with systemversion
python -m venv my_project

# Update pyenv
pyenv update

# List pyenv available python interpreters
pyenv install --list

# Intsall pyenv python version (make sure not in venv)
pyenv install 3.8.2

# List installed versions
pyenv versions

# location of versions (also display aliases)
ls ~/.pyenv/versions/

# Set new global python version
pyenv global 3.8.2

# Go back to the system python version
pyenv global system

# Create a virtual environment
pyenv virtualenv 3.8.2 test

# Creat a local .python-version file
pyenv local test

# Activate a virtual environment
pyenv activate test

# Locate pyenv python version
pyenv which python

# Deactivate version
pyenv deactivate

# ================= venv/pyenv commands ===============
# Runs lock(Generates Pipfile.lock.), then sync(install packages).
pipenv update

# Install package and add it to Pipfile
pipenv install my_package

# Show graph of dependencies
pipenv graph

# Uninstalls all packages not specified in Pipfile.lock.
pipenv clean

# Uninstall a package and removes it from Pipfile.
pipenv uninstall my_package

# Use a lower-level pip command
pipenv run pip freeze

# Create a new project using a specific python version
pipenv --python 3.7

# Create a new project from a python path
pipenv --python /path/tp/python

# List all projects environments
ls ~/.local/share/virtualenvs

# Activate venv
pipenv shell

# Delete current virtual envionment
pipenv --rm

# ================= conda ===============
# Clean all unsued packages versions
conda clean --all

# List installed packages
conda list

# List available environments
conda info -e

# Search for available python versions
conda search python

# Create an environment
conda create -n py310 python=3.10.0

# Activate an environment
conda activate py310

# Going back to base environment
conda deactivate

# Delete environment
conda remove -n py310 --all

# Locate python bin
which python
