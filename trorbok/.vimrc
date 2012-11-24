"" $Id: .vimrc,v 1.1 2005/09/21 04:16:10 mharlow Exp $
"" settings
syntax enable
set background=dark
colorscheme solarized

filetype plugin indent on

"" tab settings
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set autoindent

"" wrap at 78 lines
set textwidth=78

set path=/usr/local/share/vim/vim56/syntax/
set autowrite
"" i like to always be able to be able to delete things
set backspace=2
"" vi compatible? why? then we would use vi! say no
set nocompatible
set comments=b:#,:%,fb:-,n:>,n:)
set nodigraph
set noerrorbells

"" i also like to be able to use the cursor keys
set esckeys
set joinspaces
set laststatus=2 
set ruler
set rulerformat=%55(%{strftime('%Y\ %m\ %d\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set modeline
set modelines=2
set report=0
set showcmd
"" abbreviations
iab Ydate <C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR>
iab Yds <C-R>=strftime("%Y/%m/%d")<CR>
iab Yemail matt@technomage.net
iab Yname Matt Okeson-Harlow

"" mappings
nmap ,h :execute "helptags " . expand("%:p:h")<CR>

" spell checking
nmap ,s :w<CR>:!aspell -e -c %<CR>:e<CR>

" perl
nmap ,p :w<CR>:!perl %<CR>

" ruby
nmap ,r :w<CR>:!ruby %<CR>

"" # cmdln.net outline format
autocmd BufEnter,BufNew *.notes set smartindent foldmethod=indent expandtab tw=0 ts=4 sw=4 spell

" gnupg.vim
let g:GPGDefaultRecipients = ['mharlow']

set guifont=ProggySquareTTSZ\ 12
