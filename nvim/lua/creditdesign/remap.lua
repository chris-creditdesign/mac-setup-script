-- Sets the leader key to the spacebar. The leader key is a prefix key used in key mappings to create custom commands.
vim.g.mapleader = " "

-- In normal mode, pressing <leader>pv (space followed by pv) will execute the :Ex command, which opens the file explorer.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- In visual mode, pressing K or J moves the selected lines up or down by one line and reselects them.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- In normal mode, pressing J` joins the current line with the next one and keeps the cursor in the same position.
vim.keymap.set("n", "J", "mzJ`z")

-- In normal mode, pressing Ctrl+u or Ctrl+d scrolls up or down half a page and centers the cursor in the window.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- In normal mode, pressing n or N to search for the next or previous match will also center the cursor in the window.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- In visual mode, pressing <leader>p pastes over the selected text without overwriting the clipboard.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- In normal and visual mode, pressing <leader>y yanks (copies) the selected text to the system clipboard.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- In normal mode, pressing <leader>Y yanks (copies) the current line to the system clipboard.
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- In normal and visual mode, pressing <leader>d deletes the selected text without copying it to the clipboard.
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

--[[
In normal mode, pressing Q does nothing (disables the default Q command).
In Neovim (and Vim), the Q command in normal mode is used to switch to Ex mode. Ex mode is a line-oriented editor mode that predates the full-screen mode of Vim. When you press Q, you enter a mode where you can execute Ex commands one at a time, similar to how you would in the command-line mode with :
--]]
vim.keymap.set("n", "Q", "<nop>")

-- In normal mode, pressing <leader>f formats the code using the LSP (Language Server Protocol) formatter.
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Keybinding to make <leader> w save the current file
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })


