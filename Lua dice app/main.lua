local fl = require( "fltk4lua" )
math.randomseed(os.time())

local window = fl.Window( 360, 80, "Basic Dice Roller")

local title = fl.Box( 40, 10, 100, 20, "Basic Dice Roller" )
    title.labelfont = "FL_TIMES"
    title.labelsize = 20

local rolls = fl.Box( 200, 10, 100, 20)
    rolls.labelfont = "FL_TIMES"
    rolls.labelsize = 20

local exit = fl.Button( 320, 0, 40, 40, "Exit" )
function exit:callback()
    window:hide()
end

local dice4 = fl.Button( 0, 40, 30, 20, "D4" )
function dice4:callback()
    local die = math.random(1, 4)
    rolls.label = "Rolled: " .. die 
end

local dice6 = fl.Button( 30, 40, 30, 20, "D6" )
function dice6:callback()
    local die = math.random(1, 6)
    rolls.label = "Rolled: " .. die 
end

local dice8 = fl.Button( 60, 40, 30, 20, "D8" )
function dice8:callback()
    local die = math.random(1, 8)
    rolls.label = "Rolled: " .. die 
end

local dice10 = fl.Button( 90, 40, 30, 20, "D10" )
function dice10:callback()
    local die = math.random(1, 10)
    rolls.label = "Rolled: " .. die 
end

local dice12 = fl.Button( 120, 40, 30, 20, "D12" )
function dice12:callback()
    local die = math.random(1, 12)
    rolls.label = "Rolled: " .. die 
end

local dice20 = fl.Button( 150, 40, 30, 20, "D20" )
function dice20:callback()
    local die = math.random(1, 20)
    rolls.label = "Rolled: " .. die 
end

local dice22 = fl.Button( 180, 40, 30, 20, "D22" )
function dice22:callback()
    local die = math.random(1, 22)
    rolls.label = "Rolled: " .. die 
end

local dice24 = fl.Button( 210, 40, 30, 20, "D24" )
function dice24:callback()
    local die = math.random(1, 24)
    rolls.label = "Rolled: " .. die 
end

local dice28 = fl.Button( 240, 40, 30, 20, "D28" )
function dice28:callback()
    local die = math.random(1, 28)
    rolls.label = "Rolled: " .. die 
end

local dice30 = fl.Button( 270, 40, 30, 20, "D30" )
function dice30:callback()
    local die = math.random(1, 30)
    rolls.label = "Rolled: " .. die 
end

local dice36 = fl.Button( 300, 40, 30, 20, "D36" )
function dice36:callback()
    local die = math.random(1, 36)
    rolls.label = "Rolled: " .. die 
end

local dice48 = fl.Button( 330, 40, 30, 20, "D48" )
function dice48:callback()
    local die = math.random(1, 48)
    rolls.label = "Rolled: " .. die 
end

local dice60 = fl.Button( 40, 60, 30, 20, "D60" )
function dice60:callback()
    local die = math.random(1, 60)
    rolls.label = "Rolled: " .. die 
end
    dice60.color = fl.rgb_color(255, 255, 255)
    dice60.labelcolor = fl.rgb_color(0, 0, 0)

local dice100 = fl.Button( 275, 60, 40, 20, "D100" )
function dice100:callback()
    local die = math.random(1, 100)
    rolls.label = "Rolled: " .. die 
end
    dice100.color = fl.rgb_color(0, 0, 0)
    dice100.labelcolor = fl.rgb_color(255, 255, 255)

window:end_group()
window:show( arg )
fl.run()
