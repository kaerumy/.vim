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


filetype plugin indent on

syntax enable 

color koehler
set guifont=Source\ Code\ Pro\ 9

set encoding=utf-8

let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let spell_executable = "aspell"
let spell_language_list  = "en_GB"
highlight SpellErrors ctermfg=Red guifg=Red cterm=underline gui=underline term=reverse

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
