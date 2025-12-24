return {
  -- 1. Add Swift to Treesitter (Syntax Highlighting)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "swift" })
      end
    end,
  },

  -- 2. Configure LSP (SourceKit-LSP)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {
          -- sourcekit-lsp comes with Xcode. 
          -- Ensure you have run `xcode-select --install` or have Xcode installed.
          cmd = { "sourcekit-lsp" },
          filetypes = { "swift" },
          root_dir = function(filename, _)
            local util = require("lspconfig.util")
            return util.root_pattern("buildServer.json")(filename)
              or util.root_pattern("*.xcodeproj", "*.xcworkspace")(filename)
              or util.find_git_ancestor(filename)
              or util.root_pattern("Package.swift")(filename)
          end,
          capabilities = {
            workspace = {
              didChangeWatchedFiles = {
                dynamicRegistration = true,
              },
            },
          },
        },
      },
    },
  },

  -- 3. Formatting
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        swift = { "swift_format" }, 
      },
    },
  },

  -- 4. Xcodebuild.nvim (Essential for SwiftUI dev: Build, Run, Device Selection)
  {
    "wojciech-kulik/xcodebuild.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("xcodebuild").setup({
        show_build_progress_bar = true,
        logs = {
          auto_open_on_success_tests = false,
          auto_open_on_failed_tests = true,
          auto_open_on_success_build = false,
          auto_open_on_failed_build = true,
        },
      })
      
      -- Add convenient keymaps for building/running
      local map = vim.keymap.set
      map("n", "<leader>X", "<cmd>XcodebuildPicker<cr>", { desc = "Xcodebuild Project Picker" })
      map("n", "<leader>xb", "<cmd>XcodebuildBuild<cr>", { desc = "Build Project" })
      map("n", "<leader>xr", "<cmd>XcodebuildBuildRun<cr>", { desc = "Build & Run" })
      map("n", "<leader>xt", "<cmd>XcodebuildTest<cr>", { desc = "Run Tests" })
      map("n", "<leader>xd", "<cmd>XcodebuildSelectDevice<cr>", { desc = "Select Device" })
    end,
  },
  
  -- 5. Snippets Support 
  -- Note: Since you are using 'blink.cmp', it handles snippets internally or via its own mechanism.
  -- 'friendly-snippets' is already installed and likely used by blink.cmp automatically.
  -- We removed the explicit 'luasnip' require to prevent startup errors.
}
