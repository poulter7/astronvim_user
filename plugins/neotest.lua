return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python",
  },
  config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            dap = { justMyCode = false },
          }),
        },
      })
      vim.cmd [[
        map <leader>t :lua require("neotest").run.run()<CR>
        map <leader>T :lua require("neotest").run.run(vim.fn.expand("%"))<CR>
        map <Space>t :lua lua require("neotest").output_panel.open({ enter = true })
      ]]
    end
}
