syntax on
set noerrorbells
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
highlight ColorColoumn ctermbg=0 guibg=lightgrey
set clipboard=unnamed
set encoding=utf-8
set laststatus=2
set noshowmode

"--------------------------------------PLUGINS--------------------------------
call plug#begin('~/.vim/plugged')

" gruvbox
Plug 'morhetz/gruvbox'
" search tool
Plug 'jremmen/vim-ripgrep'
" syntax and settings for typescript
Plug 'leafgarland/typescript-vim'
" view man pages and grep for man pages
Plug 'vim-utils/vim-man'
" visualize undo history
Plug 'mbbill/undotree'
" A collection of language packs
Plug 'sheerun/vim-polyglot'
"Asynchronous Lint Engine - provides linting
Plug 'dense-analysis/ale'
" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" syntax completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" status line
Plug 'itchyny/lightline.vim'
" css highlighter
Plug 'ap/vim-css-color'
" python syntax support
Plug 'vim-python/python-syntax'
" git support
Plug 'jreybert/vimagit'
" file tree
Plug 'preservim/nerdtree'
" nerd tree git
Plug 'Xuyuanp/nerdtree-git-plugin'
" devicons for nerdtree git plugin
Plug 'ryanoasis/vim-devicons'
" syntax help with parenthesis
Plug 'frazrepo/vim-rainbow'
" git info for lines added/removed
Plug 'airblade/vim-gitgutter'
"auto close things that need to be autoclosed
Plug 'Raimondi/delimitMate'
" fugitive for more git stuff
Plug 'tpope/vim-fugitive'

call plug#end()

colorscheme gruvbox
set background=dark
let g:rainbow_active = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeGitStatusConcealBrackets = 1
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
"--------------------------------------KEY BINDINGS---------------------------
map <C-p> :Files<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
