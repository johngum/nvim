require("core.settings")
require("core.plugins")


-- regular keymappings

local opts = { noremap = true, silent = true }
local remap = vim.api.nvim_set_keymap

remap("", "<Space>", "<Nop>", opts)

-- Move text up and down
remap("n", "<A-j>", ":m .+1<CR>==", opts)
remap("n", "<A-k>", ":m .-2<CR>==", opts)

remap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
remap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

remap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
remap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

remap("i", "<C-c>", "<ESC>", opts)
