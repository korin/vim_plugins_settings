autocmd BufEnter *_spec.rb if line2byte(line("$") + 1) > 5*1024 | syn sync clear | endif
