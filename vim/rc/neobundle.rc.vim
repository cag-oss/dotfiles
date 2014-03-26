" vimproc {{{
NeoBundle 'Shougo/vimproc', { 'build' : {     'windows' : 'make -f make_mingw32.mak',     'cygwin' : 'make -f make_cygwin.mak',     'mac' : 'make -f make_mac.mak',     'unix' : 'make -f make_unix.mak',    }, }
" }}}

NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'Shougo/neocomplete.vim'

" Unite {{{
NeoBundle 'Shougo/unite.vim'
" }}}

" neomru {{{
NeoBundle 'Shougo/neomru.vim'
" }}}

" unite outline {{{
NeoBundle 'Shougo/unite-outline'
"NeoBundle 'tsukkee/unite-tag'
" }}}

" EasyMotion {{{
NeoBundle 'Lokaltog/vim-easymotion'
" }}}

" vim-airline {{{
"NeoBundle 'bling/vim-airline'
" }}}

" vim-multiple-cursors {{{
NeoBundle 'terryma/vim-multiple-cursors'
" }}}

" vim-surround {{{
NeoBundle 'tpope/vim-surround'
"NeoBundle 'kana/vim-operator-user'
"NeoBundle 'rhysd/vim-operator-surround'
NeoBundle 'tpope/vim-repeat'
" }}}

" sparkup {{{
NeoBundle 'tristen/vim-sparkup'
" }}}

" code {{{
NeoBundle 'vim-scripts/tComment'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'pangloss/vim-javascript'
"NeoBundle 'vim-scripts/JavaScript-Indent'
NeoBundle 'nathanaelkane/vim-indent-guides'
"NeoBundle 'Raimondi/delimitMate'
" }}}
 
NeoBundle 'sjl/gundo.vim'

NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'bling/vim-bufferline'

"NeoBundle 'wting/gitsessions.vim'
