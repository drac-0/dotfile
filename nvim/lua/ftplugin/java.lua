local jdtls = require('jdtls')
local home = os.getenv("HOME")

-- VERY IMPORTANT: detect the 'app' module
local root_markers = { "settings.gradle.kts", "build.gradle.kts", "gradlew", ".git" }
local root_dir = require("jdtls.setup").find_root(root_markers)

-- If we're in a multi-module project, go into 'app'
if vim.fn.isdirectory(root_dir .. "/app") == 1 then
  root_dir = root_dir .. "/app"
end

local workspace_dir = home .. "/.cache/jdtls-workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local config = {
  cmd = { "jdtls", "-data", workspace_dir },
  root_dir = root_dir,
}

jdtls.start_or_attach(config)

