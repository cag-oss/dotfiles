function! s:source_rc(path)
  execute 'source' fnameescape(expand('~/.vim/rc/' . a:path))
endfunction

call s:source_rc('init.rc.vim')

call s:source_rc('neobundle.rc.vim')

" installation check
NeoBundleCheck

"---------------------------------------------------------------------------
" Plugin:
"
call s:source_rc('plugins.rc.vim')

"---------------------------------------------------------------------------
" Key-mappings:
"
call s:source_rc('mappings.rc.vim')

"---------------------------------------------------------------------------

