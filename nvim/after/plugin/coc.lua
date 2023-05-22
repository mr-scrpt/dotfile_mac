vim.g.coc_global_extensions = {

  'coc-snippets',
  'coc-tag',
  'coc-css',
  'coc-htmldjango',
  'coc-html',
  'coc-json',
  'coc-prettier',
  'coc-vimlsp',
  'coc-pairs',
  'coc-eslint',
  'coc-tsserver',
  'coc-emmet',
  'coc-stylelintplus',
  'coc-stylelint'
}

vim.cmd(" let g:coc_user_config = { 'suggest.enablePreview': v:true,  'prettier.disableSuccessMessage': v:true, 'suggest.maxPreviewWidth': 100, 'diagnostic.checkCurrentLine': v:true, 'diagnostic.maxWindowHeight': 20, 'diagnostic.errorSign': '✖', 'diagnostic.warningSign': '⚠', 'diagnostic.infoSign': '●', 'diagnostic.hintSign': '○'}")
vim.g.coc_node_path = '~/.nvm/versions/node/v16.19.1/bin/node'



vim.keymap.set('i', '<C-s>', 'coc#refresh()', { expr = true})
vim.keymap.set('i', '<CR>', 'coc#pum#confirm()', { expr = true})
vim.keymap.set(
    'i',
    '<CR>',
    function()
        if vim.fn['coc#pum#visible']() == 1 then
            -- coc Pop Up Menu (pum) is visible, confirm selection
           return vim.fn['coc#pum#confirm']()
        else
            -- coco Pop Up Menu is not open, make no change to <CR>
            return "<CR>"
        end
    end,
    { expr = true }
);
vim.cmd [[
" Applying codeAction to the selected region.
" Example: `<leader>aw` for current word
xmap <leader>ai  <Plug>(coc-codeaction-selected)
nmap <leader>ai  <Plug>(coc-codeaction-selected)
]]
