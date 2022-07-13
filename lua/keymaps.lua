----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<C-s>', ':w<CR>')
map('i', '<C-s>', '<C-c>:w<CR>')

-- Esc to jj
map('i', 'jj', '<Esc>')

-- Desativar setas
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Comentar o codigo
map('', '<C-c>', '<plug>NERDCommenterToggle')

-- Window
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Terminal
map('n', '<C-t>', ':FloatermToggle<Cr>')
map('t', '<C-t>', '<C-\\><C-n>:FloatermToggle<Cr>')

-- Go Definition
map('n', 'gd', ':LspDefinition')

-- Buffers
map('n', '<C-b>a', ':Buffers<Cr>')
map('n', '<C-b>n', ':bnext<CR>')
map('n', '<C-b>p', ':bprevious<CR>')
map('n', '<C-b>k', ':bdelete<CR>')

-- Files
map('n', '<C-p>', ':Files<Cr>')

--Easy motion e mover rapido
map('n', '<leader>s', '<Plug>(easymotion-s2)')
map('n', '<C-j>', '10<C-e>')
map('n', '<C-k>', '10<C-y>')

--Tree
map('n', '<C-n>', ':NvimTreeFindFile<Cr>')
map('n', '<C-n>t', ':NvimTreeToggle<Cr>')
