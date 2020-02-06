" currently not possible
" https://github.com/voldikss/vim-floaterm/issues/29
" function! FloattermStrategy(cmd)
"   echo 'It works! Command for running tests: ' . a:cmd
" endfunction

" let g:test#custom_strategies = {'floatterm': function('FloattermStrategy')}
"
" if has('nvim')
"   let test#strategy = {
"         \ 'nearest': 'neoterm',
"         \ 'file':    'neomake',
"         \ 'suite':   'neomake',
"         \}
" else
"   let test#strategy = 'neomake'
" endif


if has('nvim')
  let test#strategy = "neovim"
else
  let test#strategy = "neomake"
endif

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" autocmd BufWritePost *_spec.rb :TestNearest

let test#ruby#rspec#executable = 'bin/rspec'
