" Encoding
set encoding=utf-8

" Line numbering
set nu

" Set Python interpreter
let g:python3_host_prog = '/Users/ndiladjimsoungadoy/.pyenv/versions/3.7.0/bin/python'

" activate filetype plugin
filetype plugin on

" Enable folding
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ########### Plugins Install #####################################
" Specify directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'Shougo/denite.nvim'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mhinz/vim-startify'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neopairs.vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'plytophogy/vim-virtualenv'
Plug 'godlygeek/tabular'

" Color Schemes

Plug 'tyrannicaltoucan/vim-deep-space'




" Initialize plugin system
call plug#end()

"###########################################################

"###### deoplete.
let g:deoplete#enable_at_startup = 1

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"###### deoplete-jedi
let g:deoplete#sources#jedi#enable_typeinfo = 1

"###### neopairs
let g:neopairs#enable = 1

"###### Gitgutter

" set updatetime=100


"###### NerdTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__$']

"###### Startify
let g:startify_session_persistence = 1

"###### NERDCommenter

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"###### Gutentags
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_exclude_filetypes = ['.git', 'node_modules', '__pycache__', '.idea', 'build', 'dist']
"###### Ctags
set tags=.tags

"###### CtrlP
nnoremap <leader>. :CtrlPTag<cr>

"###### Ale
let g:ale_enabled = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'always'
let g:airline#extensions#ale#enabled = 1

"###### Echodoc
" set cmdheight=2
let g:echodoc_enable_at_startup = 1

" ########## Theme ##########

set background=dark
set termguicolors
colorscheme deep-space
let g:deepspace_italics=1
let g:airline_theme='deep_space'

" #########  Mappings ##########

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

