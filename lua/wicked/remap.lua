-- Space Bar
vim.g.mapleader = " "

-- Open Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open explorer" })

-- Move Selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Append Line
vim.keymap.set("n", "J", "mzJ`z", { desc = "Append to line with a space" })

-- Move Page Down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half-page jump down" })
-- Move Page Up
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half-page jump up" })

-- Insert Line
vim.keymap.set("n", "oo", "<Cmd>call append(line('.'), repeat([''], v:count1))<CR>", { desc = "Insert line below" })
vim.keymap.set("n", "OO", "<Cmd>call append(line('.')-1, repeat([''], v:count1))<CR>", { desc = "Insert line above" })

-- Search RegEx
vim.keymap.set("n", "n", "nzzzv", { desc = "Search next" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Search previous" })

-- Replace Selection Without Losing buffer
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Replace selection" })

-- System Clipboard Yank : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank to system clipboard" })

-- Delete to Void Register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "Delete to void" })

-- The Cancel Remap
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Don't press Capital Q
vim.keymap.set("n", "Q", "<nop>")

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format" })

-- Quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Quickfix next" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Quickfix previous" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Quickfix next" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Quickfix previous" })

-- Replace Highlight
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Refactor selection" })

-- Create Executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make executable" })


