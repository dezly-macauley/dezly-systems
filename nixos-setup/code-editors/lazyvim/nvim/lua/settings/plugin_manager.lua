local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import/override with your plugins
    ---------------------------------------------------------------------------
    -- SECTION: Custom Plugins
    { import = "plugins.user-interface"},
    { import = "plugins.file-navigation" },
    { import = "plugins.markdown-editing" },

    ---------------------------------------------------------------------------
    -- SECTION: Language Support

    ---------------------------------------------------------------------------
        -- SUB_SECTION: Low-Level Systems Programming

        { import = "lazyvim.plugins.extras.lang.rust" },

    ---------------------------------------------------------------------------
        -- SUB_SECTION: Database Management / Data Serialization

        { import = "lazyvim.plugins.extras.lang.sql" },
        { import = "lazyvim.plugins.extras.lang.json" },
        { import = "lazyvim.plugins.extras.lang.toml" },

    ---------------------------------------------------------------------------

    -- SUB_SECTION: Back-End Development

        { import = "lazyvim.plugins.extras.lang.go" },
        { import = "lazyvim.plugins.extras.lang.python" },
        { import = "lazyvim.plugins.extras.lang.php" },

    ---------------------------------------------------------------------------
        -- SUB_SECTION: Front-End Development

        { import = "lazyvim.plugins.extras.lang.tailwind" },
        { import = "lazyvim.plugins.extras.lang.typescript" },
        { import = "lazyvim.plugins.extras.lang.svelte" },

    ---------------------------------------------------------------------------

        -- SUB_SECTION: Documentation

        -- { import = "lazyvim.plugins.extras.lang.markdown" },

    ---------------------------------------------------------------------------
    },
    defaults = {
        -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
        -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
        lazy = false,
        -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
        -- have outdated releases, which may break your Neovim install.
        version = false, -- always use the latest git commit
        -- version = "*", -- try installing the latest stable version for plugins that support semver

        -- NOTE: Use this to disable all of the default LazyVim 
        -- editor keymaps
        keymaps = false,

    },
    install = { colorscheme = { "tokyonight", "habamax" } },
    checker = {
        enabled = true, -- check for plugin updates periodically
        notify = false, -- notify on update
    }, -- automatically check for plugin updates
    performance = {
        rtp = {
        -- disable some rtp plugins
        disabled_plugins = {
            "gzip",
            -- "matchit",
            -- "matchparen",
            -- "netrwPlugin",
            "tarPlugin",
            "tohtml",
            "tutor",
            "zipPlugin",
        },
        },
    },
})
