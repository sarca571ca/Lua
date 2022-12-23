-- ============================================================================== --
-- Ex1L3's GearSwap Config                                                        --
-- ============================================================================== --
-- Table of Contents                  Line No.                                    --
-- ============================================================================== --

-- Include/Reuqire
require 'x-include'

local args = {...}
cmd = args[2]
arg = args[3]


function get_sets()
    sets.idle = {}                  -- Leave this empty.
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
end
function precast(spell)
end
function midcast(spell)
end
function aftercast(spell)
end
function idle()
end
function status_change(new,old)
end

function self_command(command)
  if commad == 'ja' then init_ability(cmd, arg) end
end
