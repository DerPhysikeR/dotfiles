call plug#begin('~/.vim/plugged')
" Plug 'benekastah/neomake'
" Plug 'scrooloose/syntastic'
" Plug 'justinmk/vim-gtfo'
Plug 'SirVer/ultisnips'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'francoiscabrol/ranger.vim'
Plug 'freitass/todo.txt-vim'
Plug 'honza/vim-snippets'
Plug 'jceb/vim-orgmode'
" Plug 'jiangmiao/auto-pairs'
Plug 'jpalardy/vim-slime'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
" Plug 'kshenoy/vim-signature'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nvie/vim-flake8'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'rbgrouleff/bclose.vim'
Plug 'scrooloose/nerdtree'
Plug 'simnalamburt/vim-mundo'
" Plug 'takac/vim-hardtime'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'w0rp/ale'
Plug 'jreybert/vimagit'
" Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf'}
Plug 'junegunn/fzf.vim'
" Plug 'junegunn/fzf.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
call plug#end()
" https://www.youtube.com/watch?v=wlR5gYd6um0
" enable python support
" let g:python_host_skip_check = 1

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  runtime! plugin/python_setup.vim
  " https://www.reddit.com/r/neovim/comments/3nuyt7/python_dev_plugins/
  " let g:neomake_python_enabled_makers = ['pylint', 'flake8', 'pep8']
  " autocmd! BufWritePost * Neomake
endif

" " syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" " let g:syntastic_check_on_open = 1
" " let g:syntastic_toggle_mode = 1
" let g:syntastic_check_on_wq = 0
" autocmd VimEnter * SyntasticToggleMode " disable syntastic by default
" " switch syntastic off and on with "ST"
" :command ST SyntasticToggleMode 

" vim-slime
let g:slime_target = "tmux"
" let g:slime_target = "neovim"
let g:slime_python_ipython = 1

" import numpy as np
" print(np.pi)

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

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

" colorscheme jellybeans
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu
colorscheme minimalist
set number            " set line numbers
set relativenumber    " set relative line numbering to current cursor position
set tabstop=4         " size of hardtabs in spaces
set softtabstop=4     " size of soft tabstop in spaces
set shiftwidth=4      " size of an indent
set expandtab         " expand tabs to spaces
set textwidth=79      " break line  after 79 symbols
set formatoptions=tcr " add "a" for automatic text reflow; Interferes with surroud.vim
set confirm           " requires confirmation for some commands
set hidden            " change buffer without saving
set sidescroll=1      " incremental horizontal scrolling
set splitbelow
set splitright
" enable true colors support
" do not set termguicolors or vim + tmux changes colors
" https://github.com/tmux/tmux/issues/699
" set termguicolors
"
tnoremap <Esc> <C-\><C-n>
let mapleader = "\<Space>"
noremap <Leader>u :MundoToggle<CR>
noremap <Leader>GG :GitGutterToggle<CR>
let g:gitgutter_enabled = 0
" spacemacs mappings
nnoremap <Leader>w <C-w>
nnoremap <Leader>wV <C-w>v<C-w>h
nnoremap <Leader>wS <C-w>s<C-w>k
nnoremap <Leader>fs :w<CR>
nnoremap <Leader><tab> :bp<CR>
nnoremap <Leader>/ <C-w>
let g:ranger_map_keys = 0
nnoremap <leader>ar :Ranger<CR>
nnoremap <leader>ad :Ranger<CR>
nnoremap <Leader>wd :close<CR>
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>? :FZF<CR>
"install `the_silver_searcher` for it to work
nnoremap <Leader>/ :Ag<CR>
nnoremap <Leader>" <C-w>s :terminal<CR>A
nnoremap <Leader>' <C-w>s :cd %:p:h<CR> :terminal<CR>A
nnoremap <Leader>ts :ALEToggle<CR>
nnoremap <Leader>feR :source ~/.config/nvim/init.vim<CR>
nnoremap <Leader>l1 1gt
nnoremap <Leader>l2 2gt
nnoremap <Leader>l3 3gt
nnoremap <Leader>l4 4gt
nnoremap <Leader>l5 5gt
nnoremap <Leader>l6 6gt
nnoremap <Leader>l7 7gt
nnoremap <Leader>l8 8gt
nnoremap <Leader>l9 9gt

" switch to insert mode in :terminal and make pane switching possible
" https://vi.stackexchange.com/questions/3670/how-to-enter-insert-mode-when-entering-neovim-terminal-pane
" tnoremap <C-h> <C-\><C-n><C-w>h
" tnoremap <C-j> <C-\><C-n><C-w>j
" tnoremap <C-k> <C-\><C-n><C-w>k
" tnoremap <C-l> <C-\><C-n><C-w>l
" autocmd BufWinEnter,WinEnter term://* startinsert

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

set shell=/bin/zsh

