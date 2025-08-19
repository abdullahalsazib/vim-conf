" ---------- Basic Settings ----------
set number
set relativenumber
set tabstop=4
set mouse=a
set shiftwidth=4
set expandtab
set autoindent
set clipboard+=unnamedplus
set colorcolumn=80

set cursorline
highlight CursorLine cterm=none ctermbg=darkgray guibg=#2a2a2a

set cursorcolumn
highlight CursorColumn cterm=none ctermbg=darkgray guibg=#2a2a2a


filetype plugin indent on
"colorscheme habamax
" colorscheme retrobox
" colorscheme gruvbox
let mapleader = " "

" ---------- Load Plugins ----------
call plug#begin('~/.vim/plugged')

" File Navigation
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"comment"
Plug 'tpope/vim-commentary'
Plug 'iamcco/coc-tailwindcss'

"Gruvbox"
Plug 'morhetz/gruvbox'



" Language Server & Completion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }


" Syntax Highlighting (use for Vim)
Plug 'sheerun/vim-polyglot'

Plug 'w0rp/ale'

" Git Integration
Plug 'tpope/vim-fugitive'

" Status Line
Plug 'itchyny/lightline.vim'


call plug#end()

syntax enable
set background=dark " or light
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard' " or 'soft' or 'medium'
let g:gruvbox_invert_selection = '0'


" ---------- Keybindings ----------
"nnoremap <leader>f :Files<CR>
"nmap <C-n> :NERDTreeToggle<CR>
nnoremap<leader>e :NERDTreeToggle<CR> 
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
" Map <Leader>gc to toggle comment on current line or selection
" nmap <Leader>gc gcc
" vmap <Leader>gc gc


" ---------- Enable ALE ----------
let g:ale_linters_explicit = 1  " Only run linters you configure (optional)

" Run linters on save (instead of while typing)
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1

" Show errors with signs
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" Use ALE's virtual text (if Neovim 0.3+)
let g:ale_virtualtext_cursor = 1

" Enable fixers
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\}

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\}
