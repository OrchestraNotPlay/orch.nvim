local gh = function(x) return "https://github.com/" .. x end

vim.pack.add({
	gh('nvim-telescope/telescope.nvim'),
	gh('nvim-lua/plenary.nvim'),
	gh('nvim-mini/mini.hues'),
	gh('nvim-mini/mini.pairs'),
  gh('nvim-mini/mini.surround'),
  gh('nvim-mini/mini.tabline'),
  gh('neovim/nvim-lspconfig'),
  gh('mason-org/mason.nvim'),
	{ src = gh('nvim-treesitter/nvim-treesitter'), version = 'main'},
	gh('hrsh7th/nvim-cmp'),
	gh('saghen/blink.lib'),
	gh('saghen/blink.cmp'),
  { src = gh('rose-pine/neovim'), name = 'rose-pine'},
})
