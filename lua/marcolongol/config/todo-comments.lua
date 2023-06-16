-- todo-comments config

local M = {}

local todo_comments = require("todo-comments")

function M.setup()
  todo_comments.setup({
    keywords = {
      -- FIX: Fix issue
      FIX = { icon = "律", color = "error", alt = { "FIXME", "BUG", "FIXIT", "FIX", "ISSUE" } },
      -- ERROR: Error in code
      ERROR = { icon = " ", color = "error", alt = { "ERROR" } },
      -- HACK: Hack workaround
      HACK = { icon = " ", color = "hack", alt = { "HACK" } },
      -- WARN: Warning message
      WARN = { icon = "裂", color = "warning", alt = { "WARNING", "XXX" } },
      -- TODO: Todo item
      TODO = { icon = " ", color = "info", alt = { "TODO" } },
      -- PERF: Performance issue
      PERF = { icon = "龍", color = "perf", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      -- NOTE: Note message
      NOTE = { icon = " ", color = "info", alt = { "NOTE", "INFO" } },
      -- REFS: Reference other resources
      REFS = { icon = "", color = "refs", alt = { "REF", "REFS", "REFERENCE", "REFERENCES" } },
      -- TEST: Testing related
      TEST = { icon = " ", color = "test", alt = { "TEST", "TESTS", "UNITTEST", "UNITTESTS" } },
      -- ADD: Add something
      ADD = { icon = " ", color = "add", alt = { "ADD", "NEW" } },
      -- UPDATE: Update something
      UPDATE = { icon = " ", color = "update", alt = { "UPDATE", "CHANGE" } },
      -- DELETE: Delete
      DELETE = { icon = " ", color = "error", alt = { "DELETE", "REMOVE" } },
      -- REVIEW: Code review
      REVIEW = { icon = " ", color = "info" },
      -- DOC: Documentation only changes
      DOC = { icon = " ", color = "doc" },
      -- DRY: Don't Repeat Yourself
      DRY = { icon = " ", color = "info" },
      -- IMPROVE: Improve code structure/format
      IMPROVE = { icon = " ", color = "improve" },
      -- WIP: Work In Progress
      WIP = { icon = "כֿ", color = "wip", alt = { "PROGRESS" } },
      -- SECTION: Section marker
      SECTION = { icon = " ", color = "info", alt = { "SECTION" } },
    },
    highlight = {
      multiline = true,
      multiline_pattern = "^.",
      multiline_context = 10,
      before = "",
      pattern = [[.*<(KEYWORDS)\s*:]],
      comments_only = true,
      keyword = "wide",
      after = "fg",
    },
    search = {
      command = "rg",
      args = {
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
      },
      pattern = [[\b(KEYWORDS):]],
    },
    colors = {
      error = { "LspDiagnosticsDefaultError", "ErrorMsg", "#DC2626" },
      warning = { "LspDiagnosticsDefaultWarning", "WarningMsg", "#FBBF24" },
      info = { "LspDiagnosticsDefaultInformation", "#2563EB" },
      hack = { "LspDiagnosticsDefaultHint", "#a0ff0f" },
      add = { "DiffAdd", "#34D399" },
      update = { "DiffChange", "#FBBF24" },
      test = { "DiffText", "#641e78" },
      wip = { "DiffText", "#e6be82" },
      improve = { "DiffText", "#ff9664" },
      doc = { "DiffText", "#465a64" },
      perf = { "DiffText", "#78beff" },
      refs = { "DiffText", "#d0d0d0" },
    },
  })
end

return M
