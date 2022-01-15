" BASIC SETUP: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
set nocompatible

set hidden confirm
set number
set mouse=a

set title
set timeoutlen=700
colorscheme ron

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





" SHORTCUTS: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

let mapleader="\<space>"

" NORMAL MODE

" --- Save and quit

    nnoremap <C-s> :write<CR>
        inoremap <C-s> <Esc>:write<CR>

    nnoremap <leader>Q :q!<CR>:q!<CR>:q!<CR>:q!<CR>:q!<CR>:q!<CR>:q!<CR>
        nnoremap <leader>q :quit<CR>
        nnoremap ZZ :wq!<CR>

    " Navigate in visual lines mode
    nnoremap j gj
    nnoremap k gk

    " Load the changes in nvim/ folder, when nvim is open
    nnoremap <leader>R :source ~/.vimrc<CR>

    " Save an section
    nnoremap <leader>M :mksession! ~/.dotfiles/vim_secs/


" --- Buffers config

    " Use <Tab> key to swap between tabs
    nnoremap <Tab> :tabnext<CR>
        nnoremap <S-Tab> :tabprevious<CR>

    " Adjust split sizes with arrow keys
    nnoremap <silent> <C-Left> :vertical resize +1<CR>
    nnoremap <silent> <C-Right> :vertical resize -1<CR>
        nnoremap <silent> <S-Down> :resize -1<CR>
        nnoremap <silent> <S-Up> :resize +1<CR>

    " Open a terminal window
    nnoremap <leader>tt :tabnew<CR>:terminal bash<CR>:set nonu nornu<CR>i
        nnoremap <leader>ts :vsp \| terminal bash<CR>:set nonu nornu<CR>i
        nnoremap <leader>ti :sp \| terminal bash<CR>:set nonu nornu<CR>i

    " Buffers control
    nnoremap <leader><Left> :bp<CR>
    nnoremap <leader><Right> :bn<CR>
    nnoremap <leader><Up> :ls<CR>
    nnoremap <leader><Down> :bd<CR>



" --- Text editor config

    " Add a semicolon in end of the line
    nnoremap <leader>; A;<Esc>

    " Chage focus panel
    nnoremap <leader>h :wincmd h<CR>
    nnoremap <leader>j :wincmd j<CR>
    nnoremap <leader>k :wincmd k<CR>
    nnoremap <leader>l :wincmd l<CR>

    " Create tabs and split windowz
    nnoremap <leader>t :tabnew<CR>
    nnoremap <leader>i :sp<CR>
    nnoremap <leader>s :vsp<CR>

    " Big text decoration font
    nnoremap <leader>S  :.!toilet
        nnoremap <leader>sa :.!toilet -f term -F border<CR>
        nnoremap <leader>sb :.!toilet -f pagga<CR>
        nnoremap <leader>sc :.!toilet -f pagga -F border<CR>

    " FZF binds
    nnoremap <leader>P :find ./**/





" INSERT MODE

" --- Development

    " Exit from INSERT MODE and come back to NORMAL MODE
    inoremap <C-l> <Esc>

    " Undo and redo command
    inoremap <C-u> <Esc>:undo<CR>a
    inoremap <C-r> <Esc>:redo<CR>a

    " Auto tab betwen two HTML tags
    inoremap <C-k> <CR><Esc>ko

" --- Text behavior

    " Undo marks
    inoremap , ,<C-g>u
    inoremap . .<C-g>u
    inoremap ! !<C-g>u
    inoremap ? ?<C-g>u
    inoremap ( (<C-g>u
    inoremap ) )<C-g>u
    inoremap [ [<C-g>u
    inoremap ] ]<C-g>u
    inoremap { {<C-g>u
    inoremap } }<C-g>u





" VISUAL MODE

" Back to NORMAL MODE
vnoremap <C-l> <esc>

" Navigate in visual lines
vnoremap j gj
vnoremap k gk

" Vim comentary
vnoremap <CR> :Comment<CR>

" Move lines in the file
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv





" REPLACE MODE

snoremap <C-l> <esc>

