-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")vim.api.nvim_create_autocmd("VimEnter", {
 
-- ~/.config/nvim/lua/config/autocmds.lua

-- Limpa comandos antigos para evitar conflitos
-- ~/.config/nvim/lua/config/autocmds.lua

-- Criamos o grupo de forma segura
local group_id = vim.api.nvim_create_augroup("UserLayout", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
  group = group_id,
  callback = function()
    vim.defer_fn(function()
      -- 1. Abre o terminal na direita
      vim.cmd("vsplit") 
      vim.cmd("wincmd l") 
      vim.cmd("terminal") 
      
      -- 2. Define a largura do terminal
      -- Ajuste o 50 para mais ou para menos para controlar o Explorer central
      vim.cmd("vertical resize 50") 
      
      -- 3. Volta para a janela da esquerda (Explorer)
      vim.cmd("wincmd h")
      
      -- 4. Limpa a duplicidade forçando o foco no diretório
      vim.cmd("edit .") 
    end, 50) -- Pequeno delay para garantir que o LazyVim já carregou os plugins
  end,
})
