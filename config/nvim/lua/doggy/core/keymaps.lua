vim.g.mapleader = " "

-- delete without copying
vim.keymap.set("n", "d", '"_d', { noremap = true, silent = true })
vim.keymap.set("v", "d", '"_d', { noremap = true, silent = true })

-- copy paste
vim.keymap.set("n", "<D-c>", '"+y', { noremap = true, silent = true, desc = "copy in normal mode" })
vim.keymap.set("n", "<D-v>", '"+p', { noremap = true, silent = true, desc = "paste in normal mode" })
vim.keymap.set("v", "<D-c>", '"+y', { noremap = true, silent = true, desc = "copy in visual mode" })
vim.keymap.set("i", "<D-v>", "<C-r>+", { noremap = true, silent = true, desc = "paste in insert mode" })

-- split
vim.keymap.set("n", "<leader>sr", "<C-w>v", { noremap = true, silent = true, desc = "new right split" })
vim.keymap.set("n", "<leader>sl", "<C-w>s", { noremap = true, silent = true, desc = "new down split" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { noremap = true, silent = true, desc = "equalize split" })
vim.keymap.set("n", "<leader>sc", "<cmd>close<CR>", { noremap = true, silent = true, desc = "close split" })

-- tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { noremap = true, silent = true, desc = "new tab" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { noremap = true, silent = true, desc = "close tab" })
vim.keymap.set("n", "<leader>tr", "<cmd>tabn<CR>", { noremap = true, silent = true, desc = "right (next) tab" })
vim.keymap.set("n", "<leader>tl", "<cmd>tabp<CR>", { noremap = true, silent = true, desc = "left (previous) tab" })

-- quit
vim.keymap.set("i", "<leader>q", "<ESC>", { noremap = true, silent = true, desc = "quit insert mode" })
