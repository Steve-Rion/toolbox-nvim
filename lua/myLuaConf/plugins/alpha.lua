-- [[Configure Alpha]]
return {
  {
    "alpha-nvim",
    for_cat = "general.dashboard",
    event = "VimEnter",

    after = function(plugin)
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')

      dashboard.section.header.val = {
        "                                                        ",
        "  __                   ___    __                        ",
        " /\\ \\__               /\\_ \\  /\\ \\                       ",
        " \\ \\ ,_\\   ___     ___\\//\\ \\ \\ \\ \\____    ___   __  _   ",
        "  \\ \\ \\/  / __`\\  / __`\\\\ \\ \\ \\ \\ '__`\\  / __`\\/\\ \\/'\\  ",
        "   \\ \\ \\_/\\ \\L\\ \\/\\ \\L\\ \\\\_\\ \\_\\ \\ \\L\\ \\/\\ \\L\\ \\/>  </  ",
        "    \\ \\__\\ \\____/\\ \\____//\\____\\\\ \\_,__/\\ \\____//\\_/\\_\\ ",
        "     \\/__/\\/___/  \\/___/ \\/____/ \\/___/  \\/___/ \\//\\/_/ ",
        "                                                        ",
        "                git@github.com:Steve-Rion               ",
      }

      dashboard.section.buttons.val = {
        dashboard.button("f", "   Find File", ":lua require('telescope.builtin').find_files()<cr>"),
        dashboard.button("n", "   New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "󰈚   Recent Files", ":lua require('telescope.builtin').oldfiles()<cr>"),
        dashboard.button("s", "   Restore Session", ":lua require('persistence').load()<cr>"),
        dashboard.button("q", "   Quit", ":qa<cr>"),
      }

      alpha.setup(dashboard.opts)
    end
  }
}
