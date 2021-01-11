SCHEMA.name = "Imperial Germany RP"
SCHEMA.introName = "German Empire RP"
SCHEMA.author = "Adaster"
SCHEMA.desc = "The German empire in an alternative universe."

function SCHEMA:PlayerConnect(client, ip)
	for k,v in pairs(player.GetAll()) do
		v:ChatPrint(client.." has connected to the server.")
	end
end

function SCHEMA:PlayerDisconnected(client)
	PrintMessage(HUD_PRINTTALK, client:Name().." has disconnected from the server.")
end

function SCHEMA:PlayerDeath( client )
    local items = client:getChar():getInv():getItems()
    for k, item in pairs( items ) do
        if item.isWeapon then
            if item:getData( "equip" ) and (client:Team() != FACTION_POLICE) then

                nut.item.spawn( item.uniqueID, client:GetShootPos(), function()
                    item:remove()
                end, Angle(), item.data )
            end
        end
    end
end

nut.chat.register("event", {
	onCanSay =  function(speaker, text)
		return speaker:IsSuperAdmin()
	end,
	onCanHear = 10000000,
	onChatAdd = function(speaker, text)
		chat.AddText(Color(255, 0, 250), " [Event] ", color_white, text)
	end,
	prefix = {"/ev"}
})

nut.chat.register("advert", {
	onCanSay =  function(speaker, text)	
		if speaker:getChar():hasMoney(10) then
				speaker:getChar():takeMoney(10)
				speaker:notify("10 Goldmarks have been deducted from your wallet for advertising.")
			return true
		else 
			speaker:notify("You lack sufficient funds to make an advertisement.")
			return false 
		end
		end,
	onChatAdd = function(speaker, text)
		chat.AddText( Color(255, 238, 0), " [Advertisement] ", color_white, text)
	end,
	prefix = {"/advert"},
	noSpaceAfter = true,
	filter = "advertisements"
})

nut.chat.register("admin", {
	onCanSay =  function(speaker, text)
		return true
	end,
	onCanHear =  function(speaker, listener)
		if(listener:IsAdmin() or listener == speaker) then
			return true
		else
			return false
		end
	end,
	onChatAdd = function(speaker, text)
		chat.AddText(Color(200, 50, 50), "[HELP] ".. speaker:GetName(), color_white, ": " ..text)
	end,
	prefix = {"/admin", "/help", "/report"}
})

nut.anim.setModelClass("models/hts/ernie/pm0v3/player/kaiser/co/kaiser_01.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/kaiser/co/kaiser_02.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/kaiser/co/kaiser_03.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/kaiser/co/kaiser_04.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/kaiser/co/kaiser_05.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/kaiser/co/kaiser_06.mdl", "citizen_male")

nut.anim.setModelClass("models/hts/ernie/pm0v3/player/asp/co/m38_asp_01.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/asp/co/m38_asp_02.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/asp/co/m38_asp_03.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/asp/co/m38_asp_04.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/asp/co/m38_asp_05.mdl", "citizen_male")
nut.anim.setModelClass("models/hts/ernie/pm0v3/player/asp/co/m38_asp_06.mdl", "citizen_male")

function SCHEMA:isGermanFaction(faction)
	return faction == FACTION_ARMY or faction == FACTION_POLICE
end

nut.util.includeDir("hooks")

nut.util.include("sh_commands.lua")

nut.flag.add("v", "Access to light blackmarket goods.")
nut.flag.add("V", "Access to heavy blackmarket goods.")
nut.flag.add("d", "Access to food license.")
nut.flag.add("o", "Access to drugs.")

nut.currency.set("", "Goldmark", "Goldmarks")