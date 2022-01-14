" BASIC SETUP: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" enter the current millenium
set nocompatible

" enable the syntax and plugins (for netrw)
syntax enable
filetype plugin on
colorscheme ron

" basic UI setup
set hidden confirm
set number relativenumber
set smartindent tabstop=4 shiftwidth=4 expandtab
set breakindent formatoptions=1 lbr





" FUZY FILE FIDING: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all maching files when we tab complete
set wildmenu





" SHORTCUTS: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
" Simple shortcuts
nnoremap <C-s> :write<CR>
inoremap <C-s> <Esc>:write<CR>
inoremap <C-l> <Esc>

" Navigate in visual lines
nnoremap j gj
nnoremap k gk


" LEADER KEYBOARD:
    let mapleader="\<space>"

    " Quit and navegate
    nnoremap <leader>q :quit<CR>
    nnoremap <leader>Q :exit<CR>

