-- Config for Neovide GUI
vim.o.guifont = "Fira Code:h9"

-- General
vim.opt.number = false
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
lvim.keys.insert_mode["ii"] = "<Esc>"
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["|"] = ":lua ToggleTheme() <cr> "

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.cmp.experimental.ghost_text = true
lvim.builtin.cmp.experimental.native_menu = true
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- Lualine config
lvim.builtin.lualine.style = "default"

-- Programming languages that i use
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

-- Lsp Configuration
lvim.lsp.automatic_servers_installation = false
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { exe = "prettierd", filetypes = { "html", "vue", "css", "scss" } }
}

-- Additional Plugins
lvim.plugins = {
  {
    "github/copilot.vim"
  },
  {
    "sainnhe/edge"
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    requires = "tpope/vim-dadbod"
  },
}

-- GithubCopilot Configuration
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
local cmp = require "cmp"
lvim.builtin.cmp.mapping["<Tab>"] = function(fallback)
  if cmp.visible() then
    cmp.select_next_item()
  else
    local copilot_keys = vim.fn["copilot#Accept"]()
    if copilot_keys ~= "" then
      vim.api.nvim_feedkeys(copilot_keys, "i", true)
    else
      fallback()
    end
  end
end

-- Custom functions
function ToggleTheme()
  if (vim.api.nvim_get_var("colors_name") == "onedarker") then
    vim.o.background = "light"
    vim.api.nvim_command("colorscheme edge")
  else
    vim.o.background = "dark"
    vim.api.nvim_command("colorscheme onedarker")
  end
end
