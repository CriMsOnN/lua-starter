local ESX = nil
local Client = {
	PlayerData = {
		job = {
			name = 'unemployed',
			label = 'Unemployed',
			grade = 0,
			grade_label = '',
		},
	},
}

CreateThread(function() 
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Wait(10)
	end

	Client.PlayerData = ESX.GetPlayerData()
end)