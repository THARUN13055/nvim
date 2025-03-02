-- lua/plugins/lualine.lua

return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = {
      "kyazdani42/nvim-web-devicons", -- Optional: for file icons
    },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'nightfly',
        },
        sections = {
          lualine_a = {
            {
              'branch',  -- Show the current Git branch
              icon = '',  -- Optional: Icon for the branch
            },
          },
          lualine_b = {
            {
              'filename',  -- Show the current file name
              path = 1,    -- Show the relative path
            },
          },
          lualine_c = {
            {
              'filetype',  -- Show the current file type
              icon_only = true,  -- Optional: Show only the icon for the file type
            },
          },
          lualine_x = {
            'encoding',  -- Show the file encoding
            'fileformat',  -- Show the file format (e.g., Unix, DOS)
          },
          lualine_y = {
            'progress',  -- Show the progress (line/total lines)
          },
          lualine_z = {
            'location',  -- Show the current line and column number
          },
        },
      }
    end,
  },
}
