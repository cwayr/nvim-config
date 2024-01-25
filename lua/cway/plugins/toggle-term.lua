return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local term = require("toggleterm")
        local keymap = vim.keymap

        term.setup({
            size = 50,
            open_mapping = [[<c-t>]],
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 1,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = "vertical",
            close_on_exit = true,
            shell = vim.o.shell,
        })

        function _G.set_terminal_keymaps()
            local opts = { buffer = 0 }
            keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
            keymap.set("t", "JK", [[<C-\><C-n>]], opts)
            keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
            keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
            keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
            keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
        end

        vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
    end,
}
