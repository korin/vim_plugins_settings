" let g:prettier#exec_cmd_path = "/usr/local/bin/prettier-eslint"
" max line lengh that prettier will wrap on
let g:prettier#config#print_width = 120
" flow|babylon|typescript|css|less|scss|json|graphql|markdown
let g:prettier#config#parser = 'babylon'
" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#autoformat = 0
let g:prettier#config#trailing_comma = 'never'

" I find it annoying when I edit only one line in a messed up file
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync
