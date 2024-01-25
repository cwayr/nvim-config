vim.g.mapleader = " "

local keymap = vim.keymap

------------------- General -------------------

keymap.set("i", "jk", "<ESC>") -- jk to exit insert mode
keymap.set("v", "jk", "<ESC>") -- jk to exit visual mode

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlight

keymap.set("n", ":vb", "<C-v>") -- visual block mode

keymap.set("n", "x", '"_x') -- delete single character without copying into register
keymap.set("n", "<leader>p", "\"_dP") -- delete text without overwriting copy buffer
keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- add yanked command to the system clipboard
keymap.set("n", "<leader>Y", [["+yg_]]) -- add yanked line to the system clipboard

-- move lines of text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- code folding
keymap.set("n", "<leader>z", function()
    if vim.fn.foldclosed('.') ~= -1 then
        vim.cmd('normal! zv')
    else
        vim.cmd('normal! $zf%')
    end
end)

-- make page jumps centered
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "{", "{zz")
keymap.set("n", "}", "}zz")

-- make search results centered
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

------------------- Windows -------------------

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split window
keymap.set("n", "<leader>sn", "<C-w>w") -- go to next split
keymap.set("n", "<leader>sp", "<C-w>W") -- go to previous split

-- window size
keymap.set("n", "<leader>si", "20<C-w>>")
keymap.set("n", "<leader>sd", "20<C-w><")

