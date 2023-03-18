-- vim.cmd('au BufRead,BufNewFile *.njk set filetype=hmldjango')
-- vim.cmd('au BufRead,BufNewFile *.njk set filetype=html')
-- vim.cmd('autocmd FileType html,htmldjango,css,scss EmmetInstall')
-- vim.cmd('au bufread,bufnewfile *.sass,*.scss set filetype=sass')
vim.cmd('au BufRead,BufNewFile *.njk set filetype=htmldjango')
vim.cmd('au BufRead,BufNewFile *.tpl set filetype=htmldjango')
vim.cmd('au BufRead,BufNewFile *.jade set filetype=pug')
-- " make indentation based on filetype
vim.cmd [[filetype plugin indent on]]
-- vim.cmd [[autocmd Filetype json let g:indentLine_setConceal = 0]]
vim.cmd [[autocmd Filetype json :IndentLinesDisable]]
-- vim.cmd [[autocmd Filetype json
--   \ let g:indentLine_setConceal = 0 |
--   \ let g:vim_json_syntax_conceal = 0]]
