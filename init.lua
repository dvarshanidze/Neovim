-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_command("command! E Explore")

vim.cmd([[
  set guicursor=n:Block,i:Block,v:Block,c:Block
]])

require("lualine").setup({
  options = {
    theme = "gruvbox", -- Use your preferred theme
    component_separators = { left = " ", right = " " }, -- Replace separators with spaces
    section_separators = { left = " ", right = " " }, -- Replace section separators with spaces
  },
  sections = {
    lualine_a = { "mode" }, -- This section typically doesn't use icons
    lualine_b = { "branch", "diff", "diagnostics" }, -- Replace or remove components using icons
    lualine_c = { "filename" }, -- Remove or replace components with icons
    lualine_x = {}, -- Ensure these components don't use icons
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
