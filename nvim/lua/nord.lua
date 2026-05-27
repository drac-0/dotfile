return {
  "shaunsingh/nord.nvim",
  lazy = false,        -- load immediately
  priority = 1000,     -- load before other UI plugins
  config = function()
    vim.g.nord_contrast = true
    vim.g.nord_borders = false
    vim.g.nord_disable_background = false
    vim.g.nord_italic = false
    vim.g.nord_uniform_diff_background = true
    vim.g.nord_bold = false

    require("nord").set()
  end,
}

