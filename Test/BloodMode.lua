--!server

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Bricks = ReplicatedStorage.Bricks
local Modes = Bricks.Modes
local Blood = Modes.BloodMode

Blood.Value = true
print("Enabled blood mode debugging.")
