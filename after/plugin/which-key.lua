local wk = require("which-key")
local builtin = require("telescope.builtin")
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")
local harpoon_telescope = require("telescope")
local neogen = require("neogen")

-- file search
wk.register({
    f = {
        name = "file",
        F = { vim.lsp.buf.format, "Format current buffer" },
        f = { builtin.find_files, "Find File" },
        g = { builtin.git_files, "Find Git-Files" },
        h = { harpoon_telescope.extensions.harpoon.marks, "Harpoon" },
        s = {
            function()
                builtin.grep_string({ search = vim.fn.input("Grep >") })
            end,
            "Search in all Files"
        },
    },
}, { prefix = "<leader>" })



-- Harpoon only
harpoon_telescope.load_extension("harpoon")
wk.register({
    h = {
        name = "Harpoon",
        a = { harpoon_mark.add_file, "Add File" },
        r = { harpoon_mark.rm_file, "Remove File" },
        u = { harpoon_ui.toggle_quick_menu, "UI" },
        n = { harpoon_ui.nav_next, "Next File" },
        p = { harpoon_ui.nav_prev, "Previous File" },
        c = { harpoon_mark.clear_all, "Clear All"},
    },
}, { prefix = "<leader>" })



-- Code Actions
wk.register({
    c = {
        name = "Code Actions",
        c = { neogen.generate, "Generate Documentation String" },
    },
}, { prefix = "<leader>" })


-- file Actions
-- wk.register({
--    x = { vim.cmd("!chmod +x %"), "Make current file executable" },
-- }, { prefix = "<leader>" })


