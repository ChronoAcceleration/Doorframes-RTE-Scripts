--!server

print("Loaded Hurry :3")
print("For Content Purposes, will delay for around............... 20 seconds!!11!1")

task.wait(20)

local InsertService = game:GetService("InsertService")
local ServerScriptService = game:GetService("ServerScriptService")
local Game = ServerScriptService.Game
local entityHandler = require(Game.entityHandler)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bricks = ReplicatedStorage.Bricks
local Hint = Bricks.Hint

local Config = {
	Model = game.InsertService:LoadAsset(17234289600).Hurry,
	Name = "Hurry",
	Speed = 100,
	DelayTime = 4,
	Damage = 100,
	KillRange = 50,
	HeightOffset = 1,
	BreakLights = false,
	FlickerLights = 5,
	BackwardsMovement = false,
	AttackDelay = 0.5,
	HalfRebounds = false
}

local Possible = {
	"He is here.",
	"Run idiot.",
	"YOU'RE DONE.",
	"GIVE UP.",
	"HURRY up.",
	"NO NO NO NO NO",
	"ITS THE END",
	"WE'RE DONE!",
	"DONT HIDE",
	"HIDE",
	"KNEEL"
}

local ScaryTextTask = task.spawn(function()
	while task.wait(0.04) do
		Hint:FireAllClients(Possible[math.random(#Possible)], 0.05)
	end
end)

Debug = {
	OnEntityAttack = function(Player)
		if ScaryTextTask then
			task.cancel(ScaryTextTask)
			print('ded')
		end
	end
}


entityHandler.Spawn(Config)
