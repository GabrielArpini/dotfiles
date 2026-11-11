-- Self-contained palette: no external colorscheme installation required.
return {{ name = "soir-bleu-theme", dir = vim.fn.stdpath("config"), lazy = false,
  priority = 1000, config = function()
    vim.cmd("highlight clear")
    vim.o.background = "dark"
    vim.g.colors_name = "soir-bleu"
    local groups = {
      Normal = { fg = "#d8d4c5", bg = "#141f2b" },
      NormalFloat = { fg = "#d8d4c5", bg = "#101923" },
      FloatBorder = { fg = "#8eafc4" },
      Comment = { fg = "#93a4aa", italic = true },
      String = { fg = "#8eaa91" }, Number = { fg = "#c6ad79" },
      Constant = { fg = "#c6ad79" }, Identifier = { fg = "#d8d4c5" },
      Function = { fg = "#88b7b4" }, Statement = { fg = "#b79ba8" },
      PreProc = { fg = "#c6ad79" }, Type = { fg = "#7b9fbd" },
      Special = { fg = "#d39a78" }, Visual = { bg = "#304858" },
      Search = { fg = "#141f2b", bg = "#c6ad79" },
      CursorLine = { bg = "#243644" }, LineNr = { fg = "#80939d" },
      CursorLineNr = { fg = "#e3c58e", bold = true },
      StatusLine = { fg = "#d8d4c5", bg = "#243644" },
      DiagnosticError = { fg = "#df9586" }, DiagnosticWarn = { fg = "#e3c58e" },
      DiagnosticInfo = { fg = "#a5c7df" }, DiagnosticHint = { fg = "#a9cfca" },
      DiffAdd = { bg = "#283e37" }, DiffDelete = { bg = "#483038" },
      DiffChange = { bg = "#304858" }, DiffText = { bg = "#415e70" },
      Pmenu = { fg = "#d8d4c5", bg = "#243644" },
      PmenuSel = { fg = "#f1e8d5", bg = "#304858" },
    }
    for group, spec in pairs(groups) do vim.api.nvim_set_hl(0, group, spec) end
  end,
}}
