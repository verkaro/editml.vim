" ~/.vim/after/syntax/markdown.vim
" ——————————————————————————————————————————————
"  Overlay EditML highlight on top of markdown
" ——————————————————————————————————————————————

" additions       {+ … +}       → green
syn region editmlAdd      start=/\V{+/       end=/\V+}/       keepend containedin=ALL

" deletions       {- … -}       → red
syn region editmlDel      start=/\V{-/       end=/\V-}/       keepend containedin=ALL

" changes         {= … =}       → yellow
syn region editmlChange   start=/\V{=/       end=/\V=}/       keepend containedin=ALL

" highlights      {> … <}       → magenta
syn region editmlMark     start=/\V{>/       end=/\V<}/       keepend containedin=ALL

" moves (full)    {move~desc~id} → blue
syn region editmlMove     start=/\V{move~/    end=/\V}/        keepend containedin=ALL
" moves (short)   {move:id}      → blue
syn match  editmlMove     /\v\{move:[^}]+\}/                      containedin=ALL

" copies (full)   {copy~desc~id} → cyan
syn region editmlCopy     start=/\V{copy~/    end=/\V}/        keepend containedin=ALL
" copies (short)  {copy:id}      → cyan
syn match  editmlCopy     /\v\{copy:[^}]+\}/                      containedin=ALL

" link to colors
hi def editmlAdd      ctermfg=Green   guifg=Green
hi def editmlDel      ctermfg=Red     guifg=Red
hi def editmlChange   ctermfg=Yellow  guifg=Yellow
hi def editmlMark     ctermfg=Magenta guifg=Magenta
hi def editmlMove     ctermfg=Blue    guifg=Blue
hi def editmlCopy     ctermfg=Cyan    guifg=Cyan

