set nocompatible

" setup better indents and spacing (tabs are evil)
set expandtab                           " insert space characters when TAB is pressed
set shiftwidth=4                        " the number of spaces to move with the indent command
set softtabstop=4                       " honestly dont know the difference between this and tabstop
set tabstop=4                           " the number of spaces represented by a literal TAB character
set shiftround                          " round an indent command to a multiple of shiftwidth
set autoindent                          " automatically indent a new line at same column as current line
set smartindent                         " depending on the file type, be smarter about how to auto indent

" misc stuff
syntax on
set ignorecase
set smartcase
set nowrap
set nohls
set pastetoggle=<F4>                    " toggle the 'paste' option so copying from Stack Overflow does not indent

" personal standard - forget 80, I like 120 columns
set colorcolumn=120

" turn on hybrid line numbers
set number relativenumber

" turn off annoying backup files
set nobackup
set nowritebackup
set noswapfile

" turn on smarter files
filetype on
filetype indent on
filetype plugin on

" some useful commands
command White :%s/  *$//                " remove any trailing white space
command Comm :'a,.s/^/#/                " insert a comment from the 'a' mark to current line
command Uncomm :'a,.s/^#//              " remove a comment from the 'a' mark to the current line

" map useful commands
map <F2> :Comm<CR>
map <F3> :Uncomm<CR>

" change how YAML indents
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" enable wrapping for Markdown files
autocmd BufNewFile,BufRead *.md setlocal wrapmargin=120 wrap linebreak
