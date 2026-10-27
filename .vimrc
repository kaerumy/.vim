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

inoremap <C-S-V> <C-R>+
cnoremap <C-S-V> <C-R>+

filetype plugin indent on
syntax enable 

autocmd FileType html setlocal nowrap
autocmd FileType xml setlocal nowrap


colorscheme koehler
set guifont=Source\ Code\ Pro\ 16

set encoding=utf-8

let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let spell_executable = "aspell"
let spell_language_list  = "en_GB"
highlight SpellErrors ctermfg=Red guifg=Red cterm=underline gui=underline term=reverse

set statusline+=%#warningmsg#
set statusline+=%*

let g:ale_virtualtext_cursor = 'disabled'

let g:ycm_python_binary_path = '/usr/bin/python3'

let g:airline#extensions#ale#enabled = 1

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

" vim-ai: same model as the opencode session (home-aida/Qwen3.8-27B-GGUF)
let s:ai_opts = {
\  "endpoint_url": "http://aida.local:13305/v1/chat/completions",
\  "model": "Qwen3.8-27B-GGUF",
\  "auth_type": "none",
\}
let g:vim_ai_chat = { "options": s:ai_opts }
let g:vim_ai_complete = { "options": s:ai_opts }
let g:vim_ai_edit = { "options": s:ai_opts }
