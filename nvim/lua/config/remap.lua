vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>w', vim.cmd.write)
vim.keymap.set('n', '<leader>pq', vim.cmd.q)
vim.keymap.set('n', 'vv', vim.cmd.vs)
vim.keymap.set('n', 'ss', vim.cmd.split)
vim.keymap.set('n', '<leader>r', vim.cmd.redraw)
vim.keymap.set('n', '<leader><leader>', '<c-^>')
vim.keymap.set('n', '<ESC>', ':noh<return><esc>')

vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')




vim.keymap.set({ 'n', 'v' }, 'H', '^')
vim.keymap.set({ 'n', 'v' }, 'L', '$')


-- vim.keymap.set({'n', 'v'}, '<S-k>', '<C-u>zz')
vim.keymap.set({ 'n', 'v' }, '<S-k>', '<C-u>zz')
vim.keymap.set({ 'n', 'v' }, '<S-j>', '<C-d>zz')

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-t>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
 -- function Numbers()
 --   vim.cmd [[
 --       call search('\d\([^0-9\.]\|$\)', 'cW')
 --       normal v
 --       call search('\(^\|[^0-9\.]\d\)', 'becW')
 --     ]]
 -- end

 -- vim.keymap.set({ 'x' }, 'in', ':<C-u>lua Numbers()<CR>', { noremap = true })
 -- vim.keymap.set({ 'o' }, 'in', ':normal vin <CR>', { noremap = true })
--
vim.cmd [[
    function! Numbers()
      call search('\d\([^0-9\.]\|$\)', 'cW')
      normal v
      call search('\(^\|[^0-9\.]\d\)', 'becW')
    endfunction
    xnoremap in :<C-u>call Numbers()<CR>
    onoremap in :normal vin<CR>
]]
-- iiciniii=.54.
-- df 458px



vim.keymap.set('n', '<A-j>', ':m .+<CR>==', { noremap = true })

vim.keymap.set('n', '<A-k>', ':m .-<CR>==', { noremap = true })

vim.keymap.set('i', '<A-j>', '<ESC>:m .+1<CR>==gi', { noremap = true })
vim.keymap.set('i', '<A-k>', '<ESC>:m .-2<CR>==gi', { noremap = true })


vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true })
-- Auto indent pasted text
vim.keymap.set('n', 'p', 'p=`]<C-o>', {noremap = true})
vim.keymap.set('n', 'P', 'P=`]<C-o>', {noremap = true})

-- Move to the end of yanked text after yank and paste
vim.keymap.set('n', 'p', 'p`]', {noremap = true})
vim.keymap.set('v', 'p', 'p`]', {noremap = true})
vim.keymap.set('v', 'y', 'y`]', {noremap = true})
