return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")

    -- 🔹 shared capabilities (DO NOT duplicate this)
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    -- C / C++
    lspconfig.clangd.setup({
      capabilities = capabilities,
    })

    -- Python
    lspconfig.pyright.setup({
      capabilities = capabilities,
    })
  end,
}

