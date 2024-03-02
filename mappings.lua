local M = {}

M.disabled = {
    n = {
        ["<C-n>"] = "",
    }
}

M.abc = {
    n = {
        ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
        ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
    },

    i = {
        [";;"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    }
}

return M
