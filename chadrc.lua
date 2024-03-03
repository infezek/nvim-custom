---@type ChadrcConfig
local M = {}

M.ui = { theme = 'ayu_dark' }

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

vim.opt.relativenumber = true
vim.opt.number = true

vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_quit_on_open = 1

return M
