return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      -- Setup Telescope
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      -- Key mappings for Telescope
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

      -- Load the ui-select extension
      require("telescope").load_extension("ui-select")

      -- Autocommands for Telescope
      vim.api.nvim_create_augroup("TelescopeAutocommands", { clear = true })

      -- Example: Open Telescope find_files when entering a buffer
      vim.api.nvim_create_autocmd("BufEnter", {
        group = "TelescopeAutocommands",
        pattern = "*",
        callback = function()
          -- Uncomment the line below to automatically open find_files on buffer enter
          -- builtin.find_files()
        end,
      })

      -- Example: Print a message when leaving a buffer
      vim.api.nvim_create_autocmd("BufLeave", {
        group = "TelescopeAutocommands",
        pattern = "*",
        callback = function()
          print("Left a buffer!")
        end,
      })
    end,
  },
}
