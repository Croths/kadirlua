gg.setVisible(true)

radarstate = "【OFF】"

redradarstate = "【OFF】"

fireratestate = "【OFF】"

recoilstate = "【OFF】"

hitboxstate = "【OFF】"

hitboxstate15 = "【OFF】"

flashstate = "【OFF】"

gg.clearResults()

function m31()

a = gg.multiChoice({
	
	radarstate.."Radar",
	
	redradarstate.."Red Radar",
	
	recoilstate.."No Recoil",
	
	hitboxstate.."Hitbox %100",
	
	hitboxstate15.."Hitbox %15",
	
	flashstate.."No Flash",
	
	fireratestate.."Fire Rate",
	
	"Exit"},nil,"╭────────✪────────╮\n┌Critical Ops Script 1.26.0.f1458\n ├32bit Menu 🛡️\n └Made by Kadir\n╰────────✪────────╯")
	
	if a == nil then gg.sleep(1)
	else
	
	if a[1] == true then
	radar()
	end
	
	if a[2] == true then 
	redradar()
	end
	
	if a[3] == true then
	nrcol()
	end
	
	if a[4] == true then 
	htbx()
	end
	
	if a[5] == true then
	htbx2()
	end
	
	if a[6] == true then 
	nfls()
	end

if a[7] == true then
firert()
end

if a[8] == true then
os.exit()
end
end
	
	TEMP = -1
	
	end
	
	function redradar()
	if redradarstate == "【OFF】" then 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h30 48 2d e9 08 b0 8d e2 00 40 a0 e1 00 00 a0 e3 00 50 a0 e3 7f 71 2f eb 00 0a b7 ee 1a 1a 94 ed 00 0a 31 ee 10 0a 01 ee c0 1a b4 ee 10 fa f1 ee 01 50 00 43 05 00 a0 e1 30 88 bd e8 78 00 90 e5 1e ff 2f e1 78 10 80 e5 ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("h00 00 A0 E3 1E FF 2F E1", gg.TYPE_BYTE)
gg.clearResults()
gg.toast(" Radar Activated  ")
redradarstate = "【ON】"
else
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h00 00 A0 E3 1E FF 2F E1 00 40 a0 e1 00 00 a0 e3 00 50 a0 e3 7f 71 2f eb 00 0a b7 ee 1a 1a 94 ed 00 0a 31 ee 10 0a 01 ee c0 1a b4 ee 10 fa f1 ee 01 50 00 43 05 00 a0 e1 30 88 bd e8 78 00 90 e5 1e ff 2f e1 78 10 80 e5  ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("h30 48 2d e9 08 b0 8d e2", gg.TYPE_BYTE)
gg.clearResults()
gg.toast(" Radar Deactivated  ")
redradarstate = "【OFF】"
end
end
	
	
	function htbx2()
	if hitboxstate15 == "【OFF】" then 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(700)
gg.editAll("15.0432", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("green_heart Hitbox Activated green_heart ")
hitboxstate15 = "【ON】"
else
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("15.0432", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(700)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("black_heartHitbox Deactivated black_heart")
hitboxstate15 = "【OFF】"
end
end
	
	function radar()
if radarstate == "【OFF】" then 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h01 00 50 e3 16 00 00 1a 00 00 55 e3 01 00 00 1a ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("h03", gg.TYPE_BYTE)
gg.clearResults()
gg.toast(" Radar Activated  ")
radarstate = "【ON】"
else
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h03 00 50 e3 16 00 00 1a 00 00 55 e3 01 00 00 1a ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("h01", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("black_heart Radar Deactivated black_heart ")
radarstate = "【OFF】"
end
end
	
	function nrcol()
	if recoilstate == "【OFF】" then 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h f0 4d 2d e9 18 b0 8d e2 08 8b 2d ed 00 40 a0 e1 60 50 94 e5 04 8a 94 ed 00 00 55 e3 01 00 00 1a 00 00 a0 e3 f9 de f8 eb 2d 0a 95 ed 68 50 94 e5 00 0a 38 ee 00 00 55 e3 04 0a 84 ed 01 00 00 1a 00 00 a0 e3 f1 de f8 eb ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(16)
gg.editAll("h00 00 A0 E3 1E FF 2F E1", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("💚 No Recoil Activated 💚 ")
recoilstate = "【ON】"
else
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h00 00 A0 E3 1E FF 2F E1 08 8b 2d ed 00 40 a0 e1 60 50 94 e5 04 8a 94 ed 00 00 55 e3 01 00 00 1a 00 00 a0 e3 f9 de f8 eb 2d 0a 95 ed 68 50 94 e5 00 0a 38 ee 00 00 55 e3 04 0a 84 ed 01 00 00 1a 00 00 a0 e3 f1 de f8 eb ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(16)
gg.editAll("hf0 4d 2d e9 18 b0 8d e2", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🖤 No Recoil Deactivated 🖤 ")
recoilstate = "【OFF】"
end
end

function htbx()
if hitboxstate == "【OFF】" then 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(700)
gg.editAll("0.1432", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("💚 Hitbox Activated 💚 ")
hitboxstate = "【ON】"
else
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.1432", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(700)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🖤Hitbox Deactivated 🖤")
hitboxstate = "【OFF】"
end
end

function nfls()
if flashstate == "【OFF】" then 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h f0 4f 2d e9 1c b0 8d e2 04 d0 4d e2 04 8b 2d ed 80 d0 4d e2 00 70 a0 e1 c4 03 9f e5 2c c0 8d e2 14 a0 8b e2 0e 00 8c e8 00 00 8f e0 3c 10 4b e2 20 06 9a e8 20 06 81 e8 00 00 d0 e5 00 00 50 e3 06 00 00 1a 9c 03 9f e5 ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(16)
gg.editAll("h00 00 A0 E3 1E FF 2F E1", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("💚 No Flash / Granade Damage Activated 💚 ")
flashstate = "【ON】"
else
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h00 00 A0 E3 1E FF 2F E1 04 d0 4d e2 04 8b 2d ed 80 d0 4d e2 00 70 a0 e1 c4 03 9f e5 2c c0 8d e2 14 a0 8b e2 0e 00 8c e8 00 00 8f e0 3c 10 4b e2 20 06 9a e8 20 06 81 e8 00 00 d0 e5 00 00 50 e3 06 00 00 1a 9c 03 9f e5 ", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(16)
gg.editAll("hf0 4f 2d e9 1c b0 8d e2", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🖤 No Flash / Granade Damage Deactivated 🖤 ")
flashstate = "【OFF】"
end
end

function firert()
if fireratestate == "【OFF】" then 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("60", gg.TYPE_FLOAT)
gg.getResults(666)
gg.editAll("30", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("💚 Fire Rate Activated 💚 ")
fireratestate = "【ON】"
else
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("30", gg.TYPE_FLOAT)
gg.getResults(666)
gg.editAll("60", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🖤 Fire Rate Deactivated ?? ")
fireratestate = "【OFF】"
end
end

while true do
if gg.isVisible(true) then
TEMP = 1
gg.setVisible(false)
end
gg.clearResults()
if TEMP == 1 then
m31()
end
end