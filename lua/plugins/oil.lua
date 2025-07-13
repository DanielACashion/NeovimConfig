return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
	require("oil").setup({
		default_file_explore = true,
		keymaps = {
			["<C-c>"] = false,
			["C-h"] = false,
			["<M-h>"] = "actions.select_split",
			["q"] = "actions.close",
		},
		delete_to_trash = true,
		view_options = {
			show_hidden = true,
		},
		skip_confirmation_for_simple_edits = true,
	})

	vim.keymap.set("n", "<leader>of", "<CMD>Oil<CR>", { desc = "Opens Oil"})
	vim.keymap.set("n", "<leader>otf", require("oil").toggle_float,{ desc = "Toggles Floating Oil"})
  end
}
