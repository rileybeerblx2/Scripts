local library = loadstring(game:HttpGet("https://pastebin.com/raw/eKwyeQa0", true))()

local tab1 = library:CreateTab("Main", false, Color3.new(255, 255, 255))
local Label = library:MakeLabel(tab1, "Riley Hub V4 - (Survive And Kill The Killers In Area 51)")
local button =
    library:MakeButton(
    tab1,
    "Get All Weapons",
    function(button)
        local HP = game.Players.LocalPlayer.Character.HumanoidRootPart
        function GetWepons(Weapon)
            firetouchinterest(HP, Weapon, 0)
        end
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v.Name:match("WEAPON") and v:IsA("Part") then
                GetWepons(v)
            end
        end
    end
)
local button2 =
    library:MakeButton(
    tab1,
    "infinite Ammo",
    function(button2)
        for i, v in pairs(getgc()) do
            if type(v) == "function" and islclosure(v) and not is_synapse_function(v) then
                local x = debug.getconstants(v)
                if table.find(x, "ammo") and table.find(x, "update_ammo_gui") and table.find(x, "has_scope") then
                    debug.setconstant(v, 2, -999999)
                end
            end
        end
    end
)
local ZombieEsp =
    library:MakeToggle(
    tab1,
    "Killer Esp",
    false,
    function(ZombieEsp)
        if ZombieEsp.Text == "ON" then
            _G.lol = true
        else
            _G.lol = false
        end
        repeat
            local function esp(player)
                local b = Instance.new("BoxHandleAdornment", player)
                b.AlwaysOnTop = true
                b.ZIndex = 5
                b.Size = player.Size
                b.Adornee = player
                b.Transparency = 0.8
            end

            function Main(Esp)
                for i, v in pairs(Esp:GetChildren()) do
                    if v:IsA("BasePart") and not v:FindFirstChild("BoxHandleAdornment") then
                        esp(v)
                    end
                end
            end

            for i, v in pairs(game.Workspace:GetDescendants()) do
                pcall(
                    function()
                        if v:FindFirstChild("Zombie") and v.Name ~= game.Players.LocalPlayer.Name then
                            Main(v)
                        end
                    end
                )
            end
            wait(7)
        until _G.lol == false
        if _G.lol == false then
            for i, v in pairs(game.Workspace.Killers:GetDescendants()) do
                if v:IsA("BoxHandleAdornment") then
                    v:Destroy()
                end
            end
        end
    end
)

local plrEsp =
    library:MakeToggle(
    tab1,
    "Player Esp",
    false,
    function(plrEsp)
        if plrEsp.Text == "ON" then
            _G.on = true
        else
            _G.on = false
        end
        repeat
            local function esp(player)
                local b = Instance.new("BoxHandleAdornment", player)
                b.AlwaysOnTop = true
                b.ZIndex = 5
                b.Size = player.Size
                b.Adornee = player
                b.Transparency = 0.8
            end

            function Main(Esp)
                for i, v in pairs(Esp:GetChildren()) do
                    if v:IsA("BasePart") and not v:FindFirstChild("BoxHandleAdornment") then
                        esp(v)
                    end
                end
            end
        for i, v in pairs(game.Workspace:GetDescendants()) do
            pcall(
                function()
                    if v:FindFirstChild("Humanoid") and v.Parent.Name == "Characters to kill" and v.Name ~= game.Players.LocalPlayer.Name then
                    Main(v)
                    end
                end)
            end
            wait(7)
        until _G.on == false
        if _G.on == false then
            for i, v in pairs(game:GetService("Workspace")["Characters to kill"]:GetDescendants()) do
                if v:IsA("BoxHandleAdornment") then
                    v:Destroy()
                end
            end
        end
    end
)
local Label1 = library:MakeLabel(tab1, "Other Features")
local SpamDoor =
    library:MakeToggle(
    tab1,
    "SpamCloseDoors",
    false,
    function(SpamDoor)
        while wait() do
            if SpamDoor.Text == "ON" then
                for i, v in pairs(game:GetService("Workspace").AREA51.Doors:GetDescendants()) do
                    if v:IsA("ClickDetector") and v.Parent.Name == "Close" then
                        fireclickdetector(v)
                    end
                end
            else
                break
            end
        end
    end
)
local Owner = library:MakeLabel(tab1, "Sub To RileyBeeRBLX")
