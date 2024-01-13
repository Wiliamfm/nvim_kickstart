return {
	'Exafunction/codeium.vim',
	event = 'BufEnter',
	config = function()
		-- Change '<C-g>' here to any keycode you like.
		vim.keymap.set('i', '<leader><CR>', function() return vim.fn['codeium#Accept']() end,
			{ expr = true, silent = true })
		vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
			{ expr = true, silent = true })
		vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
			{ expr = true, silent = true })
		vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end,
			{ expr = true, silent = true })
		vim.g.codeium_no_map_tab = 1
	end
}
