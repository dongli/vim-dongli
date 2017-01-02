" Set tab key and indentation width.
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent

" Silly VIM does not delete characters by DELETE key default.
set backspace=indent,eol,start

" Highlight search item.
set hlsearch

" 
syntax on
filetype plugin indent on

" Delete word around cursor.
imap <C-l> <C-[>diwi
" Jump to the last edit location
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Set status bar
set laststatus=2
set statusline=%F%m\ [type=%Y]\ [line=%l,column=%c,%p%%]

" Use arrow keys to jump among window buffers.
noremap <S-Left> <C-w><Left>
noremap <S-Right> <C-w><Right>
noremap <S-Up> <C-w><Up>
noremap <S-Down> <C-w><Down>

" Invoke NERDTree.
noremap tt :NERDTree<CR>
