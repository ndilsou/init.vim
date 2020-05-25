set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=119
set expandtab
set autoindent
set fileformat=unix

" ###### Ale
let b:ale_warn_about_trailing_whitespace = 0
let b:ale_linters = ['pylint', 'mypy']
let b:ale_fixers = [
  \'isort',
  \'autopep8',
  \'add_blank_lines_for_python_control_statements',
  \'remove_trailing_lines',
  \'trim_whitespace'
  \]

let b:ale_python_mypy_executable = 'pipenv run mypy'

let b:ale_python_pylint_executable = 'pipenv run pylint'
let b:ale_python_pyling_options = '--max-line-length=120'


let b:ale_python_black_options = '-l 120'
let b:ale_python_autopep8_options = '--ignore=E501,E261'

" Allows gf to work on python import lines.
setlocal include=^\\s*\\(from\\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
