local opts = { noremap = true, silent = true }
local remap = vim.api.nvim_set_keymap

remap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

remap("n", "<leader>e", ":Lex 30<cr>", opts)
-- Better window navigation
remap("n", "<C-h>", "<C-w>h", opts)
remap("n", "<C-j>", "<C-w>j", opts)
remap("n", "<C-k>", "<C-w>k", opts)
remap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
remap("n", "<C-Up>", ":resize -2<CR>", opts)
remap("n", "<C-Down>", ":resize +2<CR>", opts)
remap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
remap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
remap("n", "<S-l>", ":bnext<CR>", opts)
remap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
remap("n", "<A-j>", ":m .+1<CR>==", opts)
remap("n", "<A-k>", ":m .-2<CR>==", opts)

remap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
remap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

remap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
remap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- do not lose yanked text on paste over text
remap("v", "p", '"_dP', opts)

-- Stay in indent mode
remap("v", "<", "<gv", opts)
remap("v", ">", ">gv", opts)

-- specials
remap("n", "<F3>", ":set list!<CR>", opts)
remap("n", "<F9>", ":set nonu nornu scl=no<CR>", opts)
remap("n", "<C-F9>", ":set nu rnu scl=yes<CR>", opts)
remap("n", "<F10>", ":set spell!<CR>", opts)
remap("i", "<F10>", "<C-O>:set spell!<CR>", opts)
remap("i", "<C-c>", "<ESC>", opts)

-- diagnostics
remap("n", "<F2>", ":lua vim.diagnostic.goto_next()<CR>", opts)

