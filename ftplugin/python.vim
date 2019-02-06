set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=119
set expandtab
set autoindent
set fileformat=unix

"###### Ale
let b:ale_python_auto_pipenv = 1
let b:ale_warn_about_trailing_whitespace = 0
let b:ale_linters = ['pylint', 'mypy', 'bandit', 'isort', 'pyls']
let b:ale_python_mypy_auto_pipenv = 1
let b:ale_python_pyling_options = '--max-line-length=120'
let b:ale_python_autopep8_options = '--ignore=E501,E261'
