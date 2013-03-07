
local Misc = CreateFrame("Frame")
local Media = "Interface\\AddOns\\ShestakUI_Filger\\Media\\"
  Misc.Media = Media

	-- ShestakUI_Filger.lua
	-- 可选颜色: "DK", "DLY"-小德, "LR", "FS", "WS"-武僧, "QS", "MS"-牧师(既白色), "DZ", "SM", "SS", "ZS", "Black"-黑色, "Gray"-灰色, "OWN"-自动选择你当前角色的职业颜色.
	Misc.font = Media.."Pixel.ttf"		-- 所有数字的字体
	Misc.barfg = Media.."barfg"		-- 计时条材质
	Misc.modefg = "OWN"				-- 计时条颜色
	Misc.modeback = "Black"			-- 图标背景或蒙板颜色（一像素和毛绒绒样式无效）
	Misc.modeborder = "Black"			-- 边框颜色
	Misc.numsize = 14					-- 层数, 计时条的计时数字大小
	Misc.namesize = 14					-- 法术名称字体大小

	-- Cooldowns.lua
	Misc.cdsize = 16				-- 图标中间的 CD 数字大小

	-- config.lua
	Misc.Tbar = "ON"				-- 开(ON)\关(OFF) target_bar 目标计时条 - (主图标注号 9)
	Misc.Pbar = "ON"				-- 开(ON)\关(OFF) pve_cc 计时条 - (主图标注号 7)
	Misc.CD = "ON"				-- 开(ON)\关(OFF) COOLDOWN 冷却图标 - (主图标注号 8)
	Misc.barw = 160				-- 计时条长度 - (主图标注号 7,9)
	Misc.CDnum = 8				-- COOLDOWN 冷却图标每行显示几个 - (主图标注号 8)
	Misc.IconSize = 38			-- 图标大小 - (主图标注号 1,2,3,4,5,6)
	Misc.CDIconSize = 30		-- COOLDOWN 冷却图标大小 - (主图标注号 8)
	Misc.barIconSize = 25		-- 计时条上的图标大小 - (主图标注号 7,9)

-------------------------------------------------------- 
getscreenheight = tonumber(string.match(({GetScreenResolutions()})[GetCurrentResolution()], "%d+x(%d+)")) 
getscreenwidth = tonumber(string.match(({GetScreenResolutions()})[GetCurrentResolution()], "(%d+)x+%d")) 

--   Pixel perfect script of custom ui Scale 
UIScale = function() 
   uiscale = min(2, max(0.64, 768 / string.match(GetCVar("gxResolution"), "%d+x(%d+)"))) 
end 
UIScale() 

local mult = 768 / string.match(GetCVar("gxResolution"), "%d+x(%d+)") / uiscale 
local Scale = function(x) 
   return mult * math.floor(x / mult + 0.5) 
end 
Misc.mult = mult 

----------------------- ShestakUI_Filger_Fluffy -----------------------

-- 命名空间
local _, sakaras = ...
sakaras.FilgerSettings = Misc

local T, C, L, _ = unpack(ShestakUI)

-- 设置(新手调整 位置,图标大小, 请对照主楼置顶的标注图)
Filger_Settings = {
	config_mode = false,				-- 开\关测试模式
	max_test_icon = 5,					-- 测试模式下,每组显示最大图标数量
	player_buff_icon = {"BOTTOMRIGHT", UIParent, "CENTER", -175, -80},		-- "P_BUFF_ICON"		(player_buff_icon 位置坐标 - 主图标注号 1)
	player_proc_icon = {"BOTTOMLEFT", UIParent, "CENTER", 175, -80},		-- "P_PROC_ICON"		(player_proc_icon 位置坐标 - 主图标注号 2)
	special_proc_icon = {"BOTTOMRIGHT", UIParent, "CENTER", -175, -40},	-- "SPECIAL_P_BUFF_ICON"	(special_proc_icon 位置坐标 - 主图标注号 3)
	target_debuff_icon = {"BOTTOMLEFT", UIParent, "CENTER", 175, -40},	-- "T_DEBUFF_ICON"		(target_debuff_icon 位置坐标 - 主图标注号 4)
	target_buff_icon = {"BOTTOMLEFT", UIParent, "CENTER", 175, 0},		-- "T_BUFF"				(target_buff_icon 位置坐标 - 主图标注号 5)
	pve_debuff = {"BOTTOMRIGHT", UIParent, "CENTER", -175, 0},			-- "PVE/PVP_DEBUFF"	(pve_debuff 位置坐标 - 主图标注号 6)
	pve_cc = {"TOPLEFT", "oUF_Player", "BOTTOMLEFT", -2, -44},								-- "PVE/PVP_CC"			(pve_cc 位置坐标 - 主图标注号 7)
	cooldown = {"BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, C.unitframe.plugins_swing and 29 or 17},					-- "COOLDOWN"			(cooldown 位置坐标 - 主图标注号 8)
	target_bar = {"BOTTOMLEFT", C.unitframe.portrait_enable and "oUF_Target_Portrait" or "oUF_Target", "BOTTOMRIGHT", C.unitframe.portrait_enable and 6 or 9, C.unitframe.portrait_enable and -3 or -41},						-- "T_DE/BUFF_BAR"		(target_bar 位置坐标 - 主图标注号 9)
}
