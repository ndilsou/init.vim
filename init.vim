set nocompatible
syntax on
" Encoding
set encoding=utf-8

" Line numbering
set nu

" Set Python interpreter
let g:python3_host_prog = '/Users/ndiladjimsoungadoy/.pyenv/versions/3.7.7/bin/python'
let g:python_host_prog = '/Users/ndiladjimsoungadoy/.pyenv/versions/2.7.15/bin/python'

" activate filetype plugin
filetype plugin on
set completeopt=noinsert,menuone,noselect

let mapleader = ','

" Enable folding
"set updatetime=300
set title titlestring=
set foldenable
set foldmethod=syntax
set foldlevel=99
set expandtab
set ignorecase
set smartcase
set incsearch
set hlsearch
set shortmess+=c
set hidden
set history=200
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







Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
" Plug 'vim-scripts/dbext.vim'
" Plug 'lilydjwg/colorizer'
" Plug 'luochen1990/rainbow'
" Plug 'ncm2/ncm2-ultisnips'
" Plug 'nvie/vim-flake8'
" Plug 'Shougo/denite.nvim'
" Plug 'Shougo/neco-vim'
" Plug 'Shougo/neoinclude.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/neosnippet.vim'
Plug 'janko/vim-test'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'bling/vim-bufferline'
Plug 'chrisbra/csv.vim'
Plug 'vim-scripts/sparql.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/Dockerfile.vim'
" Plug 'GEverding/vim-hocon'
Plug 'godlygeek/tabular'
Plug 'hail2u/vim-css3-syntax'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/limelight.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'pedrohdz/vim-yaml-folds'
" Plug 'neomake/neomake'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'cespare/vim-toml'
" Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'plytophogy/vim-virtualenv'
Plug 'roxma/nvim-yarp'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
" Plug 'sheerun/vim-polyglot'
Plug 'Shougo/context_filetype.vim'
" Plug 'Shougo/deol.nvim'
Plug 'Shougo/echodoc.vim'
" Plug 'Shougo/neco-syntax'
Plug 'Shougo/neopairs.vim'
Plug 'tmhedberg/SimpylFold', { 'on_ft': 'python' }
Plug 'tomtom/tlib_vim'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-dotenv'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'blindFS/vim-taskwarrior'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-scripts/nginx.vim'
" Plug 'w0rp/ale'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'gioele/vim-autoswap'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yuttie/comfortable-motion.vim'
Plug 'zoubin/vim-gotofile'
Plug 'junegunn/goyo.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'tweekmonster/braceless.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'alvan/vim-closetag'


" Color Schemes

Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'dracula/vim'
Plug 'NLKNguyen/papercolor-theme'


" Initialize plugin system
call plug#end()

"###########################################################

"###### incsearch.vim (incsearch)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)


"###### coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)


" Remap for format selected region
xmap <leader>ff  <Plug>(coc-format-selected)
nmap <leader>ff  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

command! -nargs=0 FF :call CocAction('format') | :call CocAction('runCommand', 'editor.action.organizeImport') " shortcut

command! -nargs=0 WW :call CocAction('format') | :call CocAction('runCommand', 'editor.action.organizeImport') | :w " shortcut

" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }



" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>



" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" if executable('ag')
"   " Use Ag over Grep
"   set grepprg=ag\ --nogroup\ --nocolor

" endif

"###### Ack Vim
" Uses silver searcher
" let g:ackprg = 'ag --nogroup --nocolor --column --vimgrep'

"###### vim-closetag
let g:closetag_filetypes = 'html,xhtml,phtml,typescriptreact,javascriptreact'


"###### vim-test
let test#strategy = "dispatch"
"
"###### vim-rooter
let g:rooter_silent_chdir = 1

"###### vim-markdown-preview
let vim_markdown_preview_github=1

""###### fzf
"map <leader>z :FZF<CR>

"###### editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"###### semshi

function! MyCustomHighlights()
    hi semshiImported   ctermfg=208 guifg=#ff8700
