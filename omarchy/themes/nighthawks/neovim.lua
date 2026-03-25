-- Nighthawks colorscheme is bundled in ~/.config/nvim/colors/nighthawks.lua
-- No plugin install needed
return {
  {
    name = "nighthawks-theme",
    dir = vim.fn.stdpath("config"),
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("nighthawks")
    end,
  },
}
