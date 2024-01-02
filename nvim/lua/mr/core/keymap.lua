vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", vim.cmd.write)
vim.keymap.set("n", "<leader>aw", ":wa<CR>")
vim.keymap.set("n", "<leader>qq", vim.cmd.q)
vim.keymap.set("n", "<leader>qa", ":qa!<CR>")
vim.cmd([[
  command! BufCurOnly execute '%bdelete|edit#|bdelete#'
  nnoremap <leader>qb :BufCurOnly<CR>
]])

vim.cmd([[
    function! Numbers()
      call search('\d\([^0-9\.]\|$\)', 'cW')
      normal v
      call search('\(^\|[^0-9\.]\d\)', 'becW')
    endfunction
    xnoremap in :<C-u>call Numbers()<CR>
    onoremap in :normal vin<CR>
]])

-- replace select text !!!!
vim.cmd([[
  vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
]])
-- iicin

vim.cmd([[
  " Use one of the following to define the camel characters.
" Stop on capital letters.
let g:camelchar = "A-Z"
" Also stop on numbers.
let g:camelchar = "A-Z0-9"
" Include '.' for class member, ',' for separator, ';' end-statement,
" and <[< bracket starts and "'` quotes.
" let g:camelchar = "A-Z0-9.,;:{([`'\""
" nnoremap <silent><leader>b :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
" nnoremap <silent><leader>B :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
" inoremap <silent><C-Left> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
" inoremap <silent><C-Right> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
" vnoremap <silent><C-Left> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
" vnoremap <silent><C-Right> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o
" ]])
-- to next capi letter
vim.keymap.set("n", "<leader>b", "/\\u<CR>:nohlsearch<CR>")

vim.keymap.set("n", "<leader><leader>", "<c-^>")
vim.keymap.set("n", "<ESC>", ":noh<return><esc>")
-- Close current buffer
vim.keymap.set("n", "<leader>bc", ":bc<CR>")
-- Close all buffer, but not this
vim.keymap.set("n", "<leader>ba", ":%bd|e#<CR>")

-- Rename word in buffer
vim.cmd([[


nnoremap <leader>lw *<c-o>cgn
" nnoremap c# #<C-o>cgn
]])

-- QuickFix list

vim.keymap.set("n", "<leader>j", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>cprev<CR>zz")
-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree float reveal<CR>")
vim.keymap.set("n", "<leader>E", ":Neotree right reveal<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>l", "<C-w>L")
vim.keymap.set("n", "<leader>h", "<C-w>H")
vim.keymap.set({ "n", "v" }, "<S-k>", "<C-u>zz")
vim.keymap.set({ "n", "v" }, "<S-j>", "<C-d>zz")

vim.keymap.set({ "n", "v" }, "H", "^")
vim.keymap.set({ "n", "v" }, "L", "$")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")

-- Splits
vim.keymap.set("n", "vv", vim.cmd.vs)
vim.keymap.set("n", "ss", vim.cmd.split)
-- vim.keymap.set("n", "VV", ":split<CR>")

-- Other
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>X", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>s", ":BufferLineSortByTabs<CR>")
vim.keymap.set("i", "jj", "<Esc>")
-- vim.keymap.set("n", "<leader>H", ":nohlsearch<CR>")

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")

-- Terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical size=40<CR>")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>x", [["+x]])
vim.keymap.set("n", "<leader>X", [["+X]])
-- Tabs
