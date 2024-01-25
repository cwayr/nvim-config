-- return {
--     {
--         "alexvzyl/nordic.nvim", -- bluz71/vim-nightfly-guicolors
--         priority = 1000,
--         config = function()
--             vim.cmd([[colorscheme nordic]])
--         end,
--     },
-- }

return {
    {
        "rose-pine/neovim",
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                styles = {
                    bold = false,
                    italic = true
                }
            })
            vim.cmd([[colorscheme rose-pine]])
        end,
    },
}
