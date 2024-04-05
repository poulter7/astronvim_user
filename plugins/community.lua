return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", enabled=true},
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.note-taking.neorg" },
  { import = "astrocommunity.project.projectmgr-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.utility.mason-tool-installer-nvim"},
  {
      "smoka7/hop.nvim",
      opts = {},
      keys = {
        {
          "f",
          function() require("hop").hint_words() end,
          mode = { "n" },
          desc = "Hop hint words",
        },
        {
          "<S-f>",
          function() require("hop").hint_lines() end,
          mode = { "n" },
          desc = "Hop hint lines",
        },
        {
          "f",
          function() require("hop").hint_words { extend_visual = true } end,
          mode = { "v" },
          desc = "Hop hint words",
        },
        {
          "<S-f>",
          function() require("hop").hint_lines { extend_visual = true } end,
          mode = { "v" },
          desc = "Hop hint lines",
        },
      },
    },
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-17",
                path = "/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home/",
              },
              {
                name = "JavaSE-21",
                path = "/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home/",
              }
            },
          },
        },
      },
    },
  },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.toml" },
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = { enabled = true, auto_trigger = true, keymap = {accept = "<C-l>"}},
      panel = { enabled = false}
    }
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function(plugin, opts)
      -- run default AstroNvim nvim-dap-ui configuration function
      require("plugins.configs.nvim-dap-ui")(plugin, opts)
  
      -- disable dap events that are created
      local dap = require("dap")
      
      -- dap.listeners.after.event_initialized["dapui_config"] = nil
      dap.listeners.before.event_terminated["dapui_config"] = nil
      dap.listeners.before.event_exited["dapui_config"] = nil
    end,
  }
}
