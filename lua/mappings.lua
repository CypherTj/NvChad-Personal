require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map('v', '<leader>1f', vim.lsp.buf.format, bufopts)

-- highlight on search
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Disable arrow keys in normal mode
map({'n', 'v'}, '<left>', '<cmd>echo "Use h to move!!"<CR>')
map({'n', 'v'}, '<right>', '<cmd>echo "Use l to move!!"<CR>')
map({'n', 'v'}, '<up>', '<cmd>echo "Use k to move!!"<CR>')
map({'n', 'v'}, '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- window management
-- map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
