let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 2
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_balloons = 1

let g:syntastic_error_symbol = '!'
let g:syntastic_style_error_symbol = '!'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = '⚠'

let g:syntastic_quiet_messages = {}
let g:syntastic_scss_checkers = ['sass', 'stylelint']
let g:syntastic_css_checkers = ['stylelint']
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
let g:syntastic_ruby_checkers = ['mri', 'rubocop', 'reek']

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
