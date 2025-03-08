vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- VS Code-like indentation: Ctrl + ] (indent) and Ctrl + [ (unindent)
vim.keymap.set('v', '<C-]>', '>gv', { noremap = true, silent = true })  -- Indent
vim.keymap.set('v', '<C-[>', '<gv', { noremap = true, silent = true })  -- Unindent

vim.api.nvim_set_keymap('n', '<leader>t', ':terminal<CR>', { noremap = true, silent = true })

-- Override the :cd command to prepend the global path
vim.cmd([[
command! -nargs=1 Cd execute 'cd /home/tharun/' . <q-args>
]])

-- Close the current window with unsaved changes (force quit)
vim.keymap.set('n', '<C-q>', ':q!<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ff", ":!gofmt -w %<CR><CR>")
vim.keymap.set("n", "<leader>pp", ":!prettier -w %<CR><CR>")
