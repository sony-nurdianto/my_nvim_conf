vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

--window split
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window verticaly" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontaly" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Split window equal" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close  current split" })

-- Tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab window" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab window" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Terminal management
keymap.set("n", "<leader>tt", "<cmd>botright terminal<CR>", { desc = "Open terminal at bottom" })
