vim.g.mapleader = " "
vim.o.updatetime = 50
vim.cmd("colorscheme habamax")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.undofile = true

vim.opt.pumheight = 10
vim.opt.pumwidth = 35
vim.opt.hlsearch = false
vim.opt.termguicolors = true
vim.opt.fillchars:append({ eob = " " })

vim.opt.listchars = {
		tab = "➜ ",
		space = "∙",
}
