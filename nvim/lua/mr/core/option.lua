-- diasbled error comment module
vim.g.skip_ts_context_commentstring_module = true
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.laststatus = 3

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.wb = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.spelllang = "en"
vim.opt.updatetime = 25

vim.opt.colorcolumn = "80"

vim.opt.backspace = "indent,eol,start"
vim.opt.ruler = true
-- Don't show extra info at the end of command line
vim.opt.showcmd = true
-- Better display for messages
vim.opt.cmdheight = 1

vim.opt.lazyredraw = true

-- " ignore annoying swapfile messages
-- local shortmess = vim.opt.shortmess
vim.opt.shortmess:append("A")
-- " no splash screen
-- vim.opt.shortmess +=I
vim.opt.shortmess:append("I")
-- " file-read message overwrites previous
-- vim.opt.shortmess +=O
vim.opt.shortmess:append("O")
-- " truncate non-file messages in middle
-- vim.opt.shortmess +=T
vim.opt.shortmess:append("T")
-- " don't echo "[w]"/"[written]" when writing
-- vim.opt.shortmess +=W
vim.opt.shortmess:append("W")
-- " use abbreviations in messages eg. `[RO]` instead of `[readonly]`
-- vim.opt.shortmess +=a
vim.opt.shortmess:append("a")
-- " don't give |ins-completion-menu| messages.
-- " set shortmess+=c
-- " overwrite file-written messages
-- vim.opt.shortmess +=o
vim.opt.shortmess:append("o")
-- " truncate file messages at start
-- vim.opt.shortmess +=t
vim.opt.shortmess:append("t")
-- " always show signcolumns
vim.opt.signcolumn = "yes"
-- " update vim after file update from outside
vim.opt.autoread = true

vim.opt.splitbelow = true
vim.opt.splitright = true

-- " Ingore case in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.linebreak = true
-- " Show line breaks
-- " set showbreak=↳
vim.opt.showbreak = "↳ "

-- " Automatically :write before running commands
vim.opt.autowrite = true
-- " https://github.com/vim/vim/blob/master/runtime/doc/russian.txt
-- " Enable hotkeys for Russian layout
-- vim.cmd[[ set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz]]
-- vim.opt.keymap = "russian-jcukenwin"
-- vim.opt.iminsert=0 -- Чтобы при старте ввод был на английском, а не русском (start > i)
-- vim.opt.imsearch=0 -- Чтобы при старте поиск был на английском, а не русском (start > /)
-- " Дополнительно можно добавить:
-- inoremap <C-l> <C-^> " Чтобы вместо Ctrl-^ нажимать Ctrl-L
-- vim.cmd[[highlight lCursor guifg=NONE guibg=Cyan " Смена цвета курсора]]
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0

-- " Jump to first non-blank character
vim.opt.startofline = false
vim.opt.showmatch = true
vim.opt.showmode = false
vim.opt.conceallevel = 0

-- " Set gui cursor
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50"

-- " This makes vim act like all other editors, buffers can
-- " exist in the background without being in a window.
vim.opt.hidden = true
-- " Add the g flag to search/replace by default
vim.opt.gdefault = true

-- " Set faster redrawing
vim.opt.ttyfast = true

-- vim.opt.shell = '$SHELL'

-- " Vimdiff should always be vertical
vim.opt.diffopt:append("vertical")

-- " enable syntax highlight
vim.opt.syntax = "on"
vim.opt.cursorline = true
-- set iskeyword-=_
-- vim.opt.iskeyword:append('_')
vim.opt.iskeyword:remove("_")
vim.opt.iskeyword:remove("-")

-- vim.g.vim_json_conceallevel=0
-- vim.g.vim_json_syntax_conceal=0
-- vim.g.indentLine_setConceal=0
vim.cmd([[let g:vim_json_syntax_conceal = 1]])
