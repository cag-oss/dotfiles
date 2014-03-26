
" NeoBundle setup {{{
if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif
" Required:
 call neobundle#rc(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
" }}}
" Colors {{{
syntax enable           " enable syntax processing
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
"set background=dark
" }}}

" }}}
" Misc {{{
let mapleader=","
set ttyfast                     " faster redraw
set backspace=indent,eol,start
set clipboard=unnamed
" }}}
