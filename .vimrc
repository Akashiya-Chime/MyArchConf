"    _    _             _     _             
"   / \  | | ____ _ ___| |__ (_)_   _  __ _ 
"  / _ \ | |/ / _` / __| '_ \| | | | |/ _` |
" / ___ \|   < (_| \__ \ | | | | |_| | (_| |
"/_/   \_\_|\_\__,_|___/_| |_|_|\__, |\__,_|
"                               |___/       

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
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set softtabstop=2
set mouse=a
set ruler
set encoding=UTF-8
set laststatus=2
set relativenumber
set nocompatible
set clipboard=unnamedplus
set termencoding=utf-8
set encoding=utf-8
set clipboard=unnamed
set scrolloff=5
" this fix the visual-multi's problem
set term=xterm-256color
set scl=yes

let mapleader=" "
map R :source $MYVIMRC<CR>
nmap S :w<CR>
nmap Q :q<CR>
nmap Y :set relativenumber<CR>
nmap U :set norelativenumber<CR>

" no use on wt, but work on alacritty
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

vnoremap Y "+y

noremap J 10j
noremap K 10k
nnoremap H ^
nnoremap L $
nnoremap = n
nnoremap - N
noremap <leader><CR> :nohlsearch<CR>
noremap <leader>y :<C-u>CocList -A --normal yank<CR>
noremap <C-g> :term<CR>
" edit .vimrc
noremap <leader>rc :e $HOME/.vimrc<CR>
" spell check
map <leader>sc :set spell!<CR>
" figlet
map tx :r !figlet 
" no highlight search
noremap <leader>h :nohlsearch<CR>
" cursor location
noremap < <C-o>
noremap > <C-i>

" ===
" === vim-plug
" ===
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'theniceboy/nvim-deus'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzfi.vim'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'

call plug#end()


" ===
" === FZF
" ===
noremap <C-p> :FZF<CR>

" ===
" === ultisnips
" ===
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<C-e>"
let g:UltiSnipsJumpBackwardTrigger="<C-u>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/MyArchConf/Ultisnips/']


" ===
" === vim-visual-multi
" ===
let g:VM_maps = {}
let g:VM_maps['Add Cursor Down'] = '<C-j>'
let g:VM_maps['Add Cursor Up'] = '<C-k>'

" ===
" === vim-go
" ===
nnoremap <C-s> :GoRun<CR>
nnoremap <C-c> :term cargo run<CR>
 
" ===
" === indentLine
" ===
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

" ===
" === nerdtree-git-plugin
" ===
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Modified"  : "✹",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" ===
" === vim-nerdtree-syntax-highlight
" ===
"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeHighlightFolders = 1
"highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1
"you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"

" ===
" === vim-devicons
" ===
"Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1
"whther or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
"adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
"adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

" ===
" === nerdtree
" ===
nnoremap <C-m> :NERDTree<CR>
"Show hide file.
let g:NERDTreeHidden=0
"Delete help information at the top
let NERDTreeMinimalUI=1

" ===
" === vim-airline
" ===
set laststatus=2  " 永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer
let g:airline_theme='dracula'

" ===
" === nerdcommenter
" ===
" \cc 注释当前行和选中行
" \cn 没有发现和\cc有区别
" \c<空格> 如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情况执行反转注释操作
" \cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
" \ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释
" \cs 添加性感的注释，代码开头介绍部分通常使用该注释
" \cy 添加注释，并复制被添加注释的部分
" \c$ 注释当前光标到改行结尾的内容
" \cA 跳转到该行结尾添加注释，并进入编辑模式
" \ca 转换注释的方式，比如：/**/和//
" \cl \cb 左对齐和左右对其，左右对其主要针对/**/
" \cu 取消注释
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" ===
" === gruvbox
" ===
" color gruvbox
let g:gruvbox_underline = 1
let g:gruvbox_bold = 1


" ===
" === dracula
" ===
let g:dracula_colorterm = 0  " 透明背景，必须在设置主题前配置
color dracula
" color deus

" ===
" === coc.nvim
" ===
nnoremap tt :CocCommand explorer<CR>

let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-go', 'coc-yank']

set encoding=utf-8
set updatetime=100
set shortmess+=c

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" nmap <silent> <F12> <Plug>(coc-definition)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

autocmd CursorHold * silent call CocActionAsync('highlight')


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
