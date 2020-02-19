let g:floaterm_width=min([ &columns - 2, 400 ])
let g:floaterm_height=min([&lines - 2, max([20, &lines / 3])])
let g:floaterm_position='center'
let g:floaterm_open_in_root='true'

autocmd User Startified setlocal buflisted
