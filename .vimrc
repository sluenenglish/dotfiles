set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Bundle 'jcf/vim-latex'
Plugin 'altercation/vim-colors-solarized'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Plugin 'bling/vim-airline'

set rtp+=~/.vim/bundle/vim-latex-suite
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"
syntax enable
set background=dark
set t_Co=256
colorscheme solarized

map <F2> :NERDTreeToggle<CR>
imap jk <Esc>
map <F5> :w !python <cr>

set noswapfile

set spell spelllang=en_gb
set number

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf = 'evince'
let g:Tex_MultipleCompileFormats = ''
let g:Tex_CompileRule_pdf = 'latexmk -pdf %'

set tabstop=4
set shiftwidth=4
set expandtab

"let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_ignore = "E0602"
let g:pymode_options_max_line_length = 100
let g:pymode_lint_options_pep8 =
    \ {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_rope = 0
set laststatus=2
