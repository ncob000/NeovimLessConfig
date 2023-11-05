local eo = vim.opt

eo.nu = true

eo.tabstop = 4
eo.softtabstop = 4
eo.shiftwidth = 4
eo.expandtab = true

eo.smartindent = true
eo.swapfile = false
eo.backup = false
eo.undodir = os.getenv("HOME") .. "/.vim/undodir"
eo.undofile = true
eo.clipboard = "unnamedplus"
eo.hlsearch = false
eo.incsearch = true

eo.scrolloff = 10
eo.signcolumn = "yes"
eo.isfname:append("@-@")

eo.updatetime = 50
eo.colorcolumn = "80"
