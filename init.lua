require("settings")
require("plugins")


-- regular keymappings

local opts = { noremap = true, silent = true }
local remap = vim.api.nvim_set_keymap

remap("", "<Space>", "<Nop>", opts)

-- Navigation
remap("n", "<C-d>", "<C-d>zz", opts)
remap("n", "<C-u>", "<C-u>zz", opts)
remap("n", "n", "nzz", opts)
remap("n", "N", "Nzz", opts)

-- Yank/Paste
remap("n", "<leader>y", [["+y]], opts)
remap("v", "<leader>y", [["+y]], opts)
remap("n", "<leader>Y", [["+Y]], opts)
remap("v", "<leader>Y", [["+Y]], opts)
remap("x", "<leader>p", [["_dP]], opts)
remap("n", "<leader>d", [["_d]], opts)

-- Move text up and down only in visual mode
remap("v", "J", ":m '>+1<CR>gv=gv", opts)
remap("v", "K", ":m '<-2<CR>gv=gv", opts)

remap("i", "<C-c>", "<ESC>", opts)
