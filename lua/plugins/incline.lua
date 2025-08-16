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
					local has_errors = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity.ERROR }) > 0
					local modified = vim.bo[props.buf].modified
					local function get_git_diff()
						local icons = { removed = "", changed = "", added = "" }
						icons["changed"] = icons.modified
						local signs = vim.b[props.buf].gitsigns_status_dict
						local labels = {}
						if signs == nil then
							return labels
						end
						for name, icon in pairs(icons) do
							if tonumber(signs[name]) and signs[name] > 0 then
								table.insert(labels, { icon .. " ", signs[name] .. " ", group = "Diff" .. name })
							end
						end
						return labels
					end
					local function get_diagnostic_label()
						local icons = { error = "󰅚", warn = "󰀪", info = "󰌶", hint = "󰋽" }
						local label = {}

						for severity, icon in pairs(icons) do
							local n = #vim.diagnostic.get(
								props.buf,
								{ severity = vim.diagnostic.severity[string.upper(severity)] }
							)
							if n > 0 then
								table.insert(label, { icon .. " ", n .. " ", group = "DiagnosticSign" .. severity })
							end
						end
						return label
					end
					return {
						" ",
						get_git_diff(),
						" ",
						get_diagnostic_label(),
						" ",
						ft_icon and { ft_icon, " ", group = ft_color } or "",
						" ",
						{ filename, gui = modified and "bold,italic" or "bold" },
						guifg = has_errors and "#e06c75" or "none",
					}
				end,
			})
		end,
		event = "VeryLazy",
	},
}
