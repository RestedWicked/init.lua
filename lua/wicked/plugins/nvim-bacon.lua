return {
    "Canop/nvim-bacon",
    config = function ()
        vim.keymap.set("n", "!", '<Cmd>BaconLoad<CR><Cmd>w<CR><Cmd>BaconNext<CR>' )
        vim.keymap.set("n", ",", '<Cmd>BaconList<CR>' )
    end
}
