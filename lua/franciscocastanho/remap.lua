vim.g.mapleader = " "

-- Go back to netrw and save
vim.keymap.set("n", "<leader>px", vim.cmd.Ex)

-- Move lines with shift + j or k while on visual line mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move the line below to the end of the current line while keeping the cursor in the beggining
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps the cursor in the middle while moving through the file using ctrl+u and ctrl+d
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps the cursor in the middle while searching for terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy and paste over selection without losing the original
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Put selection in system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Do not play last recorded macro
vim.keymap.set("n", "Q", "<nop>")

-- Format code
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the word the cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Source configuration files
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

