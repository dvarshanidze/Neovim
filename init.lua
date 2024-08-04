-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_command("command! E Explore")

vim.cmd([[
  set guicursor=n:Block,i:Block,v:Block,c:Block
]])
