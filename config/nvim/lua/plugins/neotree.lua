return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  opts = function(_, opts)
    -- Isso garante que estamos alterando a configuração existente
    -- em vez de criar uma nova instância
    opts.window = opts.window or {}
    opts.window.width = 25 -- Ajuste aqui para o tamanho desejado
  end,
}
