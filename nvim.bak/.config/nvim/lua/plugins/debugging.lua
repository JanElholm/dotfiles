return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "Willem-J-an/nvim-dap-powershell",
  },
  config = function()
    require("dapui").setup()
    require("dap-powershell").setup()
    require("nvim-dap-virtual-text").setup()
    local dap = require("dap")
    local dapui = require("dapui")
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    vim.keymap.set("n", "<leader>db", function()
      dap.toggle_breakpoint()
    end, { desc = "Toggle Breakpoint" })
    vim.keymap.set("n", "<leader>dc", function()
      dap.continue()
    end, { desc = "Continue" })
    vim.keymap.set("n", "<leader>di", function()
      dap.step_into()
    end, { desc = "Step Into" })
    vim.keymap.set("n", "<leader>do", function()
      dap.step_over()
    end, { desc = "Step Over" })
    vim.keymap.set(
      "n",
      "<leader>dr",
      ":lua require('dapui').open({ reset = true })<cr>",
      { desc = "Reset debugging windows" }
    )
  end,
}
