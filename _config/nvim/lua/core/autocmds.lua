-- uncomment this if you want to open nvim with a dir
-- vim.cmd [[ autocmd BufEnter * if &buftype != "terminal" | lcd %:p:h | endif ]]

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
-- vim.cmd[[ au InsertEnter * set norelativenumber ]]
-- vim.cmd[[ au InsertLeave * set relativenumber ]]

-- Don't show any numbers inside terminals
vim.cmd [[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]]


-- Don't show status line on certain windows
-- vim.cmd [[ autocmd BufEnter,BufRead,BufWinEnter,FileType,WinEnter * lua require("core.utils").hide_statusline() ]]

-- Open a file from its last left off position
-- vim.cmd [[ au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]
-- File extension specific tabbing

-- vim.cmd [[ autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]

vim.cmd [[ au BufWinEnter *.html setl expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]
vim.cmd [[ au BufWinEnter *.json setl expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]
vim.cmd [[ au BufWinEnter *.jsx  setl expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]
vim.cmd [[ au BufWinEnter *.tsx  setl expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]
