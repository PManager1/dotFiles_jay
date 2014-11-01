
execute pathogen#infect()


syntax enable
set background=dark
colorscheme solarized


runtime bundle/vim-pathogen/autoload/pathogen.vim


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


set number
set relativenumber

set autoindent
