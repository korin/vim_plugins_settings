augroup filetypedetect
  au BufWinEnter,BufWritePost *_spec.rb set filetype=ruby.rspec
augroup END

augroup ft_rb
    au!
    " fix the SLOOOW syntax highlighting
    au FileType rspec setlocal re=1 foldmethod=manual
augroup END
