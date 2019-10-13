execute pathogen#infect()

" Set Leader key
let mapleader=","

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Disable Arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" easier moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Showing line numbers and length
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Colors
set t_Co=256
color base16-solarized-dark

" History
set history=700
set undolevels=700

" Tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" NERDtree key bindings
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFocus<CR>

" Bracked auto-complete
" inoremap (      ()<Esc>i
" inoremap {      {}<Esc>i
" inoremap [      []<Esc>i

" Tab Navigation
nnoremap <C-h>      :bprevious<CR>
nnoremap <C-l>      :bnext<CR>
nnoremap <C-w>      :bdelete<CR>

" Save shortcuts
nnoremap <C-s>      :w<CR>
inoremap <C-s>      <ESC>:w<CR>

" Page up and down are too far away
nmap <C-j>          <C-f>
nmap <C-k>          <C-b>
" nmap <C-j>          10j
" nmap <C-k>          10k

" Better copy and paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

set noswapfile

" CtrlP specific
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_abbrev = {
  \ 'gmode': 'i',
  \ 'abbrevs': [
    \ {
      \ 'pattern': ' ',
      \ 'expanded': '',
      \ 'mode': 'pfrz',
    \ },
    \ ]
  \ }

" Multiple cursor specific
let multi_cursor_use_default_mapping=0
let multi_cursor_next_key='<C-d>'
let multi_cursor_prev_key='<C-z>'
let multi_cursor_skip_key='<C-x>'
let multi_cursor_quit_key='<Esc>'

" ALE specific
nnoremap <C-i> :ALEToggle<CR>
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'php': ['php'],
\}

:command! Spellcheckon setlocal spell spelllang=en_gb | hi clear SpellBad | hi SpellBad cterm=underline
:command! Spellcheckoff hi clear SpellBad 

" Youcompleteme specific

let g:ycm_filetype_whitelist = {
\   'php' : 1,
\   'javascript' : 1,
\   'python' : 1,
\   'c' : 1,
\   'html' : 1,
\   'blade' : 1,
\   'css' : 1,
\   'scss' : 1,
\}
