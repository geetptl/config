-- numbers and cursor
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- tabs and spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- search ignorecase
vim.opt.ignorecase = true

-- search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.opt.incsearch = true

-- remove trailing spaces and lines
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.cmd([[%s/\s\+$//e]])
        vim.cmd([[%s/\($\n\s*\)\+\%$//e]])
    end
})

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function ()
        vim.highlight.on_yank()
    end
})

-- leader
vim.g.mapleader = " "

-- reload config
vim.keymap.set("n", "<leader>cr", function()
    dofile(vim.env.MYVIMRC)
    print("Neovim config reloaded")
end, { desc = "Reload config" })

-- jump between buffers
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>bp", "<cmd>bprev<CR>")

require("plugins.fff")
