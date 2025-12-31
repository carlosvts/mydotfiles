-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Sair do modo terminal com Esc
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], { desc = "Sair do modo terminal" })

-- Navegação fácil entre janelas mesmo no terminal
vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Mover para janela da esquerda" })
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], { desc = "Mover para janela de baixo" })
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Mover para janela de cima" })
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Mover para janela da direita" })
