" $Id: .exrc 3 2007-08-20 08:33:18Z mharlow $
"
set autoindent
" tabstop 4
set ts=4
set shiftwidth=4
set tabstop=4
" give cursor position
set ruler
" show what mode we are in, insert, command
set showmode
" from http://www.faqs.org/faqs/editor-faq/vi/part2/
" change tabs to 4 spaces
" map #t 1G!Gpr -t -e4
" map #T !}pr -t -e4}
" convert tabs to spaces using expand(1)
map #t 1G!Gexpand -t 4
" center a line
map = 080i $78hd0^D:s/  / /g$p
" abreviations
ab Yemail matt@technomage.net
ab Yname Matt Okeson-Harlow
