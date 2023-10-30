" let g:floaterm_width=min([ &columns - 2, 400 ])
let g:floaterm_width= &columns
" let g:floaterm_height=min([&lines - 2, max([40, &lines / 2])])
let g:floaterm_height= &lines / 2
let g:floaterm_position='bottomleft'
let g:floaterm_open_in_root='true'

autocmd User Startified setlocal buflisted
