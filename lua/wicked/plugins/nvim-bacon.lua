return {
    "Canop/nvim-bacon",
    cond = function()
        if os.getenv("WICKED_VIM_MODE") == "OBSIDIAN" then
            return false
        end
        if os.getenv("WICKED_VIM_MODE") == nil then
            return true
        end
    end,
    config = function ()
        vim.keymap.set("n", "!", '<Cmd>BaconLoad<CR><Cmd>w<CR><Cmd>BaconNext<CR>' )
        vim.keymap.set("n", ",", '<Cmd>BaconList<CR>' )
    end
}
