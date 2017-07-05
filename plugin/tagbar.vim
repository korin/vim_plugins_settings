nmap <leader>c :TagbarOpenAutoClose<CR>
autocmd FileType taglist setlocal norelativenumber

let g:tagbar_ctags_bin="/usr/local/bin/ctags"
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
  \ }
