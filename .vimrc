set expandtab
  set shiftwidth=4
  set softtabstop=4
  set tabstop=4

set nocompatible
set backspace=indent,eol,start
set nowrap  
set autowrite
set visualbell
set ai
set tw=72

set spelllang=en_gb


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"
" original repos on github
Bundle 'vim-syntastic/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tristen/vim-sparkup'
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'fatih/vim-go'
call vundle#end()

filetype plugin indent on

syntax enable 

color koehler
set guifont=Source\ Code\ Pro\ 10

set encoding=utf-8

let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let spell_executable = "aspell"
let spell_language_list  = "en_GB"
highlight SpellErrors ctermfg=Red guifg=Red cterm=underline gui=underline term=reverse

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
