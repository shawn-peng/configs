set nu

filetype indent plugin on

" localvimrc config
let g:localvimrc_whitelist=['/home/shawn/singularity-workspace/*/',]

syntax on

"set tags=tags;
set tags=tags;,/usr/include/tags,/usr/local/include/tags

set autochdir

set wildmenu

set showcmd

set hlsearch

"set statusline+=%F
set laststatus=2

"set ignorecase
"set smartcase

set backspace=indent,eol,start

set autoindent

"set visualbell

set shiftwidth=4
set tabstop=4

autocmd FileType c set tabstop=8|set shiftwidth=8|set noexpandtab
"autocmd FileType c nnoremap <buffer> <silent> <C-]> :YcmCompleter GoTo<cr>


setlocal fileformat=unix
"e ++ff=unix

set cursorline
"hi CursorLine   cterm=NONE ctermfg=white guibg=gray guifg=white ctermbg=236
hi CursorLine   cterm=NONE guibg=gray ctermbg=234
hi CursorLineNr    term=bold cterm=bold ctermfg=012 gui=bold


""   Keybindings   ""
nnoremap <F4> :HeaderguardAdd<CR>
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprev<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-q> <C-w>q<CR>


"" Airline ""
"let g:airline_layout = 'powerline'
"set encoding=utf-8
let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled=1


"" NERDTree ""
let NERDTreeQuitOnOpen=1



""   YCM   ""
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:loaded_youcompleteme = 1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_key_invoke_completion = '<C-K>'
let g:ycm_semantic_triggers =  {
  \   'c' : ['re!\w'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_always_populate_location_list = 1 "diagnostic data

"Apply YCM FixIt
map <F9> :YcmCompleter FixIt<CR>


"=================================Vundle===================================
set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

" Plugin 'Valloric/YouCompleteMe' ", {'for': 'c++'}

Plugin 'scrooloose/nerdtree'

" Plugin 'tpope/vim-markdown'
Plugin 'plasticboy/vim-markdown'

Plugin 'altercation/vim-colors-solarized'

Plugin 'embear/vim-localvimrc'

"Plugin 'Lokaltog/vim-powerline'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'drmikehenry/vim-headerguard'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" All of your Plugins must be added before the following line
call vundle#end()            " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
"		:PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"		auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
