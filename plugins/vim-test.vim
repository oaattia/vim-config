Plug 'vim-test/vim-test'

function! DockerTransform(cmd) abort
    " return some stuff
    return 'cd ~/Code/ubup-docker;docker-compose run --rm php bash -c "php '. a:cmd.'"'
endfunction

let g:test#custom_transformations = {'docker': function('DockerTransform')}
let g:test#transformation = 'docker'

let test#php#phpunit#executable = 'bin/phpunit'

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

augroup AutoDeleteTestTermBuffers
    autocmd!
    autocmd BufLeave term://*phpunit* bdelete!
augroup END

