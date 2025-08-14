return {
	{
		"b0o/incline.nvim",
		config = function()
			require("incline").setup({
				render = function(props)
					local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
					local ft_icon, ft_color = require("mini.icons").get("filetype", vim.bo[props.buf].filetype)
					local modified = vim.bo[props.buf].modified

					return {
						ft_icon and { " ", ft_icon, " ", guifg = ft_color } or "",
						" ",
						{ filename, gui = modified and "bold,italic" or "bold" },
					}
				end,
				window = {
					padding = 1,
					margin = { horizontal = 1 },
				},
			})
		end,
		event = "VeryLazy",
	},
}
