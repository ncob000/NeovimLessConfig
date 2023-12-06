-- leader key <space> --
vim.g.mapleader = " "

-- Editor keymaps --
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- file out
vim.keymap.set("n", "<leader>s", vim.cmd.w) -- save file
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>SS", ":set spell <CR>")
vim.keymap.set("n", "<leader>NS", ":set nospell <CR>")
vim.keymap.set("v", "<Up>", ":m '<-2<CR>gv=gv") -- Move text up
vim.keymap.set("v", "<Down>", ":m '>+1<CR>gv=gv") -- Move text down
vim.keymap.set("n", "<leader>c", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Trouble keymaps --
vim.keymap.set("n", "<leader>tt", ":TroubleToggle <CR>")
vim.keymap.set("n", "<leader>tc", ":TroubleClose <CR>")
vim.keymap.set("n", "<leader>tr", ":TroubleRefresh <CR>")

-- toggleterm --
vim.keymap.set("n", "<leader>ot", ":ToggleTerm <CR>")

-- Telescope keymaps --
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {}) -- project files --
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") }) -- find files for his content --
end)
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")

-- Window manipulation --
vim.keymap.set("n", "<leader>sp", ":sp <CR>")
vim.keymap.set({ "n", "i", "v" }, "<Esc>w", ":WinShift <CR>")
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- Code runner --
vim.keymap.set("n", "<leader>rf", ":RunFile toggleterm <CR>")

-- Document code --
vim.keymap.set("n", "<leader>gd", ":DogeGenerate <CR>")

-- nvim tree --
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle <CR>")
