return {
  "AlexvZyl/nordic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nordic").setup({
      brighter_comments = true,
      brighter_conditionals = true,
      italic_comments = false,
      transparent = { bg = true, float = false },
      reduced_blue = true,
      telescope = {
        -- Available styles: `classic`, `flat`.
        style = "classic",
      },
    })
    require("nordic").load()
  end,
}
