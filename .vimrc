" change color scheme
syntax on 
colorscheme elflord

" enable syntax highlighting
syntax enable

" show line numbers
set number
set relativenumber

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" fix numbering after wrapping lines
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vim-plug
call plug#begin('~/.vim/plugged')

" show git diff in sign column
Plug 'airblade/vim-gitgutter'

" linting (syntax checking and semantic errors) 
Plug 'dense-analysis/ale'
" Enable airline's extion for ale
let g:airline#extensions#ale#enabled = 1
" Set different highlights for the sign column if error
let g:ale_change_sign_column_color = 1
" work globally in all buffers
let g:ale_vim_vimls_use_global = 1
let g:ale_r_lintr_use_global = 1
let g:ale_python_flake8_use_global = 1
let g:ale_python_mypy_use_global = 1
let g:ale_python_pylint_use_global = 1
" keep gutter open
let g:ale_sign_column_always = 1

" surround items, useful for markdowns
Plug 'tpope/vim-surround'

" make brackets rainbow colors
Plug 'frazrepo/vim-rainbow'
" enable globally
let g:rainbow_active = 1

" support Python development using Conda
Plug 'cjrh/vim-conda'

" nvim-R
Plug 'jalvesaq/Nvim-R'

" Run interactive programs (bash, python, etc) inside a vim buffer
Plug 'ying17zi/vim-conque'

" airline powerbar
Plug 'vim-airline/vim-airline'

" automatically display all buffers
let g:airline#extensions#tabline#enabled = 1

"git interface
Plug 'tpope/vim-fugitive'

"filesystem
Plug 'scrooloose/nerdtree'

" filepath finder 
Plug 'ctrlpvim/ctrlp.vim' 

" tab completion
Plug 'ervandew/supertab'

" Initialize plugin system
call plug#end()

filetype plugin indent on    " enables filetype detection
let g:SimpylFold_docstring_preview = 1

"custom keys
let mapleader=" "

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"------------Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start

"Folding based on indentation:
autocmd FileType python set foldmethod=indent

"use space to open folds
nnoremap <space> za
"----------Python PEP 8 stuff--------------

