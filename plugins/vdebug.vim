Plug 'vim-vdebug/vdebug'

if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif
let g:vdebug_options.port = 9001
let g:vdebug_options.ide_key = "PHPSTORM"
let g:vdebug_options.break_on_open = 0
" 
