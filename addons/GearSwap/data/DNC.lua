-- ============================================================================== --
-- Ex1L3's GearSwap Config                                                        --
-- ============================================================================== --
-- Tcle of Contents                  Line No.                                    --
-- ============================================================================== --

-- Include/Reuqire
require 'x-include'

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

function self_command(command, arg1)
end

function macro_command(cmdParams)
  local j = cmdParams[1]:lower()
  local c = cmdParams[2]:lower()

-- ============================================================================== --
-- This section checks for Job Abilities, WeaponSkills, Macros, etc. Can be added 
-- to any job GearSwap by default.
-- ============================================================================== --

  if j == job[j] then
    if j == 'brd' then ja_brd(c) elseif j == 'bst' then ja_bst(c) elseif j == 'blm' then ja_blm(c) elseif j == 'blu' then ja_blu(c) 
    elseif j == 'cor' then ja_cor(c) elseif j == 'dnc' then ja_dnc(c) elseif j == 'drk' then ja_drk(c) elseif j == 'drg' then ja_drg(c) 
    elseif j == 'geo' then ja_geo(c) elseif j == 'mnk' then ja_mnk(c) elseif j == 'nin' then ja_nin(c) elseif j == 'pld' then ja_pld(c)     
    elseif j == 'pup' then ja_pup(c) elseif j == 'rng' then ja_rng(c) elseif j == 'rdm' then ja_rdm(c) elseif j == 'run' then ja_run(c) 
    elseif j == 'sam' then ja_sam(c) elseif j == 'sch' then ja_sch(c) elseif j == 'smn' then ja_smn(c) elseif j == 'thf' then ja_thf(c) 
    elseif j == 'war' then ja_war(c) elseif j == 'whm' then ja_whm(c) else windower.add_to_chat(222, j.." is not a job!") end
  elseif j == 'mac' then
    mac(c)
  end

-- ============================================================================== --
-- This section can contain any long macro functions 
-- ============================================================================== --
  function mac(macro)
    local m = macro
    -- Maybe can just macro CF -> WS -> RF -> WS -> presto -> step 
    -- DNC Opener:
    -- PrePull -> NFR -> RF -> Saber Dance -> HSB-> Pull -> QS -> make TP til 
    -- RF rdy -> warbuffs macro -> if GP and Trance then super cobo else mini
    -- combo -> RF WS -> RF WS -> mini combo
    --
    -- DNC Super combo: << 5 Steps + 3kTP >> 
    -- Climactic F(1s) -> WS -> RF(4s) -> Grand Pas -> WS -> RF -> WS -> Trance -> WS -> RF
    -- -> WS -> RF -> WS -> make tp -> Climactic F -> WS -> make tp -> WS
    -- 
    -- DNC Mini combo: << 5 Steps + 3kTP >>
    -- Climactic F(1s) -> WS -> RF(4s) -> WS
    if m == 'warbuffs' then windower.send_command('input '..war[bz],w.i,war[wc],w.i,)
    elseif m == 'pqs' then windower.send_command('input '..dnc[pr]..w.i..dnc[qs]) 
    elseif m == 'pbs' then windower.send_command('input '..dnc[pr]..w.i..dnc[bs]) 
    elseif m == 'pss' then windower.send_command('input '..dnc[pr]..w.i..dnc[ss]) 
    elseif m == 'pfs' then windower.send_command('input '..dnc[pr]..w.i..dnc[fs]) 
        end
  end
end
