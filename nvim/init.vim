imap jk <Esc>

set nocompatible
set nu
set showmatch
set incsearch
set scrolloff=8

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set signcolumn=yes
set updatetime=500

set clipboard=unnamed
set cursorline
set ttyfast

set wildmenu
set wildmode=list:longest
syntax on

set mouse=a 
set noswapfile

let mapleader = " "

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'
Plug 'fenetikm/falcon'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'folke/tokyonight.nvim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mxw/vim-jsx'
call plug#end()

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

let g:tokyonight_style = "storm"
let g:tokyonight_italic_function = 1
let g:tokyonight_italic_variables = 1

set termguicolors
colorscheme iceberg
set splitright
set splitbelow

" airline stuff
let g:airline#extensions#tabline#formatter = 'unique_tail'

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                    	          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm()

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" other plugin before putting this into your config.
" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1):
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackSpace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    else
        call feedkeys('K', 'in')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ca <Plug>(coc-codeaction)

" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nerdtree mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

nnoremap gp :silent %!prettier --stdin-filepath %<CR>

filetype plugin indent on
