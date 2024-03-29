set tabstop=4
set number
set showmatch
set mouse=a
set autoindent
set clipboard=unnamed
set laststatus=2
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('neoclide/coc.nvim', {'merge':0, 'rev': 'release'})
  call dein#add('Shougo/defx.nvim')
  call dein#add('mhinz/vim-startify')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('Shougo/echodoc')
  call dein#add('tpope/vim-commentary')
  call dein#add('justinmk/vim-sneak')
  call dein#add('arcticicestudio/nord-vim') 
  call dein#add('vim-airline/vim-airline')
  call dein#add('tpope/vim-surround')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('honza/vim-snippets')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
inoremap `` <Esc>`^
set termguicolors
set background=dark
colorscheme nord
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['coc']

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
