vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex) --Call the netrw

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set('n', '<C-n>', vim.cmd.bprev)
vim.keymap.set('n', '<C-m>', vim.cmd.bnext)
vim.keymap.set('n', '<leader>bd', vim.cmd.bd)

vim.keymap.set("i", "<C-s>", function()
    vim.lsp.buf.format()
    vim.cmd.w()
    vim.cmd.stopinsert()
    end
)
