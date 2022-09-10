--require('telescope').setup{
    -- defaults = {
        -- vimgrep_arguments = {
        --     'rg',
        --     '--color=never',
        --     '--no-heading',
        --     '--with-filename',
        --     '--line-number',
        --     '--column',
        --     '--smart-case',
        --     '-u' -- thats the new thing
        -- }
    -- },
    -- pickers = {
        -- find_files = {
            -- hidden = true,
            -- no_ignore = true,
            -- no_ignore_parent = true,
        -- }
    -- }
--}

vim.cmd([[
nnoremap <leader>fff <cmd>lua require('telescope.builtin').find_files({hidden = true, no_ignore = true})<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fgg <cmd>lua require('telescope.builtin').live_grep({additional_args = function(opts) return { "-u" } end })<cr>
nnoremap <leader>fgr <cmd>lua require('telescope.builtin').live_grep({cwd = require('telescope.utils').buffer_dir()})<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]])
