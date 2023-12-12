-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

------------------- General -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("t", "JK", "<C-\\><C-n>") 

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

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

-- delete text without overwriting copy buffer
vim.keymap.set("n", "<leader>p", "\"_dP")

-- code folding
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

------------------- Windows -------------------

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

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>") --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") --  move current buffer to new tab

------------------- Terminal -------------------

_G.open_or_switch_to_terminal = function()
    -- Check if a terminal buffer exists
    for _, buf in pairs(vim.api.nvim_list_bufs()) do
        if vim.bo[buf].buftype == 'terminal' then
            -- Switch to the existing terminal buffer
            for _, win in pairs(vim.api.nvim_list_wins()) do
                if vim.api.nvim_win_get_buf(win) == buf then
                    vim.api.nvim_set_current_win(win)
                    return
                end
            end
            vim.api.nvim_set_current_buf(buf)
            return
        end
    end

    -- If no terminal buffer found, create a new one
    vim.cmd('terminal')
    vim.cmd('startinsert')
end

_G.send_string_to_terminal = function(str)
    _G.open_or_switch_to_terminal() -- Ensure a terminal is open
    local term_buf = vim.api.nvim_get_current_buf()
    vim.api.nvim_chan_send(vim.bo[term_buf].channel, str .. "\r")
end

_G.input_and_send_to_terminal = function()
    local input_str = vim.fn.input('cmd: ')
    _G.send_string_to_terminal(input_str)
end

vim.keymap.set('n', '<C-t>', '<cmd>lua _G.open_or_switch_to_terminal()<CR>') -- switch to terminal
vim.keymap.set('n', '<leader>tt', '<cmd>lua _G.input_and_send_to_terminal()<CR>') -- send command to terminal
-- keymap.set("n", "<C-t>", ":vsp | terminal<CR> | i") -- switch to terminal in vertical split
