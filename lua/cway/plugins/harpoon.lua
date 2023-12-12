return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- set keymaps
        local keymap = vim.keymap 
        local harpoon = require("harpoon.ui")

        keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Mark file with harpoon" })
        keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
        keymap.set("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Go to previous harpoon mark" })
        keymap.set("n", "<leader>ho", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Toggle harpoon quick menu" })

        keymap.set("n", "<C-g>", function() harpoon.nav_file(1) end)
        keymap.set("n", "<C-h>", function() harpoon.nav_file(2) end)
        keymap.set("n", "<C-n>", function() harpoon.nav_file(3) end)
        keymap.set("n", "<C-m>", function() harpoon.nav_file(4) end)

    end,
}
