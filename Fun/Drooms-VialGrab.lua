for i = 1, 11 do
	local Players = game:GetService("Players")
	local ServerStorage = game:GetService("ServerStorage")

	local Tool = ServerStorage.StarVial:Clone()
	Tool.Parent = Players.TotallyNotChrono.Backpack
	
	task.wait()
end
