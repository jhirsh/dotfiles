" autocmd! bufwritepost .vimrc source %

" automatic vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug specs
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

call plug#end()


" copy_paste
set pastetoggle=<F2>
set clipboard=unnamed

" quicksave
noremap <Leader>w :update<CR>
vnoremap <Leader>w <C-C>:update<CR>
inoremap <Leader>w <C-O>:update<CR>

" map_leader
let mapleader = ","

" Ctrl+<movement> instead of Ctrl+w+<movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" tab movement
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" explore, quit
map <Leader>e <esc>:Vexplore<CR>
map <Leader>q <esc>:q<CR>

" sort text
vnoremap <Leader>s :sort<CR>

" move indentations
vnoremap < <gv
vnoremap > >gv

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" color scheme
set t_Co=256
color wombat256mod

filetype off
filetype plugin indent on
syntax on

" settings
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

