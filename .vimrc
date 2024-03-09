set nocompatible " not compatible with vi
let mapleader = ','
set backspace=indent,eol,start "Stupid mac config
set re=1 "Ruby bug
set encoding=utf-8 "shouldnt be editing anything else?

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'                   "fuzzy file search
Plug 'mileszs/ack.vim'

Plug 'scrooloose/nerdtree'                "file tree
Plug 'scrooloose/nerdcommenter'           "comment shortcuts
Plug 'majutsushi/tagbar'                  "show tags in sidebar
Plug 'dyng/ctrlsf.vim'                    "file search async
"Plug 'terryma/vim-multiple-cursors'       "multiple cursor support
Plug 'lifepillar/vim-mucomplete'          "autocomplete
Plug 'yggdroot/indentline'                "show indent lines
"Plug 'craigemery/vim-autotag'
Plug 'airblade/vim-gitgutter'             "sidebar git status
"Plug 'tpope/vim-fugitive'                 "git wrapper
"Plug 'w0rple'                           "async linting
"Plug 'chiel92/vim-autoformat'             "formatter - needs setup

Plug 'itchyny/lightline.vim'              "bottom status bar
Plug 'sheerun/vim-polyglot'               "vim multi language support

Plug 'altercation/vim-colors-solarized'   "theme
"Plug 'trevordmiller/nova-vim'

Plug 'tpope/vim-rails'                    "rails helper plugin

call plug#end()

" Keymaps
nmap	<Leader>p :Files<CR>
nmap 	<Leader>t :Tags<CR>
nmap 	<Leader>b :BLines<CR>
nmap	<Leader>f :Ag<CR>
map	<C-t>t :NERDTreeToggle<CR>
nmap	<C-t> :NERDTreeFind<CR>
nmap	<Leader>a :TagbarToggle<CR>
"nmap 	<Leader>f <Plug>CtrlSFPrompt
nmap	<C-F>f <Plug>CtrlSFCwordPath
nmap 	<Leader>c :set cursorline!<CR>
nmap	<Leader>l :ALEToggle<CR>
nmap	<Leader>i :IndentLinesToggle<CR>
nnoremap <Leader>h :nohlsearch<cr>

"nnoremap ; :
"nnoremap : ;
"vnoremap ; :
"vnoremap : ;

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Vim settings
set hlsearch
set incsearch
set smartcase
set ignorecase
set number

set backupdir=~/.vim/tmp/                   " for the backup files
set directory=~/.vim/tmp/                   " for the swap files

" Theme configs
"set termguicolors
syntax enable
set background=light
set t_Co=16
colorscheme solarized

"set noshowmode
set cursorline
set laststatus=2

set t_Co=256
let g:lightline = {'colorscheme' : 'solarized', 'background' : 'dark'}
"let g:indentLine_setColors = 0
let g:indentLine_char = ':'

" ########### Plugin Configs
let g:ctrlsf_auto_focus = { "at": "start" }
let g:ctrlsf_case_sensitive = 'no'
"let g:ctrlsf_default_root = "."
let g:ackprg = 'ag --hidden --ignore --vimgrep'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"Nerdtree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrows=0

"autocomplete settings
set completeopt+=menuone
set completeopt+=noselect
let g:mucomplete#enable_auto_at_startup = 1

"let g:ale_echo_cursor = 0
let g:ale_lint_on_enter = 0
let g:ale_linters_explicit = 1
"let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

set clipboard=unnamed "Use system clipboard 
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
