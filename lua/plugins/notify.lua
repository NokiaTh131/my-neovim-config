return {
	"rcarriga/nvim-notify",
	config = function()
		local nvim_notify = require("notify")

		nvim_notify.setup({
			background_colour = "#000000",
			merge_duplicates = true,
		})

		vim.notify = function(msg, level, opts)
			opts = opts or {}

			if opts.title == "lazy.nvim" then
				return
			end

			nvim_notify(msg, level, opts)
		end
	end,
}
