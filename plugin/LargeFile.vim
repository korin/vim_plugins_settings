autocmd BufWinEnter *_spec.rb if line2byte(line("$") + 1) > 120 | syn sync clear | endif
