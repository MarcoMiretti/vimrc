".vimrc file, usefull for programming
"
"contains:
"	* vim-plugged
"	* colorspace gruvbox dark mode
"	* NERDTree for file search (mapped to ctrl+n)
"	* Programming oriented features like numbers, line highlight and auto
"	tab configuration
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
set bg=dark

" numbers at the left of the screen
set number

" a line highlighting cursor
set cursorline

" type specific indentation
filetype indent on

" wildcard predictions in menu
set wildmenu

" faster macros, redraws scrren only when needed
set lazyredraw

" real time search with highlight
set incsearch
set hlsearch

" stop highlight when ,space is hit
nnoremap <leader><space> :nohlsearch<CR>

" remap nerdtree to control-n
map <C-n> :NERDTreeToggle<CR>
