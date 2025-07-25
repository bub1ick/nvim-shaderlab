vim.filetype.add({
    extension = {
        shader = "shaderlab",
        cginc = "cg",
    },
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "shaderlab",
    callback = function()
        vim.cmd([[runtime! syntax/shaderlab.vim]])
    end,
})
