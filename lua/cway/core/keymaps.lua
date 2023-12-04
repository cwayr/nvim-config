-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

------------------- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("t", "JK", "<C-\\><C-n>") 

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>so", "<cmd>only<CR>") -- close all splits except current
keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split window
keymap.set("n", "<leader>sn", "<C-w>w") -- go to next split

-- window size
keymap.set("n", "<leader>si", ":vertical resize +20<CR>")
keymap.set("n", "<leader>sd", ":vertical resize -20<CR>")
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height

-- file explorer
keymap.set("n", "<leader>ot", ":term<CR> | i") -- go to file explorer

-- terminal
keymap.set("n", "<leader>st", ":vsp | terminal<CR> | :vertical resize 60<CR> | i") -- open terminal

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>") --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") --  move current buffer to new tab

keymap.set("n", ":vb", "<C-v>") -- visual block mode

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

-- easy code folding
vim.keymap.set("n", "<leader>z", function()
    if vim.fn.foldclosed('.') ~= -1 then
        vim.cmd('normal! zv')
    else
        vim.cmd('normal! $zf%')
    end
end)

-- makes page jumps centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-e>", "<C-e>zz")
vim.keymap.set("n", "<C-y>", "<C-y>zz")

-- makes search results centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")





