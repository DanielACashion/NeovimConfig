return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        -- Telescope picker for Harpoon marks with selection support
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
                attach_mappings = function(_, map)
                    local actions = require("telescope.actions")
                    local action_state = require("telescope.actions.state")
                    local open_selected = function(prompt_bufnr)
                        local selection = action_state.get_selected_entry()
                        actions.close(prompt_bufnr)
                        if selection and selection.value then
                            vim.cmd("edit " .. selection.value)
                        end
                    end
                    map("i", "<CR>", open_selected)
                    map("n", "<CR>", open_selected)
                    return true
                end,
            }):find()
        end

        vim.keymap.set("n", "<leader>pl", function() toggle_telescope(harpoon:list()) end,
            { desc = "Open harpoon window" })
        vim.keymap.set("n", "<leader>pa", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>pr", function() harpoon:list():remove() end)

        vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

        vim.keymap.set("n", "<leader><", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>>", function() harpoon:list():next() end)
    end,
}
