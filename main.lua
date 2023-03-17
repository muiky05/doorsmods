print("Hell mode activated.")

-- Define the spawner
local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()

-- Create an entity
local entityHellspawn = Spawner.createEntity({
    CustomName = "Hellspawn",
    Model = "rbxassetid://12805968322", -- Your entity's model url here ("rbxassetid://12627226505" or GitHub raw url)
    Speed = 250,
    MoveDelay = 4,
    HeightOffset = 1,
    CanKill = true,
    KillRange = 10,
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
    DeathMessage = {"You died to Hellspawn.", "I've never seen this one before.", "Something is...", "Different.", "You'll have to figure it out on your own."},
    IsCuriousLight = false
})

local entitySplitter = Spawner.createEntity({
    CustomName = "Splitter",
    Model = "rbxassetid://12814720354", -- Your entity's model url here ("rbxassetid://12627226505" or GitHub raw url)
    Speed = 250,
    MoveDelay = 4,
    HeightOffset = 1,
    CanKill = true,
    KillRange = 10,
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

-- Load the system
while task.wait() do
    wait(240)
    Spawner.runEntity(entityHellspawn)
    wait(90)
    Spawner.runEntity(entitySplitter)
    wait(120)
    Spawner.runEntity(entityHellspawn)
    wait(180)
    Spawner.runEntity(entityHellspawn)
    wait(600)
    Spawner.runEntity(entitySplitter)
    wait(120)
end
