-- direct vimscript command stuff
-- set bash env to use aliases in command mode
-- extend path for completions (dont know if necessary with nvim)
-- add dash to keywords to easier [d]elete [w]ords
vim.cmd([[
let $BASH_ENV = "~/.vim_bash_env"
let g:netrw_liststyle = 3
set path+=**
set iskeyword+=-
]])

local opt = {
    -- general behavior
    clipboard = "unnamedplus",
    cmdheight = 2,
    cursorline = true,
    guicursor = "",
    hidden = true,
    laststatus = 2,
    listchars = "tab:――,space:⋅,trail:-,nbsp:+,eol:$",
    showmatch = false,
    showmode = false,
    splitbelow = true,
    splitright = true,
    wildmenu = true,

    -- completion <C-n>
    completeopt = 'menuone,noselect',
    pumheight = 10, 

    -- file/buffer handling
    backup = false,
    encoding = "utf-8",
    fileencoding = "utf-8",
    swapfile = false,
    undofile = true,
    updatetime = 300,

    -- indents
    autoindent = true,
    expandtab = true,
    shiftwidth = 4,
    smartindent = true,
    softtabstop = 4,
    tabstop = 4,
    wrap = false,

    -- lines and columns
    -- colorcolumn = "120",
    number = true,
    relativenumber = true,
    signcolumn = "yes",

    -- movement
    scrolloff = 8,
    sidescrolloff = 8,

    -- search
    hlsearch = true,
    ignorecase = true,
    incsearch = true,
    magic = true,
    smartcase = true,

    -- spell check
    spelllang = 'en_us,de_de',
    spellsuggest = 'best,9',
}

for k, v in pairs(opt) do
    vim.opt[k] = v
end

