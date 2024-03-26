-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>n", "<cmd>bn<cr>")
vim.keymap.set("n", "<leader>p", "<cmd>bp<cr>")
vim.keymap.set("n", "<leader>x", "<cmd>bd<cr>")

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>cf", function()
  require("conform").format({
    lsp_format = "fallback",
  })
end, { desc = "Format with conform" })

vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Show line diagnostics" })

vim.keymap.set("n", "gn", vim.diagnostic.goto_next)
vim.keymap.set("n", "gp", vim.diagnostic.goto_prev)
vim.keymap.set("n", "gt", ":TodoFzfLua<cr>")
vim.keymap.set("n", "gj", ":%!jq<cr>")
