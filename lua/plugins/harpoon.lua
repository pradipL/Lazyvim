return {
  -- Other plugins...
  {
    "ThePrimeagen/harpoon",
    config = function()
      -- Initialize Harpoon
      local harpoon = require("harpoon")
      harpoon.setup()

      -- Get Harpoon's mark and UI modules
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      -- Keybinding to add the current file to Harpoon
      vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Add file to Harpoon" })

      -- Keybinding to toggle the Harpoon menu
      vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu, { desc = "Toggle Harpoon menu" })

      -- Navigation Keybindings
      vim.keymap.set("n", "<leader>hn", ui.nav_next, { desc = "Go to next Harpoon mark" })
      vim.keymap.set("n", "<leader>hp", ui.nav_prev, { desc = "Go to previous Harpoon mark" })

      -- Keybindings for navigating specific marks (1 to 5)
      for i = 1, 5 do
        vim.keymap.set("n", "<leader>h" .. i, function()
          ui.nav_file(i)
        end, { desc = "Navigate to Harpoon file " .. i })
      end
    end,
  },
}
