# Python environment set up

**Important**
1. Usage of virtual environment
2. Never use system python

Steps taken:
1. pyenv installed directly from source (no need of system python)
2. Use pyenv to install different versions of python
3. python 3.12.0 installation from pyenv has virtualenv isntalled as well
4. Use `pyenv virtualenv` to set up virtual environment in python project workspace. It is a wrapper around `virtualenv` to allow pyenv to handle the virtual environments.
5. Use `pip-tools` to keep track of packages required for dev, execution etc. (Its required because pip freeze lists all packages required, even packages that are dependencies of the dependencies of the project)

## dependency manager

1. In new virtual environment first use pip to install `pip-tools`
1. Will use `pip-tools` to manage dependencies and versions
2. Add dependencies (prod and dev) in pyproject.toml and compile with `pip-compile`
3. Use pip-sync to install all packages
4. A trick to uninstall all installed packages is `pip-sync <(echo "")`. This is so because if pip-sync is used on empty requirements file then it syncs will empty file which is no packages at all.

## Unit tests

1. Using `pytest` for running tests (this has more features than using unittest) Refer [[2]][ext2] [[3]][ext3]
2. `pytest-cov` for getting coverage
3. `mock` will to be used for improving coverage without depending on external code.

## Linter

1. Will be using `ruff` as the linter for python. Refer [[4]][ext4]
2. Other options are `flake8` and `pylint`
3. `ruff` if faster than other options. It is written in Rust.
4. `flake8` is good for basic linting and `pylint` is very strict so you need to set up ignore rules for it to not throw errors.
5. `ruff` is actively being developed. It is in the process of incorporating all rules in `pylint` and `flake8`

## References

[ext1]: https://medium.com/swlh/set-up-a-shell-python-development-environment-from-scratch-part-2-python-working-with-4361eab5df51
[ext2]: https://nedbatchelder.com/text/test3.html
[ext3]: https://docs.python-guide.org/writing/tests/
[ext4]: https://github.com/astral-sh/ruff
