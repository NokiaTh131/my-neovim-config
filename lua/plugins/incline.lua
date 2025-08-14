return {
	{
		"b0o/incline.nvim",
		config = function()
			require("incline").setup({
				render = function(props)
					local mini_icons = require("mini.icons")
					local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
					if filename == "" then
						filename = "[No Name]"
					end
					local ft_icon, ft_color = mini_icons.get("file", filename)
					local modified = vim.bo[props.buf].modified
					return {
						" ",
						ft_icon and { ft_icon, " ", guibg = "none", group = ft_color } or "",
						" ",
						{ filename, gui = modified and "bold,italic" or "bold" },
					}
				end,
			})
		end,
		event = "VeryLazy",
	},
}
