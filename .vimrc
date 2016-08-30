set nocompatible | filetype indent plugin on | syn on

set t_Co=256
color smyck

set encoding=utf8
set fileencoding=utf8
set so=14
" Enable syntax highlighting
syntax on

" Add line numbers
set number
set ruler

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Highlight cursor line.
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
  au WinLeave * setlocal nocursorline
  au WinLeave * setlocal nocursorcolumn
augroup END

" Make trailing white spaces appear
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Fall back into normal mode after 8 sec
"au CursorHoldI * stopinsert

"Disabling cursors
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Show trailing white spaces and hard tabs
set list listchars=tab:»·,trail:·

set backspace=indent,eol,start

" Map Ctrl+l to clear highlighted searches
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Directories for swap files
set backupdir=~/.vimbackup
set directory=~/.vimbackup

" Python tabstops etc
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

"Search things
set incsearch
set hlsearch

"Latex stuff
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set iskeyword+=;
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
let g:Tex_ViewRule_pdf = 'evince'

