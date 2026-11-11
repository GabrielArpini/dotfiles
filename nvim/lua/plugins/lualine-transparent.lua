-- L’heure bleue status line.
return { "nvim-lualine/lualine.nvim", opts = function(_, opts)
  local quiet = { fg = "#8CA6B5", bg = "#10293B" }
  local mode = { fg = "#051626", bg = "#5F919B", gui = "bold" }
  opts.options = opts.options or {}
  opts.options.theme = { normal = { a = mode, b = quiet, c = quiet },
    insert = { a = { fg = "#051626", bg = "#A5B98C" } },
    visual = { a = { fg = "#051626", bg = "#BAA0C8" } },
    replace = { a = { fg = "#051626", bg = "#DB8B79" } },
    inactive = { a = quiet, b = quiet, c = quiet } }
  opts.options.component_separators = ""
  opts.options.section_separators = ""
end }
