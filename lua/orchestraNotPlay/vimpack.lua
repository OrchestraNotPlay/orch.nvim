local gh = function(x) return "https://github.com/" .. x end

vim.pack.add({
	gh('nvim-telescope/telescope.nvim'),
	gh('nvim-lua/plenary.nvim'),
	gh('nvim-mini/mini.hues'),
	{ src = gh('nvim-treesitter/nvim-treesitter'), version = 'main'},
	gh('theprimeagen/harpoon'),
})
