local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")
local keymap = vim.keymap

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["<C-c>"] = actions.close
      },
    },
  },  
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = true,
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set("n", ";b", function()
  telescope.extensions.file_browser.file_browser()
end)

keymap.set('n', ';f', function()
  builtin.find_files()
end)

keymap.set('n', ';t', function()
  builtin.live_grep()
end)
