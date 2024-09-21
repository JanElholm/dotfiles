-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set('n', '<leader>n', '<cmd>bn<cr>')
vim.keymap.set('n', '<leader>p', '<cmd>bp<cr>')
vim.keymap.set('n', '<leader>x', '<cmd>bd<cr>')

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
