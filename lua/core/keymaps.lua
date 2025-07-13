local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('n', '<leader>cb', "ya{", { desc = "yanks, and deletes around matching {}"})
vim.keymap.set('n', '<leader>cp', "ya(", { desc = "yanks, and deletes around matching {}"})

vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v','>', '>gv', opts)
vim.keymap.set('n','>', '$', {desc = "shifts cursor to end of the line"})
vim.keymap.set('n','<', '_', {desc = "shifts cursor to the start of the line"})
vim.keymap.set('n','<leader>sf', ':source %<CR>', {desc = "sources the current file"})
vim.keymap.set('n','<leader>ex', ':Ex<CR>', {desc = "sources the current file"})
