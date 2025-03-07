-- Enables line numbers in the editor.
vim.opt.nu = true

-- Enables relative line numbers.
vim.opt.relativenumber = true

vim.opt.expandtab = false   -- Use tabs instead of spaces
vim.opt.tabstop = 4         -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4      -- Number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 4     -- Number of spaces that a <Tab> counts for while editing

vim.opt.list = true    -- Enable list mode to show whitespace characters
vim.opt.listchars = { tab = '» ', trail = '·', extends = '>', precedes = '<', space = '·' }

-- Enables smart indentation, which automatically adjusts the indentation level based on the syntax and structure of the code.
vim.opt.smartindent = true

-- Disables line wrapping.
vim.opt.wrap = false

-- Disables the highlighting of search matches after a search is completed.
vim.opt.hlsearch = false
-- Enables incremental search, which shows search results as you type, making it easier to find what you're looking for.
vim.opt.incsearch = true

-- Enables true color support in the terminal, allowing for a wider range of colors in the editor.
vim.opt.termguicolors = true

-- Keeps 8 lines visible above and below the cursor when scrolling, making it easier to maintain context.
vim.opt.scrolloff = 8

vim.cmd.colorscheme("monokai-pro")

