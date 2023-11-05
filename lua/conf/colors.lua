vim.opt.termguicolors = true

function Colors(colorscheme, background)
	vim.o.background = background
	org = 'colorscheme theme'
	new = string.gsub(org, 'theme', colorscheme)
	vim.cmd(new)
end;

Colors('zenbones', 'dark')
