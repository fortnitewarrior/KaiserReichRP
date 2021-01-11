
function SCHEMA:CanPlayerJoinClass(client, class, info)
	return false
end

function SCHEMA:ShouldDrawCrosshair()
	local client = LocalPlayer()
	local weapon = client:GetActiveWeapon()

	if (weapon and weapon:IsValid()) then
		local class = weapon:GetClass()
		
		if (class:find("weapon_752_")) then
			return false
		end
	end
end