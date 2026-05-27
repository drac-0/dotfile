return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
      },
      renderer = {
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
          },
        },
      },

      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        local function opts(desc)
          return {
            desc = "nvim-tree: " .. desc,
            buffer = bufnr,
            noremap = true,
            silent = true,
            nowait = true,
          }
        end

        -- 🔑 ENTER → open in NEW TAB
        vim.keymap.set("n", "<CR>", api.node.open.tab, opts("Open in new tab"))

        -- keep default mappings (EXCEPT <Enter>, which we override)
        api.config.mappings.default_on_attach(bufnr)
      end,
    })

    -- Toggle tree
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
  end,
}
