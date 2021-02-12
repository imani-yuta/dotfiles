" source $VIMRUNTIME/defaults.vim

set number
set relativenumber
syntax enable
" set cursorline
set wildmenu
set tabstop=2
set shiftwidth=2
set smartindent
set virtualedit=block
set hlsearch
set clipboard+=unnamed

set nocompatible
filetype plugin on
runtime macros/matchit.vim

" packadd! vimspector
" let g:vimspector_enable_mappings = 'HUMAN'

let g:tmuxline_preset = {
  \'a'    : '#S',
  \'c'    : ['#(whoami)', '#(uptime | cud -d " " -f 1,2,3)'],
  \'win'  : ['#I', '#W'],
	\'cwin' : ['#I', '#W', '#F'],
  \'z'    : '#H'}

" vim-airline
let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

"
noremap <Leader>n nzz
noremap <Leader>N Nzz

" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Switch tab
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-surround')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-commentary')
  call dein#add('edkolev/tmuxline.vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('justmao945/vim-clang')
  call dein#add('kana/vim-operator-user')
  call dein#add('rhysd/vim-clang-format')
  call dein#add('vim-scripts/a.vim')
	call dein#add('puremourning/vimspector')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
