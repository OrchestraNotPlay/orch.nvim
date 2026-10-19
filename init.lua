-- OPTIONS --
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
})

-- KEYBINDS --
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<C-n>", vim.cmd.bprev)
vim.keymap.set("n", "<C-m>", vim.cmd.bnext)
vim.keymap.set("n", "<C-M-b>", vim.cmd.bd)

vim.keymap.set("i", "<C-s>", function()
	vim.cmd.w()
	vim.cmd.stopinsert()
end)
vim.keymap.set("n", "<C-s>", function()
	vim.cmd.w()
end)

vim.keymap.set("n", "<leader>g", "<cmd>LazyGit<CR>")

-- VIMPACK --
local gh = function(x)
	return "https://github.com/" .. x
end

vim.pack.add({
	gh("scottmckendry/cyberdream.nvim"),
	gh("nvim-treesitter/nvim-treesitter"),
	gh("neovim/nvim-lspconfig"),
	gh("mason-org/mason.nvim"),
	gh("stevearc/conform.nvim"),
	gh("hrsh7th/nvim-cmp"),
	gh("saghen/blink.lib"),
	gh("saghen/blink.cmp"),
	gh("rafamadriz/friendly-snippets"),
	gh("windwp/nvim-autopairs"),
	gh("nvim-tree/nvim-web-devicons"),
	gh("akinsho/bufferline.nvim"),
	gh("kdheepak/lazygit.nvim"),
})

-- PLUGIN SETUP --
vim.cmd("colorscheme cyberdream")

-- Treesitter --
require("nvim-treesitter.config").setup({
	ensure_installed = { "c", "cpp", "lua", "rust", "glsl" },
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})

-- Mason --
require("mason").setup()

-- LSP --
vim.lsp.enable({ "clangd", "rust-analyzer", "lua_ls", "glsl_analyzer" })

-- Conform --
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
		cpp = { "clang-format" },
		glsl = { "clang-format" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

-- Blink --
local cmp = require("blink.cmp")
cmp.build():pwait()
cmp.setup()

-- nvim-autopairs --
require("nvim-autopairs").setup()

-- bufferline --
require("bufferline").setup()
