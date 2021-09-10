script_name('ColorHealth') -- название скрипта
script_author('Valtteri Raikkonen') -- автор скрипта
require "lib.moonloader" -- подключение библиотеки

local memory = require "memory"

local aqua = 0xFF00FFFF
local blackred = 0xFF800000
local white = 0xFFFFFFFF

function setHealthColor(hpHigh, hpLow)
     local samp = getModuleHandle("samp.dll")
		 memory.setuint32(samp + 0x68B0C, hpHigh, true) -- полная полоска хп
		 memory.setuint32(samp + 0x68B33, hpLow, true) -- задний фон
end

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(500) end
	
	sampAddChatMessage("[ColorHealth]: {FFFFFF}Скрипт by V. Raikkonen успешно загружено", aqua)
	setHealthColor(blackred, white)
	while true do
		
		wait(0)
	end
end


