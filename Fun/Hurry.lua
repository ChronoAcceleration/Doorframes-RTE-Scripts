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
	Speed = 300,
	DelayTime = 10,
	Damage = 100,
	KillRange = 50,
	HeightOffset = 0,
	BreakLights = false,
	FlickerLights = 5,
	BackwardsMovement = false,
	AttackDelay = 0.5,
	HalfRebounds = false,
	Cycles = {
		Max = 1,
		Min = 1,
		WaitTime = 4,
	}
}

Hint:FireAllClients("YOU'RE DEAD DEAD DEAD DEAD DEAD DEAD DEAD DEADDEAD DEAD DEAD DEADDEAD DEAD DEAD DEADDEAD DEAD DEAD DEADDEAD DEAD DEAD DEADDEAD DEAD DEAD DEADDEAD DEAD DEAD DEADDEAD DEAD DEAD DEADDEAD DEAD DEAD DEAD", 1)

entityHandler.Spawn(Config)
