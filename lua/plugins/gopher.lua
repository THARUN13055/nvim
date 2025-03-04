return {
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "mfussenegger/nvim-dap",   -- (optional) only if you use `gopher.dap`
    },
    build = function()
      vim.cmd.GoInstallDeps()
    end,
    config = function()
      require("gopher").setup {
        commands = {
          go = "go",
          gomodifytags = "gomodifytags",
          gotests = "gotests",
          impl = "impl",
          iferr = "iferr",
          dlv = "dlv",
        },
        gotests = {
          template = "default",
          template_dir = nil,
          named = false,
        },
        gotag = {
          transform = "snakecase",
        },
      }
    end,
  },
}

