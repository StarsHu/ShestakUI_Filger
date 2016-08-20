local Misc = CreateFrame("Frame")
local Media = "Interface\\AddOns\\ShestakUI_Filger\\Media\\"
Misc.Media = Media

Misc.testMode = false           -- 测试模式(true/false)

-- ShestakUI_Filger.lua
-- 可选颜色: "DK", "DLY"-小德, "LR", "FS", "WS"-武僧, "QS", "MS"-牧师(既白色), "DZ", "SM", "SS", "ZS", "Black"-黑色, "Gray"-灰色, "OWN"-自动选择你当前角色的职业颜色.
Misc.font = Media.."Pixel.ttf"	-- 所有数字的字体
Misc.barfg = Media.."White"		-- 计时条材质
Misc.modefg = "OWN"				-- 计时条颜色
--Misc.modeback = "OWN"			-- 图标背景或蒙板颜色(一像素和毛绒绒样式无效)
Misc.modeborder = "Black"		-- 边框颜色
Misc.numsize = 12				-- 层数, 计时条的计时数字大小
Misc.namesize = 14				-- 法术名称字体大小
Misc.maxTestIcon = 5			-- 测试模式每组显示图标数量

-- Cooldowns.lua
Misc.cdsize = 16				-- 图标中间的 CD 数字大小

-- Spells.lua
Misc.Tbar = "ON"				-- 开(ON)\关(OFF) target_bar 目标计时条 - (主图标注号 9)
Misc.Pbar = "ON"				-- 开(ON)\关(OFF) pve_cc 计时条 - (主图标注号 7)
Misc.CD = "ON"					-- 开(ON)\关(OFF) COOLDOWN 冷却图标 - (主图标注号 8)
Misc.barw = 160					-- 计时条长度 - (主图标注号 7,9)
Misc.CDnum = 8					-- COOLDOWN 冷却图标每行显示几个 - (主图标注号 8)
Misc.IconSize = 38				-- 图标大小 - (主图标注号 1,2,3,4)
Misc.BigIconSize = 64			-- 大图标 - (主图标注号 5,6)
Misc.CDIconSize = 32			-- COOLDOWN 冷却图标大小 - (主图标注号 8)
Misc.barIconSize = 26			-- 计时条上的图标大小 - (主图标注号 7,9)
Misc.Interval = 3				-- 间距

-------------------------------------------------------- 
--   Pixel perfect script of custom ui Scale
local resolution = ({GetScreenResolutions()})[GetCurrentResolution()] or GetCVar("gxWindowedResolution")

UIScale = function()
   uiscale = min(2, max(0.64, 768 / string.match(resolution, "%d+x(%d+)")))
end
UIScale()

local mult = 768 / string.match(resolution, "%d+x(%d+)") / uiscale
local Scale = function(x)
   return mult * math.floor(x / mult + 0.5)
end
Misc.mult = mult
----------------------- ShestakUI_Filger_1px -----------------------

-- 命名
local _, ns = ...
ns.Misc = Misc

-- 位置
if IsAddOnLoaded("ShestakUI") then
	local T, C, L, _ = unpack(ShestakUI)
	if _G.oUF_Player then
		 FilgerPositions = {
			player_buff_icon = {"BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173},	-- "P_BUFF_ICON"
			player_proc_icon = {"BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173},	-- "P_PROC_ICON"
			special_proc_icon = {"BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 213},	-- "SPECIAL_P_BUFF_ICON"
			target_debuff_icon = {"BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 213},	-- "T_DEBUFF_ICON"
			target_buff_icon = {"BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 253},	-- "T_BUFF"
			pve_debuff = {"BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 253},			-- "PVE/PVP_DEBUFF"
			pve_cc = {"TOPLEFT", "oUF_Player", "BOTTOMLEFT", -2, -50},				-- "PVE/PVP_CC"
			cooldown = {"BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, C.unitframe.plugins_swing and 29 or 17},		-- "COOLDOWN"
			target_bar = {"BOTTOMLEFT", C.unitframe.portrait_enable and "oUF_Target_Portrait" or "oUF_Target", "BOTTOMRIGHT", C.unitframe.portrait_enable and 6 or 9, C.unitframe.portrait_enable and -3 or -41},	-- "T_DE/BUFF_BAR"
		}
	end
else
	-- 设置(初次调整 位置,图标大小等, 请对照主楼置顶的标注图)
	FilgerPositions = {
		player_buff_icon = {"BOTTOMRIGHT", UIParent, "CENTER", -180, -80},	-- "P_BUFF_ICON"		(player_buff_icon 位置坐标 - 主图标注号 1)
		player_proc_icon = {"BOTTOMLEFT", UIParent, "CENTER", 180, -80},	-- "P_PROC_ICON"		(player_proc_icon 位置坐标 - 主图标注号 2)
		special_proc_icon = {"BOTTOMRIGHT", UIParent, "CENTER", -180, -40},	-- "SPECIAL_P_BUFF_ICON"	(special_proc_icon 位置坐标 - 主图标注号 3)
		target_debuff_icon = {"BOTTOMLEFT", UIParent, "CENTER", 180, -40},	-- "T_DEBUFF_ICON"		(target_debuff_icon 位置坐标 - 主图标注号 4)
		target_buff_icon = {"BOTTOMLEFT", UIParent, "CENTER", 180, 0},		-- "T_BUFF"				(target_buff_icon 位置坐标 - 主图标注号 5)
		pve_debuff = {"BOTTOMRIGHT", UIParent, "CENTER", -180, 0},			-- "PVE/PVP_DEBUFF"		(pve_debuff 位置坐标 - 主图标注号 6)
		pve_cc = {"TOPLEFT", UIParent, "LEFT", 50, 0},						-- "PVE/PVP_CC"			(pve_cc 位置坐标 - 主图标注号 7)
		cooldown = {"TOPLEFT", UIParent, "CENTER", -90, -120},				-- "COOLDOWN"			(cooldown 位置坐标 - 主图标注号 8)
		target_bar = {"TOPRIGHT", UIParent, "RIGHT", -260, 0},				-- "T_DE/BUFF_BAR"		(target_bar 位置坐标 - 主图标注号 9)
	}
end