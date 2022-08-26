imap jk <Esc>
nmap ; :

set nu
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

call plug#begin()

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'fenetikm/falcon'
Plug 'jeffkreeftmeijer/vim-dim'

call plug#end()

colorscheme dim
