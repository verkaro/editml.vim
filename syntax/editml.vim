if exists("b:current_syntax")
  finish
endif
syntax clear

" ——————————————————————————————————————————————
"  Additions   {+ … +}       → green
"  Deletions   {- … -}       → red
"  Changes     {= … =}       → yellow
"  Highlights  {> … <}       → magenta
"  Moves       {move~…~…},   {move:…} → blue
"  Copies      {copy~…~…},   {copy:…} → cyan
" ——————————————————————————————————————————————
" vimrc entry below
" syntax on
"
"augroup editml_ftdetect
"  autocmd!
"  autocmd BufRead,BufNewFile *.EditML,*.editml setfiletype editml
"augroup END

syn region editmlAdd      start=/\V{+/       end=/\V+}/       keepend
syn region editmlDel      start=/\V{-/       end=/\V-}/       keepend
syn region editmlChange   start=/\V{=/       end=/\V=}/       keepend
syn region editmlMark     start=/\V{>/       end=/\V<}/       keepend

" move (full form)
syn region editmlMove     start=/\V{move~/    end=/\V}/        keepend
" move (short form)
syn match  editmlMove     /\v\{move:[^}]+\}/

" copy (full form)
syn region editmlCopy     start=/\V{copy~/    end=/\V}/        keepend
" copy (short form)
syn match  editmlCopy     /\v\{copy:[^}]+\}/

hi def editmlAdd          ctermfg=Green    guifg=Green
hi def editmlDel          ctermfg=Red      guifg=Red
hi def editmlChange       ctermfg=Yellow   guifg=Yellow
hi def editmlMark         ctermfg=Magenta  guifg=Magenta
hi def editmlMove         ctermfg=Blue     guifg=Blue
hi def editmlCopy         ctermfg=Cyan     guifg=Cyan

let b:current_syntax = "editml"

