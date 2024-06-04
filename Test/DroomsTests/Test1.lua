--!server

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bricks = ReplicatedStorage:WaitForChild("Bricks")
local Caption = Bricks:WaitForChild("Caption")

local CurrentRoomsFolder = workspace:WaitForChild("CurrentRooms")
local CurrentRoom = CurrentRoomsFolder:WaitForChild("CurrentRoom")

Caption:FireAllClients("Horror Mode Loaded, Open Door 1 to Begin!")

--// Debug Log

CurrentRoom.Changed:Connect(function()
    Caption:FireAllClients("Current Room: ", tostring(CurrentRoom.Value))
end)
