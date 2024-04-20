local opt = vim.opt

-- set true colors to terminal
opt.termguicolors = true

-- Relative line numbers.
opt.relativenumber = true
opt.nu = true

-- Absolute number of the cursor line.
opt.number = true

-- show/hide modes on default status line
opt.showmode = false

-- Column
opt.colorcolumn = "80"

-- Sets the number of spaces that a tab character represents.
-- In this configuration, tabs are represented as 2 spaces.
opt.tabstop = 2

--  Sets the number of spaces used for indentation.
--  This also determines how much an auto-indent will add.
opt.shiftwidth = 2

-- Enables the use of spaces instead of tabs.
-- When pressing the “Tab” key, Neovim inserts spaces based on the tabstop value.
opt.expandtab = true

--  Copies the indentation from the current line when starting a new line.
--  This makes the code indentation consistent.
opt.autoindent = true

-- Disables line wrapping, ensuring that long lines do not wrap to the next line.
opt.wrap = false

-- Highlights the current cursor line.
opt.cursorline = true

-- Determines the behavior of the Backspace key.
-- The value "indent,eol,start" allows you to delete the indent,
-- move to the previous line when at the start of a line,
-- and delete characters at the end of a line.
opt.backspace = "indent,eol,start"

-- Specifies the default register to use for copy and paste operations.
-- By default, Neovim uses the unnamed register.
-- This line uses the system clipboard as the default register for copying and pasting.
opt.clipboard:append("unnamedplus")

-- Specifies which characters are considered part of a keyword.
-- In this configuration, the hyphen “ is appended to the default keyword characters.
opt.iskeyword:append("-") -- Search settings

-- Search settings

-- Ignores case sensitivity when performing searches.
opt.ignorecase = true

-- If the search query contains any capital letters, it becomes case-sensitive.
-- If it’s all lowercase, it remains case-insensitive.
opt.smartcase = true

-- Appearance

--  Enables true colors for the terminal.
--  This allows Neovim to use more accurate colors for syntax highlighting and themes.
opt.termguicolors = true

-- Sets the background color for color schemes that support both light and dark variants.
opt.background = "dark"

-- Displays a sign column to prevent text shifting
opt.signcolumn = "yes"

-- Splitting windows

-- When splitting a window horizontally, the new window appears on the right.
opt.splitright = true

-- When splitting a window vertically, the new window appears below.
opt.splitbelow = true

-- Scrolling settings
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

-- copy and paste to/from the system clipboard
-- NOTE: Clipboard provider (xclip for example need to be installed)
opt.clipboard:append { "unnamed", "unnamedplus" }

