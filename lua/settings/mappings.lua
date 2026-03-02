-- n, v, i, t = mode names
local M = {}

M.general = {
  i = {
    ["<S-Tab>"] = { "<right>" },
  },

  n = {
    ["<C-h>"] = { "<C-w>h" },
    ["<C-j>"] = { "<C-w>j" },
    ["<C-k>"] = { "<C-w>k" },
    ["<C-l>"] = { "<C-w>l" },

    ["<F1>"] = { ":NvimTreeToggle<cr>" },

    -- Fold mappings
    ["<zj>"] = { ":call NextClosedFold('j')<cr>" },
    ["<zk>"] = { ":call NextClosedFold('k')<cr>" },
    ["<F2>"] = { "za" }, -- Toggle fold
    -- Fold mappings

    -- Resize
    ["<Tab>h"] = { ":vertical resize -4<cr>" },
    ["<Tab>l"] = { ":vertical resize +4<cr>" },
    ["<Tab>j"] = { ":resize +4<cr>" },
    ["<Tab>k"] = { ":resize -4<cr>" },
    -- Resize

    -- C / C++
    ["<F4>"] = {
      ":! compwrite && clear && g++ -std=c++17 -O3 %<cr> | :vsp |terminal ./a.out<inp.txt <cr>",
    },
    ["<F5>"] = {
      ":! compwrite && clear && gcc -std=c99 -O3 %<cr> | :vsp |terminal ./a.out<inp.txt <cr>",
    },
    -- C / C++

    -- Buffer
    ["<S-l>"] = {
      function()
        require("nvchad.tabufline").next()
      end,
      "Goto next buffer",
    },

    ["<S-h>"] = {
      function()
        require("nvchad.tabufline").prev()
      end,
      "Goto prev buffer",
    },

    ["<leader>d"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
    -- Buffer

		-- Telescope
    ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "Find files" },
    ["<leader>fa"] = {
      "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
      "Find all",
    },
    ["<c-g>"] = {
      '<cmd>Telescope live_grep search_dirs={vim.fn.expand("%:p")}<CR>',
      "Live grep",
    },
    ["<leader>fh"] = { "<cmd>Telescope help_tags<CR>", "Help page" },
    ["<leader>fo"] = { "<cmd>Telescope oldfiles<CR>", "Find oldfiles" },
    ["<leader>fz"] = {
      "<cmd>Telescope current_buffer_fuzzy_find<CR>",
      "Find in current buffer",
		},
		-- Telescope

		-- Lsp
		["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>ra"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },

    ["ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["gl"] = {
      function()
        vim.diagnostic.open_float({ border = "rounded" })
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev({ float = { border = "rounded" } })
      end,
      "Goto prev diagnostic",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next({ float = { border = "rounded" } })
      end,
      "Goto next diagnostic",
    },

    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },
		-- Lsp
  },

  t = {
    ["<C-x>"] = {
      vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
      "Escape terminal mode",
    },
  },

  v = {
    ["<C-c>"] = {
      'y:call system("xclip -i -selection clipboard", getreg("\\""))<CR>'
        .. ':call system("xclip -i", getreg("\\""))<CR>',
    },
    ["<A-j>"] = { ":m .+1<CR>==" },
    ["<A-k>"] = { ":m .-2<CR>==" },
    ["<leader>e"] = {
      ":<C-U>let i=1 | '<,'>g/^/s//\\=i/ | let i=i+1 | nohl<cr>",
    },
    ["<"] = { "<gv" },
    [">"] = { ">gv" },

		-- Lsp
    ["ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
		-- Lsp
  },

  x = {
    ["J"] = { ":move '>+1<CR>gv-gv" },
    ["K"] = { ":move '<-2<CR>gv-gv" },
    ["<A-j>"] = { ":move '>+1<CR>gv-gv" },
    ["<A-k>"] = { ":move '<-2<CR>gv-gv" },
  },
}

return M
