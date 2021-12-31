set nocompatible

" Download vim-plug on set up
" if empty(glob('~/.vim/autoload/plug.vim'))
"     silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"     autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

" Plug list
call plug#begin()

" Must have

Plug 'tpope/vim-sensible'

" Utility

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'Raimondi/delimitMate'

" Theme

Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
" Plug 'joshdick/onedark.vim'
Plug 'dracula/dracula-theme'
Plug 'arcticicestudio/nord-vim'
let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1
" let g:nord_comment_brightness = 12
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
" Plug 'lervag/vimtex'
" A Vim Plugin for Lively Previewing LaTeX PDF Output
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

" Mappings
map <C-o> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>

" params on/off

syntax on
filetype on
set hidden
set history=100

" Appearance

set t_Co=256
set cursorline
set guifont=Hack\ Regular\ Nerd\ Font:h18

colorscheme  
" let g:onehalf_termcolors=256
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
set noshowmode 

" Indentation & Tabs

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Display & format

set number relativenumber
set textwidth=80
set wrapmargin=2
set showmatch

" Search

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Browse & Scroll

set scrolloff=5
set laststatus=2

" Spell

" set spell spelllang=en_us

" Miscellaneous

set nobackup
set noswapfile
set autochdir
set visualbell
set errorbells
set shortmess=a
set cmdheight=2

"command! -nargs=+ Silent
"\   execute 'silent <args>'
"\ | redraw!
"Silent command
