-- Monochrome Dark Theme for Cosmos NVIM
-- A high-contrast monochrome theme with clear blacks, whites, and grays

local colors = {
  -- Core colors with enhanced contrast
  bg = "#0e0e0e",         -- Deep black background
  bg_alt = "#161616",     -- Slightly lighter background for contrast
  bg_highlight = "#202020", -- Subtle highlight background
  fg = "#eaeaea",         -- Nearly white foreground for high contrast
  fg_dim = "#b0b0b0",     -- Dimmed foreground for less important text
  comment = "#707070",    -- Medium gray for comments
  line_nr = "#505050",    -- Line number color
  selection = "#303030",  -- Selection background
  cursor = "#ffffff",     -- Cursor color
  
  -- Syntax colors - using variations of gray for monochrome effect
  string = "#d0d0d0",     -- Strings - light gray
  number = "#ffffff",     -- Numbers - white
  keyword = "#ffffff",    -- Keywords - white
  func = "#d8d8d8",       -- Functions - light gray
  type = "#c0c0c0",       -- Types - medium-light gray
  variable = "#b8b8b8",   -- Variables - medium gray
  constant = "#e0e0e0",   -- Constants - light gray
  operator = "#a0a0a0",   -- Operators - medium gray
  special = "#f0f0f0",    -- Special characters - very light gray
  
  -- UI colors
  error = "#f2f2f2",      -- Errors - very light gray
  warning = "#d0d0d0",    -- Warnings - light gray
  info = "#b0b0b0",       -- Info - medium gray
  hint = "#909090",       -- Hints - darker gray
  
  -- Git colors - still monochrome but distinct
  git_add = "#b0b0b0",    -- Git add - medium gray
  git_change = "#d0d0d0", -- Git change - light gray
  git_delete = "#909090", -- Git delete - darker gray
}

local highlights = {
  -- UI elements
  Normal = { fg = colors.fg, bg = colors.bg },
  NormalFloat = { fg = colors.fg, bg = colors.bg_alt },
  EndOfBuffer = { fg = colors.bg_alt, bg = colors.bg },
  VertSplit = { fg = colors.bg_highlight },
  StatusLine = { fg = colors.fg_dim, bg = colors.bg_alt },
  StatusLineNC = { fg = colors.comment, bg = colors.bg_alt },
  LineNr = { fg = colors.line_nr },
  CursorLineNr = { fg = colors.fg },
  CursorLine = { bg = colors.bg_highlight },
  ColorColumn = { bg = colors.bg_highlight },
  Cursor = { fg = colors.bg, bg = colors.cursor },
  Search = { fg = colors.bg, bg = colors.fg_dim },
  IncSearch = { fg = colors.bg, bg = colors.fg },
  Visual = { bg = colors.selection },
  Folded = { fg = colors.comment, bg = colors.bg_alt },
  FoldColumn = { fg = colors.comment },
  SignColumn = { fg = colors.fg_dim, bg = colors.bg },
  Title = { fg = colors.fg, bold = true },
  
  -- Completion menu
  Pmenu = { fg = colors.fg_dim, bg = colors.bg_alt },
  PmenuSel = { fg = colors.fg, bg = colors.selection },
  PmenuSbar = { bg = colors.bg_highlight },
  PmenuThumb = { bg = colors.fg_dim },
  
  -- Syntax highlighting
  Comment = { fg = colors.comment, italic = true },
  String = { fg = colors.string },
  Number = { fg = colors.number },
  Float = { fg = colors.number },
  Boolean = { fg = colors.number },
  Character = { fg = colors.string },
  Constant = { fg = colors.constant },
  Identifier = { fg = colors.variable },
  Function = { fg = colors.func },
  Statement = { fg = colors.keyword },
  Conditional = { fg = colors.keyword },
  Repeat = { fg = colors.keyword },
  Label = { fg = colors.keyword },
  Operator = { fg = colors.operator },
  Keyword = { fg = colors.keyword },
  Exception = { fg = colors.keyword },
  PreProc = { fg = colors.keyword },
  Include = { fg = colors.keyword },
  Define = { fg = colors.keyword },
  Macro = { fg = colors.keyword },
  PreCondit = { fg = colors.keyword },
  Type = { fg = colors.type },
  StorageClass = { fg = colors.type },
  Structure = { fg = colors.type },
  Typedef = { fg = colors.type },
  Special = { fg = colors.special },
  SpecialChar = { fg = colors.special },
  Tag = { fg = colors.special },
  Delimiter = { fg = colors.special },
  SpecialComment = { fg = colors.comment, italic = true },
  
  -- Diagnostics
  DiagnosticError = { fg = colors.error },
  DiagnosticWarn = { fg = colors.warning },
  DiagnosticInfo = { fg = colors.info },
  DiagnosticHint = { fg = colors.hint },
  
  -- Git signs
  GitSignsAdd = { fg = colors.git_add },
  GitSignsChange = { fg = colors.git_change },
  GitSignsDelete = { fg = colors.git_delete },
  
  -- Treesitter (adjust as needed for your version)
  ["@variable"] = { fg = colors.variable },
  ["@function"] = { fg = colors.func },
  ["@function.call"] = { fg = colors.func },
  ["@keyword"] = { fg = colors.keyword },
  ["@string"] = { fg = colors.string },
  ["@number"] = { fg = colors.number },
  ["@comment"] = { fg = colors.comment, italic = true },
  ["@type"] = { fg = colors.type },
  ["@constant"] = { fg = colors.constant },
  ["@operator"] = { fg = colors.operator },
}

return {
  name = "monochrome_dark",
  colors = colors,
  highlights = highlights,
}
