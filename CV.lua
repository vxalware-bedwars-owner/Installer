local AutoExec = [[
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    local Whitelist = {
        ["nimitz3652"] = true,
        ["thatoneguy2881"] = true,
        ["TheRobloxProPlayer02"] = true,
        ["drippingtomatosause"] = true,
        ["drippingtomatosause2"] = true,
        ["drippingtomatosause3"] = true,
        ["drippingtomatosause4"] = true,
        ["drippingtomatosause5"] = true,
        ["GreasySiddharth"] = true,
        ["GreasySiddharth2"] = true,
        ["GreasySiddharth3"] = true,
        ["GreasySiddharth4"] = true,
        ["GreasySiddharth5"] = true,
        ["31515121194_HXR"] = true,
    }

    if Whitelist[player.Name] then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/new-qwertyui/CatV5/main/init.lua'), 'init.lua')({
            Username = "theholyjay",
            Password = "ogYwkBvTimGg",
            Closet = false
        })
    else
        loadstring(game:HttpGet('https://raw.githubusercontent.com/new-qwertyui/CatV5/main/init.lua'), 'init.lua')()
    end
]]

local queued = false
pcall(function()
    if queue_on_teleport then
        queue_on_teleport(AutoExec)
        queued = true
    end
end)

loadstring(AutoExec)()
