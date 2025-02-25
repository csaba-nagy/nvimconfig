-- set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- exit Insert Mode
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "jK", "<ESC>")
keymap.set("i", "Jk", "<ESC>")
keymap.set("i", "JK", "<ESC>")

-- exit Visual Mode
keymap.set("v", "jk", "<ESC>")
keymap.set("v", "jK", "<ESC>")
keymap.set("v", "Jk", "<ESC>")
keymap.set("v", "JK", "<ESC>")

-- clear the search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete the character under the cursor without copying it into the default register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers under the cursor
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- Window management

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--disable arrow buttons
vim.keymap.set("", "<up>", "<nop>")
vim.keymap.set("", "<down>", "<nop>")
vim.keymap.set("", "<left>", "<nop>")
vim.keymap.set("", "<right>", "<nop>")

--magical replace command
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Go to definition and declaration remap (not elegant, but it works)
keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")

-- Toggle background
keymap.set("n", "<leader>tb", ":lua toggle_background()<CR>", { noremap = true, silent = true })
