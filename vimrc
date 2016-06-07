if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

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
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Bundle 'davidhalter/jedi-vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-flake8'
Bundle 'takac/vim-hardtime'
Plugin 'easymotion/vim-easymotion'
Plugin 'tmhedberg/SimpylFold'

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
""""""""""""""""""""""""""""""""
"Colour
""""""""""""""""""""""""""""""""
syntax enable
let base16colorspace=256
colorscheme base16-ocean
let g:airline_theme='base16_ocean'
set background=dark

set encoding=utf-8
set spell spelllang=en_gb

let mapleader=","
imap jk <Esc>

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

set number
call NumberToggle()

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css |
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

set noswapfile
set pastetoggle=<F3>
set splitbelow
set splitright

map <F2> :NERDTreeToggle<CR>
map <leader>rr :w !python <cr>
nmap <leader>ll :w <cr> :!latexmk -xelatex % <cr>
nmap <leader>lv :!evince %:r.pdf & <cr>
nnoremap <C-n> :call NumberToggle()<cr>

let g:hardtime_default_on = 1

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

let g:ctrlp_map = '<c-p>'

nnoremap <Leader>b :CtrlPBuffer <cr>
nnoremap <Leader>h :CtrlP ~<cr>

let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_import = 0
nnoremap <space> za
