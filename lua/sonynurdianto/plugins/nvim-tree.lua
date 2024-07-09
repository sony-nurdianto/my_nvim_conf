return {
        "nvim-tree/nvim-tree.lua",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
                local nvimtree = require("nvim-tree")

                -- recomended settings from nvim-tree documentation
                vim.g.loaded_netrw = 1
                vim.g.loaded_netrwPlugin = 1

                nvimtree.setup({
                        -- view nvim-tree setup
                        view = {
                                width = 35,
                        },
                        -- renderer nvim-tree setup
                        renderer = {
                                indent_markers = {
                                        enable = true,
                                },
                                icons = {
                                        glyphs = {
                                                folder = {
                                                        arrow_closed = "😑", --arrow icon when folder is closed
                                                        arrow_open = "😃", -- arrow icon when folder is open
                                                },
                                        },
                                },
                        },
                        --action nvim-tree setup

                        --disable window_picker for explorer to work well with window splits
                        actions = {
                                open_file = {
                                        window_picker = {
                                                enable = false,
                                        },
                                },

                        },

                        --filters nvim-tree setup
                        filters = {
                                custom = {".DS_Store"},
                        },

                        --git nvim-tree setup
                        git = {
                                ignore = false
                        },
                })

                -- set keymaps
                local keymap = vim.keymap

                keymap.set("n","<leader>ee","<cmd>NvimTreeToggle<CR>",{ desc = "Toggle file explorer"})
                keymap.set("n","<leader>ef","<cmd>NvimTreeFindFileToggl<CR>",{ desc = "Toggle file explorer on current file"})
                keymap.set("n","<leader>ec","<cmd>NvimTreeCollapse<CR>",{ desc = "Collapse file explorer"})
                keymap.set("n","<leader>er","<cmd>NvimTreeRefresh<CR>",{ desc = "Refresh file explorer"})

        end
}
