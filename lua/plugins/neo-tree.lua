return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- Key mappings for Neo-tree
        vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", {})
        vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

        -- Neo-tree setup
        require('neo-tree').setup({
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,  -- Show hidden files (dotfiles)
                    hide_gitignore = false,  -- Show files ignored by .gitignore
                    hide_by_name = {
                        ".git",  -- Hide .git directories
                    },
                    -- You can also hide other specific files or directories
                    -- hide_by_pattern = { "node_modules", ".DS_Store" },
                },
                follow_current_file = {
                    enabled = true,  -- Automatically focus on the current file
                },
                use_libuv_file_watcher = true,  -- Use libuv for file watching
            },
        })
    end,
}