endfunction
autocmd FileType python call MyCustomHighlights()


"##### vim-fugitive
silent! nmap <Leader>gs :Gstatus<CR>
silent! nmap <Leader>gp :Gpush<CR>
silent! nmap <Leader>gf :Gfetch<CR>
silent! nmap <Leader>gl :Glog<CR>
silent! nmap <Leader>gll :Glog --<CR>
silent! nmap <Leader>gd :Gdiff<CR>
silent! nmap <Leader>gb :Gblame<CR>


"###### rainbow
" let g:rainbow_active = 1

"###### braceless.vim
autocmd FileType python,yaml BracelessEnable +indent +fold +highlight


" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


"###### Vim-Notes
let g:notes_directories = ['~/Work/Notes']

"###### neopairs
let g:neopairs#enable = 1

"###### quickfix-reflector
let g:qf_join_changes = 1

"###### Gitgutter


"###### vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

""###### NerdTree

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

"deol.nvim
tnoremap <ESC>   <C-\><C-n>

"###### Gutentags
" let g:gutentags_ctags_tagfile = '.tags'
" let g:gutentags_exclude_filetypes = ['.json', '.jsonl', '.git', '.mypy_cache', 'node_modules', '__pycache__', '*.pyc', '*.pyo', '*.min.*', '.idea', 'build', 'dist', '*vapor*', 'android', 'ios']

" let g:gutentags_ctags_exclude = ['.git', 'data', '.scrapy', '.mypy_cache', 'node_modules', '__pycache__', '*.pyc', '*.pyo', '*.min.*', '.idea', 'build', 'dist', '*vapor*', 'android', 'ios', '.venv']
" " Ctags default file
" set tags=.tags



"###### Ale
" let g:ale_enabled = 1
" let g:ale_python_auto_pipenv = 1
" let g:ale_python_mypy_auto_pipenv = 1
" let g:ale_python_pylint_auto_pipenv = 1
" let g:ale_python_pyls_auto_pipenv = 1
" let g:ale_completion_enabled = 0
" let g:ale_sign_column_always = 1
" let g:ale_lint_on_text_changed = 'always'
" let g:airline#extensions#ale#enabled = 1

" let g:ale_sign_error = '✖'
" let g:ale_sign_warning = '⚠'
" let g:ale_sign_info = 'ℹ'
" let g:ale_sign_style_error = '✗'
" let g:ale_sign_style_warning = '☡'

" map <silent> <Leader>h <Plug>(ale_hover)

"##### Rg
nnoremap  <silent><leader>/ :Rg <cword> .<CR>
nnoremap <leader>f :Rg<space>

"##### UltiSnip
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<space>"

"###### Echodoc
let g:echodoc_enable_at_startup = 1

"###### Vim-Devicons
let g:webdevicons_enable = 1

"######## Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'


" ########## Theme ##########

set background=dark
set termguicolors
colorscheme PaperColor
let g:deepspace_italics=1
let g:airline_theme='papercolor'

" #########  Mappings ##########

" add simpler shortcut for escape on laptop keyboard.
" inoremap <Leader>= <ESC>
inoremap kj <ESC>

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


noremap <m-l> 4l
noremap <m-h> 4h
noremap <m-j> 4j
noremap <m-k> 4k

" search mappings: these will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap n nzzzv

" insert newline {{{
map <leader><enter> o<esc>
" }}}

let g:polyglot_disabled = ['python']
" let python_highlight_all = 1

" close buffer and go back to previous buffer {{{
map <silent><leader>bd :bn <bar> :bd # <cr>
map <silent><leader>c :bn <bar> :bd # <cr>
" }}}

" list buffers and prepare buffer select
nnoremap gb :ls<CR>:buffer<Space>

" ######### Commands ########
command! InitInstall w <bar> source % <bar> PlugInstall
command! Fix ALEFix

" CDC = Change to Directory of Current file
command! CDC cd %:p:h
