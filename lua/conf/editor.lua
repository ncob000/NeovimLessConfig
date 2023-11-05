local eo            = vim.opt
local ew            = vim.wo
local null

ew.number           = true
eo.tabstop          = 4
eo.softtabstop      = 4
eo.shiftwidth       = 4
eo.expandtab        = true

eo.smartindent      = true
eo.swapfile         = false
eo.backup           = false
eo.undodir          = os.getenv("HOME") .. "/.vim/undodir"
eo.undofile         = true
eo.clipboard        = "unnamedplus"
eo.hlsearch         = false
eo.incsearch        = true

eo.scrolloff        = 10
eo.signcolumn       = "yes"

eo.updatetime       = 50
eo.colorcolumn      = "80"
eo.colorcolumn      = null
eo.isfname:append("@-@")
