local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- specials
vim.cmd([[
nnoremap <leader>fff <cmd>lua require('telescope.builtin').find_files({hidden = true, no_ignore = true})<cr>
nnoremap <leader>fgg <cmd>lua require('telescope.builtin').live_grep({additional_args = function(opts) return { "-u" } end })<cr>
nnoremap <leader>fgr <cmd>lua require('telescope.builtin').live_grep({cwd = require('telescope.utils').buffer_dir()})<cr>
]])
