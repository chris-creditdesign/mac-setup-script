-- Keybinding to toggle NERDTree with Ctrl+c
vim.api.nvim_set_keymap('n', '<C-c>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Keybinding to find the current file in NERDTree with Ctrl+f
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', { noremap = true, silent = true })

