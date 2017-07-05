" autosave kudos to http://blog.unixphilosopher.com/2015/02/a-more-betterer-autosave-in-vim.html
autocmd FocusLost * if expand('%') != '' | update | endif
autocmd BufLeave * if expand('%') != '' | update | endif
autocmd BufWritePost,BufEnter * Neomake
