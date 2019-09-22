if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.readonly = ''
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline#extensions#neomake#enabled = 1
let airline#extensions#neomake#error_symbol = '✖:'
let airline#extensions#neomake#warning_symbol = '!:'

let g:airline_skip_empty_sections = 1

let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 129,
      \ 'x': 129,
      \ 'y': 129,
      \ 'z': 129,
      \ 'warning': 120,
      \ 'error': 120,
      \ }
