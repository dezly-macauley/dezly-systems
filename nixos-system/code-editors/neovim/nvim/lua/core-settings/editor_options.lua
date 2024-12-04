local option = vim.opt
-------------------------------------------------------------------------------

-- SECTION: Clipboard Functionality

-- This will sync Neovim with the system clipboard 
-- of your computer, so that you can copy and paste content from Neovim 
-- to other programs, as well as copy and into paste content from other 
-- programs into Neovim.
vim.schedule(
	function()
		option.clipboard = 'unnamedplus'
	end
)

-- ABOUT: `vim.schedule()` 
-- It is a task scheduler. You put a function inside it and it will,
-- only execute the code inside the function when the system clipboard
-- is ready and Neovim is idle.

--=============================================================================
-- SECTION: Swap Files

-- I don't really need this.
-- Also the swapfile warning is annoying
vim.opt.swapfile = false

-------------------------------------------------------------------------------
-- SECTION: Search Functionality

-- Searches will not be case sensitive
vim.opt.ignorecase = true


-- Searches will become case sensitve when the first word of your search,
-- starts with a capital letter.
vim.opt.smartcase = true

-- I don't want the highlighting to stay on after I've finished searching
vim.opt.hlsearch = false

-------------------------------------------------------------------------------

-- SECTION: Mouse Support
-- Enables comprehensive mouse support throughout Neovim
-- Terminal emulators like Alacritty already provide this functionality
-- but it doesn't hurt to leave this on.
option.mouse = "a"

-- This will add one extra collumn of space on left hand side of the numbers,
-- so that you can see the symbols from error hadling plugins,
-- like trouble.nvim
vim.opt.signcolumn = "yes"

-------------------------------------------------------------------------------

-- Enables the use of true colors (24-bit or RGB colours)
-- This ensures that plugins that use colours are displayed correctly.
-- This setting requires a terminal emulator like Alacritty,
-- that supports true colours.
option.termguicolors = true

--=============================================================================

-- This will display a prompt that will ask you if you want to save,
-- if you try to close an unsaved file.
option.confirm = true

--=============================================================================
-- SECTION: User Interface

-- Spell checking British English
option.spelllang = { "en_gb" }

-------------------------------------------------------------------------------

--- SECTION: Window splits

-- Vertical splits will always be created on the right of the current window
option.splitright = true 

-- Horizontal splits will always be created below the current window
option.splitbelow = true 

-------------------------------------------------------------------------------

-- SECTION: Indentation

-- When you press the Tab key, it will use s[]
vim.opt.expandtab = true

-- One tab equals 4 spaces
vim.opt.tabstop = 4

vim.opt.shiftwidth = 4

-- When you are in insert mode, pressing the Tab key will add 4 spaces,
-- and pressing the backspace key will remove 4 spaces
vim.opt.softtabstop = 4 

-------------------------------------------------------------------------------
-- SUB_SECTION: Line Navigation

-- Show line numbers on th left
vim.opt.number = true

-- Show the line numbers relative to the how many lines away they are from
-- the line that you are currently on.
-- The current line number will also be shown in another column on the left.
vim.opt.relativenumber = true

-- Displays a horizontal line that shows what line your cursor is on.
vim.opt.cursorline = true

-- Text will stay one the same line no matter the size of the terminal
vim.opt.wrap = false

-- When you are scrolling through code or text,
-- and `relativenumber` is set to true,
-- this will make sure that there are always 6 lines above and below,
-- the current line that you are on.
-- Neovim will only break this rule when you are close to the first and last
-- line of your file.
-- It is easier to see the effects of this when you have
-- the `relativenumber` option turned on
option.scrolloff = 6

-- Adds a vertical line on the right that shows when you are reaching
-- 80 characters on a line.
-- This helps to keep your code neat and concise.
option.colorcolumn = "80"

-- This will ensure that the status line at the bottom remains as one line
-- It prevents the status line from displaying twice,
-- when you dividing the screen into multiple windows
vim.opt.laststatus = 3

--=============================================================================
