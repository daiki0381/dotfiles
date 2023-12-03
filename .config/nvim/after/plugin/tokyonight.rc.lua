local status, tokyonight = pcall(require, "tokyonight")
if (not status) then return end

vim.cmd[[colorscheme tokyonight-moon]]

tokyonight.setup {}
