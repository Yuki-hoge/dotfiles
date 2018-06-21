" assumed to be loaded by vimrc/init.vim

" load plugin config
source <sfile>:h/plugs.vim

" set colorscheme
" colorscheme must be set after loading myplugs.vim because iceberg is managed by vim-plug
syntax on
colorscheme iceberg

" general option
filetype on
language en_US.UTF-8
if &compatible
  set nocompatible
endif

set number
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set backspace=indent,eol,start
set hlsearch
set ruler
set title
set wildmenu wildmode=list:full
set belloff=all
set cursorline
highlight CursorLine term=underline cterm=underline ctermfg=NONE ctermbg=NONE
highlight CursorLine gui=underline guifg=NONE guibg=NONE


" key mapping
noremap <S-h>   ^
noremap <S-l>   $
nnoremap x "_x
nnoremap Q <Nop>

" filetype settings
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.slide set filetype=markdown
autocmd BufRead,BufNewFile *.toml set filetype=toml

" load settings for markdown file
autocmd FileType markdown source <sfile>:h/markdown.vim
