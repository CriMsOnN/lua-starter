local ESX = nil
local Server = {
	getState = function(key)
		return GlobalState[key]
	end,
	setState = function(key, value)
		GlobalState[key] = value
	end
}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)