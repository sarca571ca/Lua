require 'x-include'

-- local args = {...}
-- cmd = args[1]
-- arg = args[2]
-- function send_cmd_user(command)
--     if string.byte(1) ~= 0x40 then
--         command='@'..command
--         print("1")
--     end
--     print("2")
--     -- windower.send_command(command)
-- end
-- send_cmd_user(cmd)
-- print(string.byte(1))
-- print(0x40)
-- init_ability(cmd, arg)
function macro(...)
  local results
  local var_inps = {...}
  local val1 = var_inps[1]
  local val2 = var_inps[2]
  -- print(table.unpack(var_inps))
  -- print(val1, val2)
  -- print(var_inps)
  -- print(type(var_inps))
  print(table.concat(var_inps,' '))
  print("val1: "..val1.."\nval2: "..val2)
end
macro(...)
