return {
	-- LSP Configuration & Plugins
	'neovim/nvim-lspconfig',
	lazy= false,
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		{
			'williamboman/mason.nvim',
			opts = {
				log_level = vim.log.levels.DEBUG
			}
		},
		'williamboman/mason-lspconfig.nvim',

		-- Useful status updates for LSP
		-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
		{ 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

		-- Additional lua configuration, makes nvim stuff amazing!
		'folke/neodev.nvim',
	},
}
