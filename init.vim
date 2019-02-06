set nocompatible
syntax on
" Encoding
set encoding=utf-8

" Line numbering
set nu

" Set Python interpreter
let g:python3_host_prog = '/Users/ndiladjimsoungadoy/.pyenv/versions/3.7.0/bin/python'
let g:python_host_prog = '/Users/ndiladjimsoungadoy/.pyenv/versions/2.7.15/bin/python'

" activate filetype plugin
filetype plugin on
set completeopt=noinsert,menuone,noselect

" set completeopt+=noinsert

let mapleader = ','

" Enable folding
set foldenable
set foldmethod=syntax
set foldlevel=99
set expandtab
set smartcase
set shortmess+=c
set hidden
set history=200
set incsearch
set magic
set clipboard=unnamed
set nowrap
set scrolloff=3
set sidescrolloff=3
set smarttab
set splitbelow
set splitright
set title
set visualbell
set list
set wildchar=<TAB>
set wildignore+=.DS_Store
set wildignore+=*/node_modules/*
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.o,*.min.js
set wildmode=list:longest
set autoindent
set autoread
set autowrite       " Automatically save before commands like :next and :make
set backspace=2
set cmdheight=3
" set dictionary+=/usr/share/dict/words
set display=lastline
set laststatus=2
set tabstop=2
set softtabstop=2
set shiftwidth=2

" enable mouse support
set mouse=a mousemodel=popup

" au BufNewFile,BufRead *.js, *.html, *.css
"     \ set tabstop=2 |
"     \ set softtabstop=2 |
"     \ set shiftwidth=2

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
else
  Plug 'roxma/vim-hug-neovim-rpc'
endif






" Plug 'christoomey/vim-tmux-navigator'
" Plug 'ryanoasis/nerd-fonts'


" Plug 'lilydjwg/colorizer'
" Plug 'luochen1990/rainbow'
" Plug 'ncm2/ncm2-ultisnips'
" Plug 'nvie/vim-flake8'
" Plug 'Shougo/denite.nvim'
" Plug 'Shougo/neco-vim'
" Plug 'Shougo/neoinclude.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/neosnippet.vim'
" Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'baverman/vial'
Plug 'baverman/vial-http'
Plug 'bling/vim-bufferline'
Plug 'chrisbra/csv.vim'
Plug 'davidhalter/jedi-vim', { 'on_ft': 'python' }
Plug 'derekwyatt/vim-scala'
Plug 'easymotion/vim-easymotion'
Plug 'ekalinin/Dockerfile.vim'
Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'hail2u/vim-css3-syntax'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ktvoelker/sbt-vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'machakann/vim-highlightedyank'
Plug 'majutsushi/tagbar'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-gtags'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-vim'
Plug 'ncm2/ncm2-snipmate'
Plug 'ncm2/ncm2-syntax'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'oplatek/Conque-Shell'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'plytophogy/vim-virtualenv'
Plug 'rking/ag.vim'
Plug 'roxma/nvim-yarp'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/deol.nvim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neopairs.vim'
Plug 'tmhedberg/SimpylFold', { 'on_ft': 'python' }
Plug 'tomtom/tlib_vim'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dotenv'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-scripts/nginx.vim'
Plug 'vim-scripts/TaskList.vim'
Plug 'airblade/vim-rooter'
Plug 'w0rp/ale'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-session'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yuttie/comfortable-motion.vim'
Plug 'zoubin/vim-gotofile'
Plug 'editorconfig/editorconfig-vim'
Plug 'neomake/neomake'
Plug 'freitass/todo.txt-vim'

" Color Schemes

Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'dracula/vim'
Plug 'NLKNguyen/papercolor-theme'


" Initialize plugin system
call plug#end()

"###########################################################

" ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"###### Ack Vim
" Uses silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" mappings
" nnoremap <leader>; :Ack!
" nnoremap  <leader>/ :Ack! <cword> .<CR>

"###### vim-rooter
let g:rooter_silent_chdir = 1

"###### fzf
map <leader>z :FZF<CR>

"###### editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"###### semshi

function! MyCustomHighlights()
    hi semshiImported   ctermfg=208 guifg=#ff8700
endfunction
autocmd FileType python call MyCustomHighlights()

"###### Vim-Session
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"##### vim-fugitive
silent! nmap <Leader>gs :Gstatus<CR>
silent! nmap <Leader>gp :Gpush<CR>
silent! nmap <Leader>gf :Gfetch<CR>
silent! nmap <Leader>gl :Glog<CR>
silent! nmap <Leader>gll :Glog --<CR>
silent! nmap <Leader>gd :Gdiff<CR>
silent! nmap <Leader>gb :Gblame<CR>


" rainbow
let g:rainbow_active = 1


"###### jedi-vim
let g:jedi#auto_vim_configuration = 0
let g:jedi#completions_enabled = 0


"###### LanguageClient

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['/usr/local/bin/flow-language-server', '--stdio'],
    \ 'javascript.jsx': ['/usr/local/bin/flow-language-server', '--stdio'],
    \ 'scala': ['metals-vim'],
    \ 'sh': ['/usr/local/bin/bash-language-server', 'start'],
    \ 'python': ['/Users/ndiladjimsoungadoy/.local/bin/pyls'],
    \}

let g:LanguageClient_diagnosticsEnable = 0

nnoremap <silent> <Leader>lc :call LanguageClient_contextMenu()<CR>

function! LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<cr>
    nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
    nnoremap <buffer> <silent> gr :call LanguageClient#textDocument_rename()<CR>
  endif
endfunction

autocmd FileType * call LC_maps()

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"###### supertab
let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabCrMapping = 1

"###### Tagbar

nmap <F6> :TagbarOpenAutoClose<CR>

"###### Vim-Notes
let g:notes_directories = ['~/Work/Notes']

"###### neopairs
let g:neopairs#enable = 1

"###### Gitgutter

" set updatetime=100

"###### vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

"###### NerdTree

autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__$']

silent! nmap <F5> :NERDTreeRefreshRoot<CR> <bar> :NERDTreeFocusToggle<CR>
silent! nmap <leader>o :NERDTreeFind<CR>

"###### Startify
let g:startify_session_persistence = 1
autocmd VimEnter *
     \  if !argc() |
     \ Startify |
     \ NERDTree |
     \ wincmd w |
     \ endif

"###### NERDCommenter

" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
" let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
" let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
" let g:NERDToggleCheckAllLines = 1

"deol.nvim
tnoremap <ESC>   <C-\><C-n>

"###### Gutentags
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_exclude_filetypes = ['.git', 'node_modules', '__pycache__', '*.pyc', '*.pyo', '*.min.*', '.idea', 'build', 'dist', '*vapor*', 'android', 'ios']

let g:gutentags_ctags_exclude = ['.git', 'node_modules', '__pycache__', '*.pyc', '*.pyo', '*.min.*', '.idea', 'build', 'dist', '*vapor*', 'android', 'ios']

" Ctags default file
set tags=.tags

"###### CtrlP
" nnoremap <leader>. :CtrlPTag<cr>
" let g:ctrlp_lazy_update = 0
" let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_max_files = 0
" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

"###### CommandT
" map <silent> <Leader>t <Plug>(CommandT)
" nmap <silent> <Leader>, <Plug>(CommandTTag)

"###### TaskList
map <silent> <Leader>tl <Plug>TaskList

"###### Ale
let g:ale_enabled = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'always'
let g:airline#extensions#ale#enabled = 1


map <silent> <Leader>h <Plug>(ale_hover)


"##### Ag
let g:ag_working_path_mode="r"

nnoremap  <silent><leader>/ :Ag! <cword> .<CR>
nnoremap <leader>a :Ag!<space>
nnoremap <leader>f :AgFile!<space>

"###### Echodoc
let g:echodoc_enable_at_startup = 1

"###### Vim-Devicons
let g:webdevicons_enable = 1

"######## Airline
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" ########## Theme ##########

set background=dark
set termguicolors
colorscheme PaperColor
let g:deepspace_italics=1
let g:airline_theme='papercolor'

" #########  Mappings ##########

nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

map <Leader>q :q <CR>
map <Leader>wq :wq <CR>

"split navigations
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprevious<cr>

" nnoremap <c-tab> <c-w>w
" nnoremap <c-s-tab> <c-w>w

nnoremap <leader>] :tagbartoggle<cr>

noremap <m-l> 4l
noremap <m-h> 4h
noremap <m-j> 4j
noremap <m-k> 4k

" search mappings: these will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap n nzzzv

" terminal emulation
nnoremap <silent> <leader>sh :terminal<cr>


" insert newline {{{
map <leader><enter> o<esc>
" }}}

" strip trailing whitespace (<leader>ss) {{{
function! Stripwhitespace ()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>sw :call Stripwhitespace ()<cr>
" }}}

let g:polyglot_disabled = ['python']
let python_highlight_all = 1

" close buffer and go back to previous buffer {{{
map <silent><leader>bd :bn <bar> :bd # <cr>
" }}}

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" ######### Commands ########
command! InitInstall w <bar> source % <bar> PlugInstall
