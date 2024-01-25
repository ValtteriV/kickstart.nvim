return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end, { desc = '[A]dd file to Harpoon' })
    vim.keymap.set("n", "<leader>hs", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '[S]how Harpoon' })
    vim.keymap.set("n", "<leader>hc", function() harpoon:list():clear() end, { desc = '[C]lear Harpoon list' })

    vim.keymap.set("n", "<C-a>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<C-s>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<C-z>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<C-x>", function() harpoon:list():select(4) end)
  end,
}
