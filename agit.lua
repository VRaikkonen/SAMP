script_name('Agitation') -- �������� �������
script_author('Valtteri Raikkonen') -- ����� �������
require "lib.moonloader" -- ����������� ����������
local aqua = 0xFF00FFFF
local tag = "|| �.�.�.�. ||" -- ����� ������ ���
function cmd_agit()
	lua_thread.create(function()
		sampSendChat("/r " .. tag .. " ��������, ����� ������ ��������.")
		wait(1100)
		sampSendChat("/r " .. tag .. " � ����� ������������� ����� ���������� ������� MSA.")
		wait(1100)
		sampSendChat("/r " .. tag .. " ������������ � ��������� � ������ �������� �� ������")
		wait(1100)
		sampSendChat("/r " .. tag .. " �� ����������� ������� ����� ��� ��������.")
		wait(1100)
		sampSendChat("/rb ����� '���� 51' > ������������� > ��� > MSA")
	end)
end

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(500) end
	
	sampRegisterChatCommand ("agit", cmd_agit)
	
	sampAddChatMessage("[Agitation]: {FFFFFF}������ by V. Raikkonen ������� ���������", aqua)
	
	while true do
		
		wait(0)
	end
end