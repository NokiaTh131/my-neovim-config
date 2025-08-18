vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc" },
	callback = function()
		vim.wo.spell = false
		vim.wo.conceallevel = 0
	end,
})

local function load_colorscheme()
	local data_path = vim.fn.stdpath("data")
	local colorscheme_file = data_path .. "/colorscheme.txt"

	if vim.fn.filereadable(colorscheme_file) == 1 then
		local saved_colorscheme = vim.fn.readfile(colorscheme_file)[1]
		if saved_colorscheme and saved_colorscheme ~= "" then
			pcall(vim.cmd.colorscheme, saved_colorscheme)
			return
		end
	end

	pcall(vim.cmd("colorscheme rose-pine-main"))
end

local function save_colorscheme()
	local data_path = vim.fn.stdpath("data")
	local colorscheme_file = data_path .. "/colorscheme.txt"
	local current_colorscheme = vim.g.colors_name
	if current_colorscheme then
		vim.fn.writefile({ current_colorscheme }, colorscheme_file)
	end
end

vim.api.nvim_create_autocmd("VimEnter", {
	callback = load_colorscheme,
})

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = save_colorscheme,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 30 })
	end,
})
