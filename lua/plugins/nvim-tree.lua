return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort_by = "case_sensitive",
			view = {
				width = 40,
				side = "left",
				preserve_window_proportions = true,
			},
			renderer = {
				group_empty = true,
				highlight_git = true,
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
				},
			},
			filters = {
				dotfiles = false,
				custom = { "^.git$" },
			},
			git = {
				enable = true,
				ignore = false,
			},
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
		})
	end,
}
