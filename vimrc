call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'davidhalter/jedi-vim'
Plug 'flazz/vim-colorschemes'
Plug 'freitass/todo.txt-vim'
Plug 'honza/vim-snippets'
Plug 'jpalardy/vim-slime'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/ReplaceWithRegister'
call plug#end()
" https://www.youtube.com/watch?v=wlR5gYd6um0
" enable python support
" let g:python_host_skip_check = 1

if has('nvim')
  runtime! plugin/python_setup.vim
endif

" " syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" vim-slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" sane pane navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" taken from http://vim.wikia.com/wiki/Search_for_visually_selected_text
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" already in vim-sensible
" syntax on
" filetype plugin indent on
" set autoindent
" set smarttab         " use indents instead of tabs at beginning of line
" set ruler
" set history=1000     "set command history to 1000

colorscheme jellybeans
set number           " set line numbers
set relativenumber   " set relative line numbering to current cursor position
set tabstop=4        " size of hardtabs in spaces
set softtabstop=4    " size of soft tabstop in spaces
set shiftwidth=4     " size of an indent
set expandtab        " expand tabs to spaces
set textwidth=79     " break line  after 79 symbols
set formatoptions=tcr " add a for automatic text reflow; Interferes with surroud.vim
set confirm          " requires confirmation for some commands
set hidden           " change buffer without saving

" http://vi.stackexchange.com/questions/6/how-can-i-use-the-undofile
" Let's save undo info!
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile
