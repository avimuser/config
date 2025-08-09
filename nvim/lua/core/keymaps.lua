local opts = { noremap = true, silent = true }

vim.keymap.set("n", "-", vim.cmd.Ex, opts)

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
