return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]], -- Atalho para abrir/fechar: Control + Barra Invertida
        hide_numbers = true,
        shade_terminals = true,
        direction = "horizontal", -- Pode ser 'float', 'horizontal' ou 'vertical'
        shell = "zsh", -- Força o uso do seu Zsh com Starship
      })
    end,
  },
}
