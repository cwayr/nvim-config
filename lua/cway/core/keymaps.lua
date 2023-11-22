-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

------------------- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
keymap.set("t", "JK", "<C-\\><C-n>", { desc = "Exit insert mode from terminal" }) 

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>so", "<cmd>only<CR>", { desc = "Close all splits except current" }) -- close all splits except current
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>sn", "<C-w>w", { desc = "Go to next split" }) -- go to next split

-- window size
keymap.set("n", "<leader>si", ":vertical resize +20<CR>", { desc = "Increase window width" })
keymap.set("n", "<leader>sd", ":vertical resize -20<CR>", { desc = "Decrease window width" })
keymap.set("t", "<leader>si", "<C-\\><C-n>:vertical resize +20<CR>", { desc = "Increase window width" })
keymap.set("t", "<leader>sd", "<C-\\><C-n>:vertical resize -20<CR>", { desc = "Decrease window width" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("t", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height

-- file explorer
keymap.set("n", "<leader>ot", ":term<CR> | i", { desc = "Go to file explorer" }) -- go to file explorer
keymap.set("n", "<leader>oe", ":Explore<CR>", { desc = "Go to file explorer" }) -- go to file explorer
keymap.set("t", "<leader>oe", "<C-\\><C-n>:Explore<CR>", { desc = "Open file explorer (terminal)" }) -- go to file explorer

-- terminal
keymap.set("n", "<leader>st", ":vsp | terminal<CR> | :vertical resize 60<CR> | i", { desc = "Open terminal" }) -- open terminal
keymap.set("t", "<leader>sn", "<C-\\><C-n><C-w>w", { desc = "Go to next split (terminal)" }) -- go to next split (terminal)
keymap.set("t", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split (terminal)" }) -- close current split (terminal)

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", ":vb", "<C-v>", { desc = "Enter visual block mode" }) -- visual block mode