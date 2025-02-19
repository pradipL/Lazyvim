return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.window = opts.window or {}
    opts.window.position = "float"
    opts.window.width = 30 -- Set your desired width here
    opts.popup_border_style = "rounded"
  end,
}
