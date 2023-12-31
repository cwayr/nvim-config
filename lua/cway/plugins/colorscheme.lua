return {
    {
        "alexvzyl/nordic.nvim", -- bluz71/vim-nightfly-guicolors
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme nordic]])
        end,
    },
}
