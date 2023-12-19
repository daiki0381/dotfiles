local status, telescope = pcall(require, "telescope")
if not status then
	return
end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		mappings = {
			n = {
				["<C-c>"] = actions.close,
			},
		},
	},
})

vim.keymap.set("n", ";f", function()
	builtin.find_files()
end)

vim.keymap.set("n", ";t", function()
	builtin.live_grep()
end)

vim.keymap.set("n", ";g", function()
	builtin.git_status()
end)
