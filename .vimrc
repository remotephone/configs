" Mostly borrowed from here - https://github.com/StevenLooman/configs/blob/master/.vimrc
" and here - https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
" and here - https://raw.githubusercontent.com/raphamorim/lucario/master/colors/lucario.vim




colorscheme lucario
set nocompatible              " required
filetype off                  " required

" General stuff

set encoding=utf-8
let python_highlight_all=1
syntax on

""""
" Vundle
" https://github.com/VundleVim/Vundle.vim
""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


""""
"Other Plugins
""""

Plugin 'davidhalter/jedi-vim'

""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""

" Set number lines
set number

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Python

au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent 
au BufNewFile         *.py set fileformat=unix
au BufNewFile         *.py set cursorline 
au BufNewFile         *.py set showmatch

"Web stuff

au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2

" C

au BufRead,BufNewFile *.c,*.h set expandtab
au BufRead,BufNewFile *.c,*.h set tabstop=4
au BufRead,BufNewFile *.c,*.h set shiftwidth=4
au BufRead,BufNewFile *.c,*.h set autoindent
au BufRead,BufNewFile *.c,*.h match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.c,*.h match BadWhitespace /\s\+$/
au         BufNewFile *.c,*.h set fileformat=unix
au BufRead,BufNewFile *.c,*.h let b:comment_leader = '/* '

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
