local g = vim.g
local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- Map <leader> to space
g.mapleader = " "
g.maplocalleader = " "

---------------------
-- General Keymaps
---------------------

-- Deleting one character doesn't put it in the register
map("n", "x", '"_x')

-- increment/decrement numbers
map("n", "<leader>+", "<C-a>") -- increment
map("n", "<leader>-", "<C-x>") -- decrement

-- Fix * (Keep the cursor position, don't move to next match)
map("n", "*", "*N")

-- clear search highlights
map("n", "<leader>l", ":nohl<CR>")

-- Fix n and N. Keeping cursor in center
map("n", "n", "nzz")
map("n", "N", "Nzz")

map("n", "<Enter>", "o<ESC>")
map("n", "<S-Enter>", "O<ESC>")

map("n", "gn", ":bn<cr>")
map("n", "gp", ":bp<cr>")
map("n", "gx", ":bp|bd #<cr>")

-- window management
map("n", "<leader>sv", "<C-w>v") -- split window vertically
map("n", "<leader>sh", "<C-w>s") -- split window horizontally
map("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
map("n", "<leader>sx", ":close<CR>") -- close current split window

map("n", "<leader>to", ":tabnew<CR>") -- open new tab
map("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- Go to next or prev tab by H and L accordingly
map("n", "H", "gT")
map("n", "L", "gt")

-- Quickly save the current buffer or all buffers
map("n", "<leader>w", "<CMD>update<CR>")
map("n", "<leader>W", "<CMD>wall<CR>")

-- Quit neovim
-- map("n", "<C-Q>", "<CMD>qa<CR>")

-- leader-o/O inserts blank line below/above
map("n", "<leader>o", "o<ESC>")
map("n", "<leader>O", "O<ESC>")

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
-- map('n', '<C-j>', '<CMD>move .+1<CR>')
-- map('n', '<C-k>', '<CMD>move .-2<CR>')
-- map('x', '<C-j>', ":move '>+1<CR>gv=gv")
-- map('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map("o", "A", ":<C-U>normal! mzggVG<CR>`z")
map("x", "A", ":<C-U>normal! ggVG<CR>")

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
map("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
