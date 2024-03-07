local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
      [[                                                   ]],
      [[                                              ___  ]],
      [[                                           ,o88888 ]],
      [[                                        ,o8888888' ]],
      [[                  ,:o:o:oooo.        ,8O88Pd8888"  ]],
      [[              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    ]],
      [[            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      ]],
      [[           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        ]],
      [[          , ..:.::o:ooOoOO8O888O8O,COCOO"          ]],
      [[         , . ..:.::o:ooOoOOOO8OOOOCOCO"            ]],
      [[          . ..:.::o:ooOoOoOO8O8OCCCC"o             ]],
      [[             . ..:.::o:ooooOoCoCCC"o:o             ]],
      [[             . ..:.::o:o:,cooooCo"oo:o:            ]],
      [[          `   . . ..:.:cocoooo"'o:o:::'            ]],
      [[          .`   . ..::ccccoc"'o:o:o:::'             ]],
      [[         :.:.    ,c:cccc"':.:.:.:.:.'              ]],
      [[       ..:.:"'`::::c:"'..:.:.:.:.:.'               ]],
      [[     ...:.'.:.::::"'    . . . . .'                 ]],
      [[    .. . ....:."' `   .  . . ''                    ]],
      [[  . . . ...."'                                     ]],
      [[  .. . ."'                                         ]],
      [[ .                                                 ]],
      [[                                                   ]],
    }

 dashboard.section.buttons.val = {
   dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
   dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
   dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
   dashboard.button("T", "  Find text", ":Telescope live_grep <CR>"),
   dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
   dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
   dashboard.button("s", "🌲 File Manager", ":E<CR>"),
}

local function footer()
 return "Beep Bop Boop"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
