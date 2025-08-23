local celeris = require("celeris")

local session_root = "/home/sentience/dotfiles"
local session = celeris.Session.new({ root = session_root })

local nvim = celeris.Window.new(session, { name = "nvim", root = session_root .. "/.config" })
nvim:default_pane():run_command("nvim")

local build = celeris.Window.new(session, {})
build:default_pane():split("horizontal", {})

nvim:select()
session:attach()
