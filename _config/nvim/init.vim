source ~/.config/nvim/helpers/vim-plug.vim
source ~/.config/nvim/helpers/shortcuts.vim





" BASIC SETUP: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
set nocompatible
set encoding=UTF-8 termguicolors

set hidden confirm
set number cursorline
set inccommand=split
set mouse=a

set title
set timeoutlen=700

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





" Window splits
set splitbelow splitright

" Use 4 spaces tab in new files
set shiftwidth=4 tabstop=4 expandtab
set breakindent formatoptions=1 lbr

" Fuzzy file finder
set path+=**


" Use 2 spaces indent for some files
au BufWinEnter {*.html,*.json,*.jsx,*.tsx} setl shiftwidth=2 tabstop=2 expandtab

" Run MarkdownPreview on load markdown files
au BufWinEnter {*.md} MarkdownPreview


