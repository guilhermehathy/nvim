local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

opt.encoding = 'UTF-8'
cmd([[let g:mapleader = "\<Space>"]])


-- Prettier format on save
cmd([[command! -nargs=0 Prettier :CocCommand prettier.formatFile]])

-- Editor
opt.number = true
opt.relativenumber = true
opt.smartcase = true
opt.incsearch = true
opt.ignorecase = true
opt.wildmenu = true
opt.title = true
opt.confirm = true
opt.cursorline = true
opt.clipboard = 'unnamedplus'
opt.go = 'a'
cmd([[set scrolloff=10]])


-- Theme
opt.termguicolors = true
cmd([[let ayucolor="light"]])
cmd([[colorscheme ayu]])
g.t_Co = 256

-- Ident Line
g.indentLine_char = ''
g.indentLine_first_char = ''
g.indentLine_showFirstIndentLevel = 1
g.indentLine_setColors = 0

-- Autocomplete
g["deoplete#enable_at_startup"] = 1
g.neoformat_basic_format_align = 1
g.neoformat_basic_format_align = 1
g.neoformat_basic_format_trim = 1

-- Airlines
g.airline_powerline_fonts = 1
g["airline#extensions#tabline#enabled"] = 1
g["airline#extensions#tabline#show_buffers"] = 1
g["airline#extensions#tabline#switch_buffers_and_tabs"] = 1
g["airline#extensions#tabline#tab_nr_type"] = 1

-- Close Tags
g.closetag_filetypes = 'html,xhtml,phtml,javascript'
g.closetag_enable_react_fragment = 1

-- Markdown preview
g.mkdp_filetypes ={'markdown', 'pandoc'}
