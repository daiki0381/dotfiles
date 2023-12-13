local status, lspsaga = pcall(require, "lspsaga")
if not status then
	return
end

lspsaga.setup()

-- display variable/function information
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>")
-- go to function
vim.keymap.set("n", "gf", "<Cmd>Lspsaga goto_definition<CR>")
-- List variable/function
-- open keymap:'o'
vim.keymap.set("n", "fd", "<Cmd>Lspsaga finder tyd+ref+imp+def<CR>")
