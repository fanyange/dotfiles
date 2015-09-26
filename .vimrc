set nocompatible " be iMproved, required
filetype off " required
" # Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Raimondi/delimitMate'
Plugin 'vimwiki/vimwiki'
Plugin 'itchyny/calendar.vim'
Plugin 'danro/rename.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'goyo.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
" Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'jiangmiao/auto-pairs'


Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" # Non-Plugin stuff
runtime macros/matchit.vim

" 没有八进制数
set nrformats=
" 关闭提示音
set vb t_vb= 
" use %% to represent the current file path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

if has('gui_running')
  set mouse=a
else
  set mouse=i
endif

set nu
set ruler
set laststatus=2
set rulerformat=10%(%m%r\ %3l\ %c\ %p%%%)
set hidden "in order to switch between buffers with unsaved change"

set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
"set smartindent
"set shiftwidth=4
"set softtabstop=4

autocmd filetype python setl shiftwidth=4
autocmd filetype python setl tabstop=4

au BufRead,BufNewFile Gemfile set filetype=ruby

set showcmd
set is


syntax on

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

"use relative line number"
"nnoremap <C-n> :call NumberToggle()<CR>
"use Ctrol+l to insert a space before and after intert location.
imap <C-l> <ESC>2a <ESC>i

imap <S-F7> <ESC>

let mapleader=","
noremap \ ,

" nmap <S-CR> O<ESC>
" nmap <CR> o<ESC>

imap <C-CR> <CR><ESC>O

" noremap <C-TAB> :bn<CR>
" noremap <C-S-TAB> :bp<CR>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee  > /dev/null %

set noimdisable
autocmd! InsertLeave * set imdisable|set iminsert=0
autocmd! InsertEnter * set noimdisable|set iminsert=0


set backspace=indent,eol,start

"Vim Airline Settings
let g:airline#extensions#tabline#enabled = 1

" The Input Method Settings
set noimdisable
set iminsert=0
set imsearch=0

"vimwiki
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]

" edit like Emacs
imap <C-a> <ESC>I
imap <C-e> <ESC>A
