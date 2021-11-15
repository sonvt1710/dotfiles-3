call plug#begin('~/.local/share/nvim/plugged')
"Theme
Plug 'joshdick/onedark.vim'
"Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Fuzzy file search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"BottomBar
Plug 'vim-airline/vim-airline'
" HTML support
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'scss', 'tsx', 'jsx'] } 
" Autosave file
Plug '907th/vim-auto-save'
" See Files in tree
Plug 'preservim/nerdtree'
" Autoclose brackets
Plug 'jiangmiao/auto-pairs'
" Better Syntax l
Plug 'nvim-treesitter/nvim-treesitter'

" LANGUAGE SUPPORT
"
" Javascript
Plug 'pangloss/vim-javascript',{ 'for': ['js', 'jsx'] }
" TypeScript
Plug 'leafgarland/typescript-vim', { 'for': ['ts', 'tsx'] }
" React js
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['jsx']}

call plug#end()

" CALL TO PLUGINS CONFIGURATION
source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/nerdtree.vim
source ~/.config/nvim/plug-config/emmet.vim
source ~/.config/nvim/plug-config/treestitter.lua
