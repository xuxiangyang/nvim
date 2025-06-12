---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>dn"] = {
      "<cmd> DapStepOver <CR>",
      "step over",
    },
    ["<leader>di"] = {
      "<cmd> DapStepInto <CR>",
      "Step in",
    },
    ["<leader>do"] = {
      "<cmd> DapStepOut <CR>",
      "Step out",
    },
    ["<leader>dq"] = {
      "<cmd> DapTerminate <CR>",
      "Step out",
    },
    ["<leader>de"] = {
      "<cmd> DapEval <CR>",
      "Eval",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

M.tabufline = {
  plugin = true,
  n = {
    ["<leader>tg"] = {
      function()
        local tabline = require "nvchad.tabufline"
        local t_idx_str = vim.fn.input "Enter Tab number: "
        local tidx = tonumber(t_idx_str)
        local bufs = tabline.bufilter() or {}
        if tidx > #bufs or tidx < 1 then
          print("Invalid tab number input is " .. tidx .. " len is " .. #bufs)
          return
        end
        vim.cmd("b" .. bufs[tidx])
      end,
      "Goto assign tab",
    },
    ["<leader>tl"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next tab",
    },
    ["<leader>th"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto pre tab",
    },
    ["<leader>txr"] = {
      function()
        require("nvchad.tabufline").closeBufs_at_direction "right"
      end,
      "Close tab to right",
    },
    ["<leader>txo"] = {
      function()
        require("nvchad.tabufline").closeOtherBufs()
      end,
      "Close other tab",
    },
  },
}

M.nvim_window = {
  n = {
    ["<leader>wp"] = {
      function()
        require("nvim-window").pick()
      end,
      "Pick window",
    },
    ["<C-w>p"] = {
      function()
        require("nvim-window").pick()
      end,
      "Pick window",
    },
  },
}

M.disabled = {
  n = {
    ["<tab>"] = "",
    ["<S-tab>"] = "",
  },
}

return M
