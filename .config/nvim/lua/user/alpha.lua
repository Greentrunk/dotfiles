local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	"            __  __  ___        _____              ",
	[[         /\ \ \/__\/___\/\   /\\_   \/\/\         ]],
	[[        /  \/ /_\ //  //\ \ / / / /\/    \        ]],
	[[       / /\  //__/ \_//  \ V /\/ /_/ /\/\ \       ]],
	[[       \_\ \/\__/\___/    \_/\____/\/    \/       ]],
	"                                                  ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⡟⣿⣿⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣸⣿⣇⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣻⣿⡄⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⡿⠍⠙⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⣱⣾⠟⠀⢠⠉⠉⠉⠻⣿⣿⡇⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣽⣿⣿⣿⣿⣿⡿⠛⣡⣶⣿⣧⣤⠸⡟⠂⠀⠀⠀⢹⣿⡇⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⠇⠀⢈⣥⣿⣿⣿⣿⣿⣷⣆⢰⣆⠀⢸⡏⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣏⣿⡏⠀⣾⣾⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣷⣾⡃⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣷⡄⠘⠹⢿⣿⣍⠉⢛⣿⣿⣿⠸⣿⣿⠿⠁⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⢿⣿⣿⣿⣿⣦⣀⣿⣿⣿⣶⣾⣿⣿⣿⡇⠁⠈⡄⠀⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⢺⣿⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⡺⠁⠀⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⢸⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣏⣻⡶⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠀⣿⡏⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣬⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⣩⣿⣿⡿⠿⣻⣿⣿⣿⣿⣿⣿⣅⠄⢉⣙⣿⣿⡟⠀⠀⠀⠘⣿⡇⠀⠀⣿⣦⣿⣿⣿⣿⣿⣿⣿⣟⣻⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⠟⠋⢱⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⣸⠀⡇⢠⣿⣧⠀⢠⣿⡿⢿⠿⠋⠙⠛⠛⠛⠛⠋⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⣶⠶⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⠏⣸⣿⣿⣿⣧⠀⠀⠀⣷⠸⣿⠃⣴⣿⡟⠙⠁⠀⠀⠀⠀⠀⣾⣄⣀⡀⠉⠢⣀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⡇⠀⢉⣹⣾⣿⣿⣿⣿⣿⣿⣿⣶⣬⣿⣿⣿⣿⣦⡄⣀⡿⠀⣿⣿⣇⠹⣷⣤⣾⠇⠀⠀⠀⣰⣿⣿⣿⣿⣆⠀⠈⠳⡀⠀⠀⠀⠀⠀⠀",
	"⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢰⣿⣿⡿⢶⣿⣿⡟⢀⣤⠀⣰⣿⣿⣿⣿⡿⣭⣷⣄⡀⠘⢄⠀⠀⠀⠀⠀",
	"⣠⣾⣿⣿⢋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣼⣿⣿⣧⣾⣿⢿⡷⠟⠉⠀⠹⠟⠛⢉⠁⡀⠈⠉⠉⠑⢦⡈⠳⡀⠀⠀⠀",
	"⡏⠀⠘⣳⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠙⢿⣿⣿⣿⣿⠉⠀⢀⡉⡦⠄⠀⠀⠀⠀⣿⠀⠠⠄⠀⠀⠀⠀⠑⠠⠉⠒⢄⡀",
	"⣷⡆⢸⡯⠤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⢘⣿⣿⢋⠍⢿⣶⣽⣿⡿⢿⡄⠀⠀⣸⡯⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙",
	"⣿⣿⣄⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣾⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣷⣶⣾⣿⣤⣷⣶⣄⣰⣤⣀⣀⣀⣀⣀⣀⣀⣀",
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function pick_color()
	local colors = { "String", "Identifier", "Keyword", "Number" }
	return colors[math.random(#colors)]
end

local function footer()
local handle = io.popen("fortune")
  local fortune = handle:read("*a")
  handle:close()
  return fortune
end

dashboard.section.footer.val = footer()

-- colors
dashboard.section.footer.opts.hl = "Constant"
dashboard.section.header.opts.hl = pick_color()
dashboard.section.buttons.opts.hl = "String"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
