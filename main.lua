local mod = RegisterMod("My Mod", 1)
local cheekyPepper = Isaac.GetItemIdByName("Cheeky Pepper")
local cheekyPepperSpeed = 1

function mod:EvaluateCache(player, cacheFlags)
	if cacheFlags & cacheFlags.CACHE_SPEED == CacheFlag.CACHE_SPEED then
		local itemCount = player:GetCollectibleNum(cheekyPepper)
		local speedToAdd = cheekyPepperSpeed * itemCount
		player.Speed = player.Speed + speedToAdd
	end
end

mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.EvaluateCache)