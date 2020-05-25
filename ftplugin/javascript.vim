set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

"###### Ale
let b:ale_linter_aliases = ['javascript', 'flow']
let b:ale_linters = ['eslint']
let b:ale_fixers = [
  \'prettier',
  \'remove_trailing_lines',
  \'trim_whitespace'
  \]
