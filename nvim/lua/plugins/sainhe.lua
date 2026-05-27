-- plugins.lua or your plugin setup file
return {
  {
    "sainnhe/gruvbox-material",       -- install the theme
    lazy = false,                     -- load immediately
    priority = 1000,                  -- load before other plugins
    config = function()
      -- set options *before* applying the colorscheme
      vim.opt.termguicolors = true    -- enable truecolor
      vim.o.background = "dark"       -- or "light"

      -- optional theme configuration via globals
      vim.g.gruvbox_material_background = "medium"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_better_performance = 1

      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
