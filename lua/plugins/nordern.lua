return {
  "fcancelinha/nordern.nvim",
  branch = "master",
  lazy = false,
  priority = 1000,
  config = function()
    require("nordern").setup({
      brighter_comments = true,
      brighter_conditionals = true,
      italic_comments = true,
      transparent = true,
    })
    require("nordern").load()
  end,
}
