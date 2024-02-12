vim.g.mapleader = " "

vim.keymap.set("n", "<F2>", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.write)

vim.keymap.set("n", "<F3>", ":TagbarOpenAutoClose<CR>")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- move selected block around with automatic indenting
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- source currently opened file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)



