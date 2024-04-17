#! /bin/lua
lfs = require("lfs") -- luafilesystem library

-- Check if the correct number of arguments is provided
if #arg < 2 then
    print("\n\tUsage: lua script.lua [Character-Name] [arg]\n")
    print("-t[First letter in template]")
    print("-tA\tfor Animarum v0.7\t\t(nul)")
    print("-tD\tfor Dungeons & Dragons 5e\t(nul)")
    print("-tK\tfor Knave v1\t\t\t(nul)")
    print("\n\tScript by Dalton Wither, it is incompleate\n")
    return
end

local gamename = "unknown"
local plates = {}

-- Load all plate names from the "./templates" directory
for file in lfs.dir("./templates") do
    if string.find(file, "%.plate$") then
        local plate = string.sub(file, 1, -7)
        table.insert(plates, plate)
    end
end

-- Find the appropriate game template based on the argument provided
for _, plate in ipairs(plates) do
    if string.sub(arg[2], 3, 3) == string.sub(plate, 1 , 1) then
        gamename = plate
        break
    end
end



local filename = arg[1] .. "." .. gamename .. ".txt"
local plate_file = assert(io.open("./templates/"..gamename..".plate", "r"))
local chara_file = assert(io.open("./characters/"..filename, "w"))

chara_file:write(plate_file:read("*a"))

plate_file:close()
chara_file:close()

