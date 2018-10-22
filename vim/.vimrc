set nocompatible

" Download vim-plug on set up
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plug list
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'joshdick/onedark.vim'
" Plug 'lervag/vimtex'
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

" Mappings
map <C-o> :NERDTreeToggle<CR>

" params on/off
filetype on
syntax on

" Appearance
set t_Co=256
let g:onedark_termcolors=256
set cursorline
colorscheme onedark 
let g:lightline = { 'colorscheme': 'onedark' }
set noshowmode

set guifont=Menlo\ Regular:h18
" set lines=35 "columns=150
set colorcolumn=90
set number relativenumber

set hidden
set history=100
filetype indent on
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set hlsearch
set showmatch
set cmdheight=2


