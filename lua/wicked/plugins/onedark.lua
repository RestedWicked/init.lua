return {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    config = function()
        require('onedark').setup {
            style = 'dark',
            transparent = true,

            code_style = {
                comments = 'none',
            }
        }
        require('onedark').load()
    end,
}
