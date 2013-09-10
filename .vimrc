set t_Co=256
color smyck
" Enable syntax highlighting
syntax on
filetype plugin on

" Add line numbers
set number
set ruler

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

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
