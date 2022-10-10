 """ GENERAL SETTING

:set number
:set relativenumber 
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard=unnamed

""" SET CURSOR TO BLINKING, COPIED FROM :HELP GUICURSOR

:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
	 \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
     \,sm:block-blinkwait175-blinkoff150-blinkon175

""" SHOULD GRAB MORE COLOR SCHEME

:colorscheme murphy

""" PLUGIN MANAGEMENT; TO UNINSTALL, COMMENT OUT LINES AND RUN :PLUGCLEAN

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
" Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
" Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/nanotech/jellybeans.vim' " Jellybeans color scheme 

"" Tried ctrlp but doesn't like it 
" Plug 'https://github.com/ctrlpvim/ctrlp.vim' " File fuzzy search

"" File fuzzy search like ctrl+p in vscode, fzf so far works best for me
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

""" KEY MAPS 

nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
"" Move cursor through splits
nnoremap <C-l> <C-w>w
"" Switch buffers in the same split
nnoremap <C-k> :bn<CR>
"" Ctrl+p to trigger fuzzy file search 
nnoremap <C-p> :Files<CR>

""" CONFIGURATION ON PLUGINS

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:fzf_preview_window = [] " Disable preview on Windows


