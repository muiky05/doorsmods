print("Hell mode activated.")

function walkglitch()
    local bambam = Instance.new("BodyThrust")
    bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    bambam.Force = Vector3.new(2, 0, 2)
    bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    wait(1)
    bambam:Destroy()
end

-- Define the spawner
local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()

-- Create an entity
local entityHellspawn = Spawner.createEntity({
    CustomName = "Hellspawn",
    Model = "rbxassetid://12816757429", -- Your entity's model url here ("rbxassetid://12627226505" or GitHub raw url)
    Speed = 250,
    MoveDelay = 4,
    HeightOffset = 1,
    CanKill = true,
    KillRange = 50,
    SpawnInFront = false,
    ShatterLights = true,
    FlickerLights = {
        Enabled = true,
        Duration = 1
    },
    Cycles = {
        Min = 2,
        Max = 2,
        Delay = 2
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    ResistCrucifix = false,
    BreakCrucifix = true,
    DeathMessage = {"You died to Hellspawn.", "He is silent apart from the loud banging.", "He always rebounds once!", "Make sure not to stay in the closet for too long.", "Good luck."},
    IsCuriousLight = false
})

local entitySplitter = Spawner.createEntity({
    CustomName = "Splitter",
    Model = "rbxassetid://12816765807", -- Your entity's model url here ("rbxassetid://12627226505" or GitHub raw url)
    Speed = 250,
    MoveDelay = 4,
    HeightOffset = 1,
    CanKill = true,
    KillRange = 50,
    SpawnInFront = false,
    ShatterLights = true,
    FlickerLights = {
        Enabled = true,
        Duration = 5
    },
    Cycles = {
        Min = 1,
        Max = 1,
        Delay = 2
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    ResistCrucifix = false,
    BreakCrucifix = true,
    DeathMessage = {"You died to Splitter.", "I've never seen this one before.", "Something is...", "Different.", "You'll have to figure it out on your own."},
    IsCuriousLight = false
})

game:GetService("Lighting").FogEnd = 50
game:GetService("Lighting").FogColor = Color3.new(0.25, 0, 0)

-- Load the system
while task.wait() do
    wait(200)
    game.Workspace.Ambience.Rooms.DarkAmbience.Volume = 2.5
    game.Workspace.Ambience.Rooms.DarkAmbience:Play()
    walkglitch()
    wait(40.48)
    game.Workspace.Ambience.Hotel.Ambience_Hotel2.Volume = 0.1
    game.Workspace.Ambience.Rooms.DarkAmbience:Stop()
    walkglitch()
    wait(60)
    Spawner.runEntity(entityHellspawn)
    wait(120)
    game.Workspace.Ambience.Hotel.Ambience_Hotel2.Volume = 5
    game.Workspace.Ambience.Hotel.Ambience_Hotel2:Play()
    wait(120)
    game.Workspace.Ambience.Hotel.Ambience_Hotel2.Volume = 0.1
    game.Workspace.Ambience.Hotel.Ambience_Hotel2:Stop()
    Spawner.runEntity(entitySplitter)
    wait(90)
    Spawner.runEntity(entityHellspawn)
    wait(60)
    game.Workspace.Ambience.Rooms.DarkAmbience.Volume = 2.5
    game.Workspace.Ambience.Rooms.DarkAmbience:Play()
    wait(60)
    Spawner.runEntity(entityHellspawn)
    wait(300)
    Spawner.runEntity(entitySplitter)
end
