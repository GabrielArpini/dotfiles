-- Self-contained palette: no external colorscheme installation required.
return {{ name = "heure-bleue-theme", dir = vim.fn.stdpath("config"), lazy = false,
  priority = 1000, config = function()
    vim.cmd("highlight clear")
    vim.o.background = "dark"
    vim.g.colors_name = "heure-bleue"
    local groups = {
      NormalNC = { fg = "#DFE1D5", bg = "#051626" },
      SignColumn = { bg = "#051626" },
      WinSeparator = { fg = "#24465A", bg = "#051626" },
      Directory = { fg = "#8FB8DF" },
      TabLine = { fg = "#8CA6B5", bg = "#051626" },
      TabLineSel = { fg = "#DFE1D5", bg = "#10293B" },
      TabLineFill = { bg = "#051626" },
      NeoTreeNormal = { fg = "#8CA6B5", bg = "#051626" },
      NeoTreeNormalNC = { fg = "#8CA6B5", bg = "#051626" },
      NeoTreeCursorLine = { bg = "#10293B" },
      Normal = { fg = "#DFE1D5", bg = "#051626" },
      NormalFloat = { fg = "#DFE1D5", bg = "#051626" },
      FloatBorder = { fg = "#5F919B" },
      Comment = { fg = "#8CA6B5", italic = true },
      String = { fg = "#A5B98C" }, Number = { fg = "#D9BD82" },
      Constant = { fg = "#D9BD82" }, Identifier = { fg = "#DFE1D5" },
      Function = { fg = "#8FB8DF" }, Statement = { fg = "#BAA0C8" },
      PreProc = { fg = "#D9BD82" }, Type = { fg = "#8FB8DF" },
      Special = { fg = "#DB8B79" }, Visual = { bg = "#10293B" },
      Search = { fg = "#051626", bg = "#D9BD82" },
      CursorLine = { bg = "#10293B" }, LineNr = { fg = "#8CA6B5" },
      CursorLineNr = { fg = "#D9BD82", bold = true },
      StatusLine = { fg = "#DFE1D5", bg = "#10293B" },
      DiagnosticError = { fg = "#DB8B79" }, DiagnosticWarn = { fg = "#D9BD82" },
      DiagnosticInfo = { fg = "#8FB8DF" }, DiagnosticHint = { fg = "#5F919B" },
      DiffAdd = { bg = "#283e37" }, DiffDelete = { bg = "#483038" },
      DiffChange = { bg = "#10293B" }, DiffText = { bg = "#415e70" },
      Pmenu = { fg = "#DFE1D5", bg = "#10293B" },
      PmenuSel = { fg = "#DFE1D5", bg = "#10293B" },
    }
    for group, spec in pairs(groups) do vim.api.nvim_set_hl(0, group, spec) end
  end,
}}
