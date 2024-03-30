return {
      {
          "neovim/nvim-lspconfig",
          dependencies = {
              {
                  "SmiteshP/nvim-navbuddy",
                  dependencies = {
                      "SmiteshP/nvim-navic",
                      "MunifTanjim/nui.nvim"
                  },
                  opts = { lsp = { auto_attach = true } }
              }
          },
          -- your lsp config or other stuff
      },
      {
        "andrewferrier/wrapping.nvim",
        config = function()
            require("wrapping").setup()
        end
    },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
