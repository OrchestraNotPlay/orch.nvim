local gh = function(x) return "https://github.com/" .. x end

vim.pack.add({
	gh('nvim-telescope/telescope.nvim'),
	gh('nvim-lua/plenary.nvim'),
	gh('nvim-mini/mini.hues'),
	gh('nvim-mini/mini.pairs'),
    	gh('neovim/nvim-lspconfig'),
    	gh('mason-org/mason.nvim'),
	{ src = gh('nvim-treesitter/nvim-treesitter'), version = 'main'},
	gh('theprimeagen/harpoon'),
	gh('hrsh7th/nvim-cmp'),
	gh('saghen/blink.lib'),
	gh('saghen/blink.cmp'),
})
