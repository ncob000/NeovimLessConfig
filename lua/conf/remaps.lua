-- leader key <space> -- 
vim.g.mapleader = " "

-- Editor keymaps -- 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)           -- file out
vim.keymap.set("n", "<leader>s", vim.cmd.w)      -- save file
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("v", "<Down>", ":m '>+1<CR>gv=gv")       -- Move text down
vim.keymap.set("v", "<Up>", ":m '<-2<CR>gv=gv")         -- Move text up
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>c", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Telescope keymaps --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})           -- project files --  
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string( { search = vim.fn.input("Grep > ")} )      -- find files for his content --
end)
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>')

