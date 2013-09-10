set nocompatible | filetype indent plugin on | syn on

fun! EnsureVamIsOnDisk(plugin_root_dir)
  let vam_autoload_dir = a:plugin_root_dir.'/vim-addon-manager/autoload'
  if isdirectory(vam_autoload_dir)
    return 1
  else
    if 1 == confirm("Clone VAM into ".a:plugin_root_dir."?","&Y\n&N")
      call confirm("Remind yourself that most plugins ship with ".
                          \"documentation (README*, doc/*.txt). It is your ".
                          \"first source of knowledge. If you can't find ".
                          \"the info you're looking for in reasonable ".
                          \"time ask maintainers to improve documentation")
      call mkdir(a:plugin_root_dir, 'p')
      execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '.
                          \       shellescape(a:plugin_root_dir, 1).'/vim-addon-manager'
      exec 'helptags '.fnameescape(a:plugin_root_dir.'/vim-addon-manager/doc')
    endif
      return isdirectory(vam_autoload_dir)
    endif
endfun

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME/.vim/vim-addons', 1)
  if !EnsureVamIsOnDisk(c.plugin_root_dir)
    echohl ErrorMsg | echomsg "No VAM found!" | echohl NONE
    return
  endif
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  call vam#ActivateAddons(['surround','LaTeX-Suite_aka_Vim-LaTeX','L9','AutoComplPop'], {'auto_install' : 0})
endfun

call SetupVAM()


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

