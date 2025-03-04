return {
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",                                  -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" },          -- optional for lazy loading on trigger events
    opts = {
      enabled = true,                                  -- start auto-save when the plugin is loaded
      trigger_events = {                               -- See :h events
        immediate_save = { "BufLeave", "FocusLost" },  -- events that trigger an immediate save
        defer_save = { "InsertLeave", "TextChanged" }, -- events that trigger a deferred save
        cancel_deferred_save = { "InsertEnter" },      -- renamed option
      },
      condition = nil,                                 -- condition to determine whether to save the current buffer
      write_all_buffers = false,                       -- write all buffers when the current one meets `condition`
      noautocmd = false,                               -- do not execute autocmds when saving
      lockmarks = false,                               -- lock marks when saving
      debounce_delay = 1000,                           -- delay after which a pending save is executed
      debug = false,                                   -- log debug messages to 'auto-save.log'
      hook_after_saving = function()                   -- custom hook after saving
        print("Saved at " .. vim.fn.strftime("%H:%M:%S"))
      end,
    },
  },
}
