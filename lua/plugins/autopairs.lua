return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
        require('nvim-autopairs').setup({
            check_ts = true,  -- Enable treesitter integration
            fast_wrap = {
                map = '<M-e>',  -- Use Alt+e to wrap text
                chars = { '{', '[', '(', '"', "'" },
                pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
                offset = 0,  -- Offset from the character
                end_key = '$',  -- End key for wrapping
                keys = 'qwertyuiopzxcvbnmasdfghjkl',  -- Keys for wrapping
                check_comma = true,  -- Check for commas
                highlight = 'Search',  -- Highlight the wrapped text
            },
        })
    end,
}
