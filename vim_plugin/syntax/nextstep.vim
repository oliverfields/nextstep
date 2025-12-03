" NextStep

highlight nextstepTODO ctermfg=10 cterm=bold
highlight nextstepBLOCK ctermfg=9 cterm=bold
highlight nextstepDONE ctermfg=8 cterm=bold
highlight nextstepMention ctermfg=13 cterm=bold
highlight nextstepStrikethrough cterm=strikethrough ctermfg=8

call matchadd('nextstepTODO', '\<NEXTSTEP\>', 50)
call matchadd('nextstepBLOCK', '\<BLOCKED\>', 50)
call matchadd('nextstepDONE', '^\<DONE\>', 50)
call matchadd('nextstepDONE', '^\<WONT\>', 50)
call matchadd('nextstepMention', '@\w\+', 50)
call matchadd('nextstepStrikethrough', '^\(DONE\|WONT\).*$', 60)


" Markdown

highlight markdownHeading ctermfg=12 cterm=bold

call matchadd('markdownHeading', '^\s*#.*', 50)
