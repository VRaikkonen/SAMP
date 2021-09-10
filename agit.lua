script_name('Agitation') -- название скрипта
script_author('Valtteri Raikkonen') -- автор скрипта
require "lib.moonloader" -- подключение библиотеки
local aqua = 0xFF00FFFF
local tag = "|| С.О.П.Т. ||" -- Здесь менять тег
function cmd_agit()
	lua_thread.create(function()
		sampSendChat("/r " .. tag .. " Товарищи, прошу минуту внимания.")
		wait(1100)
		sampSendChat("/r " .. tag .. " В армии восстановлена школа подготовки пилотов MSA.")
		wait(1100)
		sampSendChat("/r " .. tag .. " Ознакомиться с условиями и начать обучение Вы можете")
		wait(1100)
		sampSendChat("/r " .. tag .. " на официальном портале Армии Лас Вентурас.")
		wait(1100)
		sampSendChat("/rb Армия 'Зона 51' > Подразделения > ВУЦ > MSA")
	end)
end

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(500) end
	
	sampRegisterChatCommand ("agit", cmd_agit)
	
	sampAddChatMessage("[Agitation]: {FFFFFF}Скрипт by V. Raikkonen успешно загружено", aqua)
	
	while true do
		
		wait(0)
	end
end