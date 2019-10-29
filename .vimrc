if &compatible
  set nocompatible
endif

filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'nickhutchinson/vim-cmake-syntax'
Plugin 'rhysd/clever-f.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'thinca/vim-quickrun'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tyru/caw.vim'

call vundle#end()

filetype plugin indent on

source ~/.vim/configs/quickrun.conf.vim
source ~/.vim/configs/vim-cpp-modern.conf.vim
source ~/.vim/configs/youcompleteme.conf.vim

let                 &encoding = 'utf-8'
let &fileencoding = &encoding
" let &ambiwidth = 'double'

let &updatetime = 100

set confirm

set autoread

set noswapfile
set nobackup

let &fileformat = 'unix'

set ttyfast
let &clipboard = 'unnamedplus'

set number
let &laststatus = 0

set showmode
set showcmd

set list
let &listchars = 'tab:> ,trail:_'

set timeout
let  &timeoutlen = 1000
let &ttimeoutlen = 100

let               &tabstop = 2
let &shiftwidth = &tabstop
set expandtab smarttab

set nowrap

autocmd filetype scheme setlocal autoindent lisp
autocmd filetype c,cpp setlocal cindent
set cinoptions+=g0,:0,N-s,#N

let &foldmethod = 'indent'
let &foldignore = ''
let &foldlevel = 0

let &sidescroll = 1
let &scrolloff = 128

set showmatch
let &matchtime = 1

let &virtualedit = 'block'

set incsearch ignorecase smartcase wrapscan

set splitbelow splitright

set wildmenu
let &wildmode = 'longest:full,full'

set cursorline
if (exists('+colorcolumn'))
  let &colorcolumn = 80
  " let &colorcolumn = '40,80'
endif

nnoremap ; :
nnoremap : ;
nnoremap Y y$
nnoremap x "_x
nnoremap + <c-a>
nnoremap - <c-x>

nnoremap <leader>def :YcmCompleter<space>GoTo<cr>

nnoremap <leader>gc :!git<space>commit<space>--verbose<cr>
nnoremap <leader>gn :<c-u>GitGutterNextHunk<cr>
nnoremap <leader>gp :<c-u>GitGutterPrevHunk<cr>
nnoremap <leader>gr :<c-u>GitGutterUndoHunk<cr>
nnoremap <leader>gs :<c-u>GitGutterStageHunk<cr>

nnoremap / :<c-u>set<space>hlsearch<cr>/
nnoremap ? :<c-u>set<space>hlsearch<cr>?

inoremap "" ""<left>
inoremap $$ $$<left>
inoremap '' ''<left>
inoremap () ()<left>
inoremap <> <><left>
inoremap [] []<left>
inoremap {} {}<left>

vnoremap ; :s/
vnoremap > >gv
vnoremap < <gv

vmap v     <plug>(expand_region_expand)
vmap <c-v> <plug>(expand_region_shrink)

syntax enable
let &background = 'light'

source ~/.vim/configs/solarized.conf.vim
colorscheme solarized

" highlight matchparen   cterm=underline ctermbg=none
highlight cursorlinenr cterm=bold
highlight linenr       ctermbg=none
highlight search       cterm=underline
highlight incsearch    cterm=underline

" autocmd BufRead,BufNewFile *.cmake    let &filetype = 'cmake'
autocmd bufread,bufnewfile *.launch   let &filetype = 'xml'
autocmd bufread,bufnewfile *.md       let &filetype = 'markdown'
autocmd bufread,bufnewfile *.plt      let &filetype = 'gnuplot'
autocmd bufread,bufnewfile .tmux.conf let &filetype = 'tmux'

autocmd filetype scheme setlocal iskeyword=@,33,35-38,42-43,45-58,60-64,94,_,126
" 33 !
" 35-38 #$%&
" 42-43 *+
" 45-58 -./[0-9]:
" 60-64 <=>?@
" 94 ^
" 126 ~

autocmd filetype scheme syntax keyword function any
autocmd filetype scheme syntax keyword function evaluate
autocmd filetype scheme syntax keyword function every
autocmd filetype scheme syntax keyword function identifier?
autocmd filetype scheme syntax keyword function undefined
autocmd filetype scheme syntax keyword function unspecified
autocmd filetype scheme syntax keyword function length*

autocmd filetype scheme syntax keyword keyword conditional
autocmd filetype scheme syntax keyword keyword iterate
autocmd filetype scheme syntax keyword keyword native
autocmd filetype scheme syntax keyword keyword λ

autocmd filetype scheme syntax keyword macro conditionally-expand
autocmd filetype scheme syntax keyword macro environment
autocmd filetype scheme syntax keyword macro er-macro-transformer
autocmd filetype scheme syntax keyword macro explicit-renaming-macro-transformer
autocmd filetype scheme syntax keyword macro implicit-renaming-macro-transformer
autocmd filetype scheme syntax keyword macro ir-macro-transformer
autocmd filetype scheme syntax keyword macro macro-transformer
autocmd filetype scheme syntax keyword macro reversed-syntactic-closure-macro-transformer
autocmd filetype scheme syntax keyword macro rsc-macro-transformer
autocmd filetype scheme syntax keyword macro sc-macro-transformer
autocmd filetype scheme syntax keyword macro syntactic-closure-macro-transformer

autocmd filetype scheme set lispwords+=environment
autocmd filetype scheme set lispwords+=macro-transformer
autocmd filetype scheme set lispwords-=if

let g:is_bash = 1

autocmd BufWritePre * :%s/\s\+$//ge

