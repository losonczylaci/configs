" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'will133/vim-dirdiff'

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


colorscheme nord
set number
set list
set spell

set listchars=space:·
