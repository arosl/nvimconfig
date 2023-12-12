-- configure commentstring for puppet
vim.api.nvim_create_autocmd("FileType", {
    pattern = "puppet",
    callback = function()
        vim.opt_local.commentstring = "# %s"
    end,
})
