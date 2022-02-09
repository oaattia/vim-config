set number
set termguicolors
set undofile
set spell
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set wrap
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set clipboard=unnamedplus
set confirm
set exrc
set backup
" may be need first to create this directory
set backupdir=~/.local/share/nvim/backup
set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set signcolumn=yes:2
set cmdheight=1
set linespace=20
set textwidth=80
set splitbelow
set splitright

"--------------------------------------------------------------------------
" General key maps (keymaps, key binds, keybinds)
"--------------------------------------------------------------------------

let mapleader = "\<space>"

nmap <leader>cf :edit ~/.config/nvim/init.vim<cr>
nmap <leader>kc :edit ~/.config/kitty/kitty.conf<cr>
nmap <leader>cs :source ~/.config/nvim/init.vim<cr>
nmap <leader>coc :edit ~/.config/nvim/coc-settings.json<cr>

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
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/vim-test.vim
source ~/.config/nvim/plugins/vim-dispatcher.vim
source ~/.config/nvim/plugins/nerd-tree.vim
source ~/.config/nvim/plugins/airline.vim "statusbar in the bottom
" source ~/.config/nvim/plugins/autosave.vim "autosave plugin
call plug#end()

"--------------------------------------------------------------------------
" Post-plugin settings
"--------------------------------------------------------------------------
set background=dark
colorscheme PaperColor
