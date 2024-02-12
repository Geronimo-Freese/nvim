local builtin = require("telescope.builtin")


-- search for files
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

-- search only for files in the current git repo
vim.keymap.set("n", "<C-f>", builtin.git_files, {})

-- fuzzy find keywords in files
vim.keymap.set("n", "<leader>fs", function()
    builtin.grep_string( { search = vim.fn.input("Grep > ") } )
end)

