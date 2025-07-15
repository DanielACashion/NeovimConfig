vim.opt.nu = true
vim.o.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.hlsearch = true

vim.opt.mouse = 'a'
vim.g.editorconfig = true
vim.o.showmode = false

vim.opt.scrolloff = 10
vim.o.cursorline = true
vim.o.timeoutlen = 300
vim.o.updatetime = 250

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.confirm = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
