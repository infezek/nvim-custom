local M = {}

M.disabled = {
    n = {
        ["<C-n>"] = "",
        ["<C-p>"] = "",
        ["<C-w>"] = "",
        ["<C-s>"] = "",
        ["gc"] = "",

    }
}

M.abc = {
    n = {
        ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
        ["gt"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
        ["gd"] = { "<cmd> lua vim.lsp.buf.definition()<CR>", "LSP definition" },
        ["gb"] = { "<C-^>", "Switch to previous buffer" },
        ["<C-k>"] = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "LSP signature help" },
        ["gk"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "LSP hover" },
        ["<C-n>"] = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", "LSP diagnostic previous" },
        ["<C-p>"] = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "LSP diagnostic next" },
        ["<C-w>"] = { "<ESC>:bd<CR>:bn<CR>", "Fechar buffer atual e mudar para o próximo" },
        ["<C-s>"] = { "<ESC>:w<CR>", "File saved", opts = { nowait = true } },
        ["gc"] = { ":wincmd w<CR>:echo 'Focus moved to code'<CR>", "Move focus to next window", opts = { nowait = true } },
    },

    i = {
        [";;"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    }
}

return M
