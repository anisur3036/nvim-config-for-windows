-- vim.keymap.set('n', 'jj', '<Esc>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
local opts = { noremap = true, silent = true }
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })


-- Split windows
vim.keymap.set("n", "ss", ":vsplit<CR>", opts)
vim.keymap.set("n", "sv", ":split<CR>", opts)

-- save file
vim.keymap.set("n", "<leader>s", "<cmd> w <CR>", opts)

-- Normat mode
vim.keymap.set("i", "jj", "<Esc>", opts)

-- line wrap
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap !<CR>", opts)

-- keep last yank when paste
vim.keymap.set('v', 'p', '"_dP', opts)

-- indent line
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- resize with arrows
vim.cmd([[
  nnoremap <silent> <M-k> : resize -2<CR>
  nnoremap <silent> <M-j> : resize +2<CR>
  nnoremap <silent> <M-h> : vertical resize -2<CR>
  nnoremap <silent> <M-l> : vertical resize +2<CR>
]])

-- Tabs
vim.keymap.set("n", "te", ":tabedit", opts)
vim.keymap.set("n", "<tab>", ":tabnext<CR>", opts)
vim.keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)

vim.keymap.set("n", "<leader>bd", ":bufdo bwipeout<CR>", opts)
vim.keymap.set("n", "<Tab>", ":bn<CR>", opts)
vim.keymap.set("n", "<s-Tab>", ":bp<CR>", opts)

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
