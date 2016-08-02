local _, ns = ...
local Misc = ns.Misc

local class = select(2, UnitClass("player"))

SLASH_S_FILGER1 = "/sf"
SLASH_S_FILGER2 = "/filger"

testMode = false

local function ShowHelp()
    print("|cffffff00 %s move  解锁/锁定|r", SLASH_S_FILGER1)
    print("|cffffff00 %s reset  重置|r", SLASH_S_FILGER1)
end

local function Move()
    if UnitAffectingCombat("player") then print("|cffffff00"..ERR_NOT_IN_COMBAT.."|r") return end
    testMode = not testMode
    for i = 1, #Filger_Spells[class], 1 do
        local data = Filger_Spells[class][i]
        local frame = _G["FilgerFrame"..i.."_"..data.Name]
        frame.actives = {}
        if testMode then
            for j = 1, math.min(Misc.maxTestIcon, #Filger_Spells[class][i]), 1 do
                local data = Filger_Spells[class][i][j]
                local name, icon
                if data.spellID then
                    name, _, icon = GetSpellInfo(data.spellID)
                elseif data.slotID then
                    local slotLink = GetInventoryItemLink("player", data.slotID)
                    if slotLink then
                        name, _, _, _, _, _, _, _, _, icon = GetItemInfo(slotLink)
                    end
                end
                frame.actives[j] = {data = data, name = name, icon = icon, count = 9, start = 0, duration = 0, spid = data.spellID or data.slotID}
            end
            frame:SetScript("OnEvent", nil)
            frame.movebar:Show()
        else
            frame:SetScript("OnEvent", Filger.OnEvent)
            frame.movebar:Hide()
        end
        Filger.DisplayActives(frame)
    end
end

local function Reset()
    for i = 1, #Filger_Spells[class], 1 do
        local data = Filger_Spells[class][i]
        local frame = _G["FilgerFrame"..i.."_"..data.Name]
        frame.movebar:ClearAllPoints()
        frame.movebar:SetPoint(unpack(data.Position))
    end
end

SlashCmdList["S_FILGER"] = function(msg)
	msg = string.lower(msg)
	if msg == "move" then
        Move()
	elseif msg == "reset" then
        Reset()
    else
        ShowHelp()
	end
end
