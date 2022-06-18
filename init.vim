
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Theme plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'

" navigation plugins
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'markstory/vim-zoomwin'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/which-key.nvim'

Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'

" Dev plugins 
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'will133/vim-dirdiff'
Plug 'ekalinin/Dockerfile.vim'

" Plant Uml
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'

" presentation
Plug 'sotte/presenting.vim'
Plug 'junegunn/goyo.vim'
Plug 'ernstwi/vim-secret'


Plug 'chrisbra/Recover.vim'
Plug 'christoomey/vim-system-copy'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#tabline#left_sep = '>'

map <silent> <F6> :NERDTreeToggle<CR>

set splitright
set splitbelow

" Split navigation 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

nnoremap <silent> <C-Left>  :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <silent> <C-Up>    :resize +3<CR>
nnoremap <silent> <C-Down>  :resize -3<CR>

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cole=3
set nowrap

set belloff=all

colorscheme nord
set number
set list
set spell

set listchars=space:·

set updatetime=100

" vim-markdown
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_folding_disabled = 1

noremap Q !!$SHELL<CR>

" Set space as Leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
  require("which-key").setup {
  }
EOF


" folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
