local keymap = vim.keymap

keymap.set("i", "<C-j>", "<esc>")
keymap.set("v", "<C-j>", "<esc>")

keymap.set("n", "g[", ":vsplit<Return><C-w>w")
keymap.set("n", "g]", ":split<Return><C-w>w")
keymap.set("n", "gh", "<C-w>h")
keymap.set("n", "gj", "<C-w>j")
keymap.set("n", "gk", "<C-w>k")
keymap.set("n", "gl", "<C-w>l")
keymap.set("n", "rh", "<C-w><")
keymap.set("n", "rj", "<C-w>-")
keymap.set("n", "rk", "<C-w>+")
keymap.set("n", "rl", "<C-w>>")
keymap.set("n", "<C-e>", "<End>")
keymap.set("n", "<C-a>", "<Home>")

keymap.set("i", "<C-p>", "<Up>")
keymap.set("i", "<C-n>", "<Down>")
keymap.set("i", "<C-b>", "<Left>")
keymap.set("i", "<C-f>", "<Right>")
keymap.set("i", "<C-e>", "<End>")
keymap.set("i", "<C-a>", "<Home>")

keymap.set("v", "<C-e>", "<End>")
keymap.set("v", "<C-a>", "<Home>")
