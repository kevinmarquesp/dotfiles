call plug#begin("~/.config/nvim/plugged")

" --- Style and aparence
    Plug 'arcticicestudio/nord-vim'
    Plug 'ryanoasis/vim-devicons'

    Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

" --- To make my work easier
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}

    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'

    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'honza/vim-snippets'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'

" --- Languagens
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-commentary'

    Plug 'mattn/emmet-vim'
    Plug 'jparise/vim-graphql'
    Plug 'yuezk/vim-js'
        Plug 'leafgarland/typescript-vim'
            Plug 'peitalin/vim-jsx-typescript'
        Plug 'maxmellon/vim-jsx-pretty'
        Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()





" THEME AND STYLE: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" --- Nordic Theme
    colorscheme nord
        let g:nord_bold = 1
        let g:nord_italic = 1


" --- Vim Airline
    let g:airline_powerline_fonts = 1

        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#formatter = 'unique_tail'

        let g:airline#extensions#tabline#left_sep = ''
            let g:airline_left_sep = ''
            let g:airline_right_sep = ''

        let g:airline#extensions#tabline#left_alt_sep = ''
            let g:airline_left_alt_sep = ''
            let g:airline_right_alt_sep = ''

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





" NERDTREE: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" " 1) Close the tab if NERDTree is the only window remaining in it.
" " 2) Exit Vim if NERDTree is the only window remaining in the only tab.
" " 3) Open the existing NERDTree on each new tab.

"     autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"     autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"     autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" " Change arrow indicators to folder icon
"     autocmd BufWinEnter * silent NERDTreeMirror
"         let g:NERDTreeDirArrowExpandable = ' '
"         let g:NERDTreeDirArrowCollapsible = ' '
"         let NERDTreeQuitOnOpen=1



" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





" COC VIM: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" --- Coc Plugins
    let g:coc_global_extensions = [
        \ 'coc-html',
        \ 'coc-css',
        \ 'coc-tsserver',
        \ 'coc-python',
        \ 'coc-clangd',
        \ 'coc-json', 
        \ 'coc-snippets',
        \ 'coc-eslint',
        \ 'coc-prettier'
    \ ]


" --- coc-snippets
    imap <C-j>, <Plug>(coc-snippets-expand-jump)
        let g:coc_snippet_next = '<C-z>'
        let g:coc_snippet_prev = '<C-x>'

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





" EMMET VIM: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

autocmd FileType html,css,js EmmetInstall

    let g:user_emmet_install_global = 1
    let g:user_emmet_leader_key=','

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





" FUZZY FILE FINDER: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    command! -bang -nargs=? -complete=dir Files
        \ call fzf#vim#files(<q-args>, {'options': ['--color=bg+:-1,pointer:green,fg+:green,hl:yellow,border:blue', '--padding=5%', '--prompt=SEARCH: ', '--pointer=**', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

    command! -bang -nargs=? -complete=dir Buffers
        \ call fzf#vim#buffers(<q-args>, {'options': ['--color=bg+:-1,pointer:green,fg+:green,hl:yellow,border:blue', '--padding=5%', '--prompt=SEARCH: ', '--pointer=**', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

    command! -bar -bang Marks
        \ call fzf#vim#marks({'options': ['--color=bg+:-1,pointer:green,fg+:green,hl:yellow,border:blue', '--padding=5%', '--prompt=SEARCH: ', '--pointer=**', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

    command! -bar -bang -range=%  Commits
        \ let b:fzf_winview = winsaveview() | <line1>,<line2>call fzf#vim#commits(fzf#vim#with_preview({'options': ['--color=bg+:-1,pointer:green,fg+:green,hl:yellow,border:blue', '--padding=5%', '--prompt=SEARCH: ', '--pointer=**', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}'], 'placeholder': ''}), <bang>0)'


" fzf --border=sharp --margin 10% --padding 5% --info inline --prompt 'SEARCH: ' --pointer '**' --ansi --color 'bg+:-1,pointer:green,fg+:green,hl:yellow,border:green'

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





" LANGUAGES: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

let g:javascript_plugin_jsdoc = 1
    let g:vim_jsx_pretty_highlight_close_tag = 1
    let g:vim_jsx_pretty_colorful_config = 1

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


