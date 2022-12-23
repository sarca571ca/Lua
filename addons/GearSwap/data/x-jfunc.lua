require 'x-abilities'
require 'x-macros'
-- ============================================================================== --
-- Ex1L3's Job Ability Functions                                                  --
-- ============================================================================== --

function ja_brd(cmd)
  local ab = brd[cmd]
  local an = ab:gsub("\"", ""):gsub(" <me>", ""):gsub("/ja ", "")
  windower.send_command('input '..ab)
end
