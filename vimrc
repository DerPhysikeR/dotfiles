call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'flazz/vim-colorschemes'
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

" sane pane navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

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
set textwidth=80     " break line  after 115 symbols
set formatoptions=tcr " add a for automatic text reflow; Inteferes with surroud.vim
set confirm          " requires confirmation for some commands
set hidden           " change buffer without saving

