let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
autocmd BufWritePost,BufEnter * Neomake
