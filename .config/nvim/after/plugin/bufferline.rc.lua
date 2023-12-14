local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "neo-tree",
				text = "󰥨 File Explorer",
				text_align = "left",
				separator = true,
			},
		},
	},
})

function close_current_buffer()
	local current_buffer_id = vim.fn.bufnr("%")
	vim.schedule(function()
		vim.cmd("bd " .. current_buffer_id)
	end)
end

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<C-x>", close_current_buffer)
