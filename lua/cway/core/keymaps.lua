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
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height

-- file explorer
keymap.set("n", "<leader>ot", ":term<CR> | i", { desc = "Go to file explorer" }) -- go to file explorer

-- terminal
keymap.set("n", "<leader>st", ":vsp | terminal<CR> | :vertical resize 60<CR> | i", { desc = "Open terminal" }) -- open terminal

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", ":vb", "<C-v>", { desc = "Enter visual block mode" }) -- visual block mode

-- makes it so that page jumps are centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- adds yanked command to the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- makes it so that search results are centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>p", "\"_dP")
