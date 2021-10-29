syntax on
set number
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2

map R :source $MYVIMRC<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

noremap J 5j
noremap K 5k
nnoremap <C-n> :NERDTree<CR>
nnoremap tt :CocCommand explorer<CR>

" YouCompleteMe
" set completeopt=longest,menu

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
" Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

color snazzy
" let g:SnazzyTransparent = 1

" ===
" === coc.nvim
" ===
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp']

set encoding=utf-8
set updatetime=100
set shortmess+=c

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> <F12> <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

autocmd CursorHold * silent call CocActionAsync('highlight')

if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
