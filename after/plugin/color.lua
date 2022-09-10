-- colorscheme
vim.opt.background = "dark"
--vim.g.tokyonight_transparent_sidebar = true
--vim.g.tokyonight_transparent = true
require("tokyonight").setup({
    style = "night",
})
vim.cmd("colorscheme tokyonight")
-- require('onedark').setup {
--     style = 'darker',
--     -- transparent = true

