set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15
set showmode                    " always show what mode we're currently editing in
set wrap
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a
set clipboard+=unnamedplus " the copy goes to the clipboard

"--------------------------------------------------------------------------
" General key maps (keymaps, key binds, keybinds)
"--------------------------------------------------------------------------
let mapleader = "\<space>"

nmap <leader>cf :edit ~/.config/nvim/init.vim<cr>
nmap <leader>cs :source ~/.config/nvim/init.vim<cr>
nmap <leader>coc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>ki :edit ~/.config/kitty/kitty.conf<cr>
nmap <leader>k :nohlsearch<CR>

" close all buffers
nmap <leader>Q :bufdo bdelete<cr>

map gf :edit <cfile><cr>

nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" Quicky escape to normal mode
imap jj <esc>

" Easy insertion of a trailing ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>

" Git
nnoremap <leader>gb :G blame<cr>
nnoremap <leader>gbr :Gbranches<cr>

" arrow keys resize windows
nnoremap <left> :vertical resize -10<cr>
nnoremap <right> :vertical resize +10<cr>
nnoremap <up> :resize -10<cr>
nnoremap <down> :resize +10<cr>

" Disable anoying ex mode
nnoremap Q <Nop>

" Disable the direction keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

" Automatically install vim-plug
if empty(glob('~/.local/share/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugins')
    source ~/.config/nvim/plugins/fzf.vim
    source ~/.config/nvim/plugins/fugitive.vim
    source ~/.config/nvim/plugins/coc.vim
    source ~/.config/nvim/plugins/phpactor.vim
    source ~/.config/nvim/plugins/papercolor-theme.vim
    source ~/.config/nvim/plugins/everblush.vim
    source ~/.config/nvim/plugins/commentary.vim
    source ~/.config/nvim/plugins/vim-test.vim
    source ~/.config/nvim/plugins/vim-dispatcher.vim
    source ~/.config/nvim/plugins/vimspector.vim
    source ~/.config/nvim/plugins/nerd-tree.vim
    source ~/.config/nvim/plugins/airline.vim
call plug#end()

"--------------------------------------------------------------------------
" Post-plugin settings
"--------------------------------------------------------------------------
colorscheme everblush


