-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Delete without yanking
vim.keymap.set({ "n", "v" }, "x", '"_x', { desc = "Delete without yank" })
vim.keymap.set({ "n", "v" }, "X", '"_X', { desc = "Delete without yank" })

vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without yank" })
vim.keymap.set({ "n", "v" }, "D", '"_D', { desc = "Delete line without yank" })

vim.keymap.set({ "n", "v" }, "c", '"_c', { desc = "Change without yank" })
vim.keymap.set("n", "C", '"_C', { desc = "Change to EOL without yank" })
