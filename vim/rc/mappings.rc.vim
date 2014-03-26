":G editing {{{
" Display another buffer when current buffer isn't saved.
set hidden
set mouse=a
" }}}

" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
"set relativenumber
filetype indent on
filetype plugin on
set autoindent smartindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu
"set lazyredraw
set showmatch           " higlight matching parenthesis
" }}}
" status line {{{
" Always display statusline.
set laststatus=2 
" Set statusline.
set statusline=
"let statusline=%F\ %m %y%=%l,%c\ %P
set noshowmode
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <leader>f za
set foldlevelstart=10    " start with fold level of 1
" }}}
" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]

" Easy buffer navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l
noremap <leader>v <C-w>v
" Less chording
nnoremap ; :
" page up and down
"nnoremap <C-j> <C-f>
"		nnoremap <C-k> <C-b>
" saving
nmap <C-s> :wa<CR>
imap <C-s> <esc>:wa<CR>
"nmap <leader><C-s> :wa<CR>
"imap <leader><C-s> <esc>:wa<CR>
" }}}

" turn off swap files and backups
" Don't create backup.
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.

" Leader Shortcuts {{{
let mapleader=","
"nnoremap <leader>m :silent make\|redraw!\|cw<CR>
"nnoremap <leader>u :GundoToggle<CR>
"nnoremap <leader>h :A<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
"nnoremap <leader>l :call ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
"nnoremap <leader>s :mksession<CR>
"nnoremap <leader>a :Ag 
" comments
map <leader>c <c-_><c-_>

"nnoremap <leader>1 :set number!<CR>

"inoremap <C-Space> <esc>
"inoremap <C-i> <esc>
inoremap fj <esc>
inoremap jf <esc>
" }}}

" powerline }}}
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set guifont=Sauce\ Code\ Powerline
" }}}

vnoremap <silent> <leader>f :! esformatter<CR>

" set 'updatetime' to 15 seconds when in insert mode
"au InsertEnter * let updaterestore=&updatetime | set updatetime=2000
"au InsertLeave * let &updatetime=updaterestore
":au CursorHoldI * stopinsert

set t_ut= 

" tmux wil only forward escape sequences to the terminal if surrounded by a DCS sequence
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" git session save {{{
function! FindProjectName()
  let s:name = getcwd()
  if !isdirectory(".git")
    let s:name = substitute(finddir(".git", ".;"), "/.git", "", "")
  end
  if s:name != ""
    let s:name = matchstr(s:name, ".*", strridx(s:name, "/") + 1)
  end
  return s:name
endfunction

" Sessions only restored if we start Vim without args.
function! RestoreSession(name)
  if a:name != ""
    if filereadable($HOME . "/.vim/sessions/" . a:name)
      execute 'source ' . $HOME . "/.vim/sessions/" . a:name
    end
  end
endfunction

" Sessions only saved if we start Vim without args.
function! SaveSession(name)
  if a:name != ""
    execute 'mksession! ' . $HOME . '/.vim/sessions/' . a:name
  end
endfunction

" Restore and save sessions.
if argc() == 0
  autocmd VimEnter * call RestoreSession(FindProjectName())
  autocmd VimLeave * call SaveSession(FindProjectName())
end
" }}}

" chromix - change chrome tabs inside vim {{{
function! ChromixFocus(name)
    call system("chromix with \"" . a:name . "\" focus")
endfunction
command! -nargs=1 C call ChromixFocus(<f-args>)
" }}}
