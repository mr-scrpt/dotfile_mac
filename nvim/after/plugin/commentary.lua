vim.cmd[[
augroup MyGroup | au!
autocmd FileType htmldjango setlocal commentstring={#\ %s\ #}
autocmd FileType fish setlocal commentstring=#\ %s
autocmd FileType php setlocal commentstring=#\ %s
augroup END
]]
