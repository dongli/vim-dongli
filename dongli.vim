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
inoremap <S-Left> <C-w><Left>
inoremap <S-Right> <C-w><Right>
inoremap <S-Up> <C-w><Up>
inoremap <S-Down> <C-w><Down>

" Invoke NERDTree.
inoremap tt <Esc>:NERDTree<CR>
nnoremap tt :NERDTree<CR>
" Nerdtree settings
autocmd StdinReadPre * let s:stdin=1
autocmd VimEnter * if argc() == 0 && !exists('s:stdin') | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:stdin") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


" Other keymappings
set timeout
set timeoutlen=200

inoremap qq <Esc>
