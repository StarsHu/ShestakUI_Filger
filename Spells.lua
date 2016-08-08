local _, ns = ...
local Misc = ns.Misc

Filger_Spells = {
	["DEATHKNIGHT"] = {		--[死骑]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Anti-Magic Shell
			{spellID = 48707, unitID = "player", caster = "player", filter = "BUFF"},
			-- Bone Wall (T16)
			{spellID = 144948, unitID = "player", caster = "player", filter = "BUFF"},
			-- Dancing Rune Weapon
			{spellID = 81256, unitID = "player", caster = "player", filter = "BUFF"},
			-- Icebound Fortitude
			{spellID = 48792, unitID = "player", caster = "player", filter = "BUFF"},
			-- Lichborne
			{spellID = 49039, unitID = "player", caster = "player", filter = "BUFF"},
			-- Pillar of Frost
			{spellID = 51271, unitID = "player", caster = "player", filter = "BUFF"},
			-- Unholy Blight
			{spellID = 115989, unitID = "player", caster = "player", filter = "BUFF"},
			-- Vampiric Blood
			{spellID = 55233, unitID = "player", caster = "player", filter = "BUFF"},
			-- Summon Gargoyle
			{spellID = 49206, filter = "ICD", trigger = "NONE", duration = 40},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Crimson Scourge
			{spellID = 81141, unitID = "player", caster = "player", filter = "BUFF"},
			-- Dark Transformation
			{spellID = 63560, unitID = "pet", caster = "player", filter = "BUFF"},
			-- Freezing Fog
			{spellID = 59052, unitID = "player", caster = "player", filter = "BUFF"},
			-- Killing Machine
			{spellID = 51124, unitID = "player", caster = "player", filter = "BUFF"},
			-- Sudden Doom
			{spellID = 81340, unitID = "player", caster = "player", filter = "BUFF"},
			-- Unholy Strength
			{spellID = 53365, unitID = "player", caster = "player", filter = "BUFF"},

			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Melee DPS (Crit, Proc)
			{spellID = 162915, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tanking (Crit, Proc)
			{spellID = 162917, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1: Alchemy Stones
			-- Strength
			{spellID = 60229, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Brawler's Statue (Bonus Armor, Use)
			{spellID = 127967, unitID = "player", caster = "player", filter = "BUFF"},
			-- Coren's Cold Chromium (Attack Power, Proc)
			{spellID = 127926, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Strength] (Versatility, Use)
			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Strength] (Versatility, Proc)
			{spellID = 182063, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Gronntooth War Horn (Strength, Proc)
			{spellID = 201405, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Tanking
			-- Battering Talisman (Haste, Proc)
			{spellID = 177102, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blast Furnace Door (Mastery, Proc)
			{spellID = 177056, unitID = "player", caster = "player", filter = "BUFF"},
			-- Evergaze Arcane Eidolon (Bonus Armor, Proc)
			{spellID = 177053, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Relic of Blood (Haste, Proc)
			{spellID = 176937, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kyb's Foolish Perseverance (Health, Use)
			{spellID = 176460, unitID = "player", caster = "player", filter = "BUFF"},
			-- Pol's Blinded Eye (Mastery, Use)
			{spellID = 176876, unitID = "player", caster = "player", filter = "BUFF"},
			-- Stoneheart Idol (Crit, Proc)
			{spellID = 176982, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tablet of Turnbuckle Teamwork (Bonus Armor, Use)
			{spellID = 176873, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.1: Tanking
			-- Anzu's Cursed Plume (Mastery, Proc)
			{spellID = 183931, unitID = "player", caster = "player", filter = "BUFF"},
			-- Enforcer's Stun Grenade (Versatility, Use)
			{spellID = 165534, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kyrak's Vileblood Serum (Mastery, Use)
			{spellID = 165535, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tyrant's Decree (Stamina, Proc)
			{spellID = 184770, unitID = "player", caster = "player", filter = "BUFF"},
			-- Xeri'tac's Unhatched Egg Sac (Mastery, Proc)
			{spellID = 165824, unitID = "player", caster = "player", filter = "BUFF"},
			-- 4.0: Melee DPS [Strength]
			-- Forgemaster's Insignia (Multistrike, Proc)
			{spellID = 177096, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Fang (Multistrike, Proc)
			{spellID = 176935, unitID = "player", caster = "player", filter = "BUFF"},
			-- Horn of the Screaming Spirits (Mastery, Proc)
			{spellID = 177042, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mote of the Mountain (Versatility, Proc)
			{spellID = 176974, unitID = "player", caster = "player", filter = "BUFF"},
			-- Scabbard of Kyanos (Strength, Use)
			{spellID = 177189, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tectus' Beating Heart (Crit, Proc)
			{spellID = 177040, unitID = "player", caster = "player", filter = "BUFF"},
			-- Vial of Convulsive Shadows (Multistrike, Use)
			{spellID = 176874, unitID = "player", caster = "player", filter = "BUFF"},
			-- 4.1: Melee DPS [Strength]
			-- Bonemaw's Big Toe (Crit, Use)
			{spellID = 165532, unitID = "player", caster = "player", filter = "BUFF"},
			-- Emberscale Talisman (Versatility, Use)
			{spellID = 165543, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spores of Alacrity (Haste, Proc)
			{spellID = 165822, unitID = "player", caster = "player", filter = "BUFF"},
			-- Unending Hunger (Strength, Proc)
			{spellID = 183941, unitID = "player", caster = "player", filter = "BUFF"},

			-- Enchants
			-- Mark of Blackrock (Bonus Armor)
			{spellID = 159679, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Bleeding Hollow (Mastery)
			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Frostwolf (Multistrike)
			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Thunderlord (Crit)
			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Warsong (Haste)
			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Blood Plague
			{spellID = 55078, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Frost Fever
			{spellID = 55095, unitID = "target", caster = "player", filter = "DEBUFF"},
			
			-- Trinket Effects
			-- Fel Burn (Empty Drinking Horn)
			{spellID = 184256, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		--[[{
			Name = "T_DE/BUFF_BAR",
			enable = Misc.Tbar,
			Direction = "UP",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.target_bar)},

			-- Blood Plague
			{spellID = 55078, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Frost Fever
			{spellID = 55095, unitID = "target", caster = "player", filter = "DEBUFF"},
			
			-- Trinket Effects
			-- Fel Burn (Empty Drinking Horn)
			{spellID = 184256, unitID = "target", caster = "player", filter = "DEBUFF"},
		},--]]
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Anti-Magic Shell
			{spellID = 48707, filter = "CD"},
			-- Anti-Magic Zone
			{spellID = 51052, filter = "CD"},
			-- Dancing Rune Weapon
			{spellID = 49028, filter = "CD"},
			-- Dark Simulacrum
			{spellID = 77606, filter = "CD"},
			-- Death and Decay
			{spellID = 43265, filter = "CD"},
			-- Death Grip
			{spellID = 49576, filter = "CD"},
			-- Death Pact
			{spellID = 48743, filter = "CD"},
			-- Desecrated Ground
			{spellID = 108201, filter = "CD"},
			-- Gnaw (Ghoul)
			{spellID = 47481, filter = "CD"},
			-- Gorefiend's Grasp
			{spellID = 108199, filter = "CD"},
			-- Icebound Fortitude
			{spellID = 48792, filter = "CD"},
			-- Lichborne
			{spellID = 49039, filter = "CD"},
			-- Mind Freeze
			{spellID = 47528, filter = "CD"},
			-- Outbreak
			{spellID = 77575, filter = "CD"},
			-- Pillar of Frost
			{spellID = 51271, filter = "CD"},
			-- Plague Leech
			{spellID = 123693, filter = "CD"},
			-- Raise Dead
			{spellID = 46584, filter = "CD"},
			-- Soul Reaper
			{spellID = 130736, filter = "CD"},
			-- Strangulate
			{spellID = 47476, filter = "CD"},
			-- Summon Gargoyle
			{spellID = 49206, filter = "CD"},
			-- Unholy Blight
			{spellID = 115989, filter = "CD"},
			-- Vampiric Blood
			{spellID = 55233, filter = "CD"},

			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- Escape Artist (Gnome)
			{spellID = 20589, filter = "CD"},
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Rocket Jump (Goblin)
			{spellID = 69070, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},

			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["DEMONHUNTER"]	= {		--[恶魔猎手]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Metamorphosis
			{spellID = 187827, unitID = "player", caster = "player", filter = "BUFF"},
			-- Empower Wards
			{spellID = 218256, unitID = "player", caster = "player", filter = "BUFF"},
			-- Darkness
			{spellID = 196718, unitID = "player", caster = "player", filter = "BUFF"},
			-- {spellID = 209426, unitID = "player", caster = "player", filter = "BUFF"},
			-- Demon Spikes
			-- {spellID = 203819, unitID = "player", caster = "player", filter = "BUFF"},
			{spellID = 203720, unitID = "player", caster = "player", filter = "BUFF"},
			-- Netherwalk (Talent)
			{spellID = 196555, unitID = "player", caster = "player", filter = "BUFF"},
			-- Nether Bond (Talent)
			{spellID = 207810, unitID = "player", caster = "player", filter = "BUFF"},
			-- Feast of Souls
			{spellID = 207693, unitID = "player", caster = "player", filter = "BUFF"},
			-- Immolation Aura
			{spellID = 178740, unitID = "player", caster = "player", filter = "BUFF"},
			-- Gluttony
			{spellID = 227330, unitID = "player", caster = "player", filter = "BUFF"},
			-- Nemesis
			{spellID = 208608, unitID = "player", caster = "player", filter = "BUFF"},
			-- Soul Barrier
			{spellID = 227225, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Soul Fragments
			{spellID = 203981, unitID = "player", caster = "player", filter = "BUFF"},
			-- Pain Bringer
			{spellID = 212988, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spectral Sight
			{spellID = 188501, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blur
			{spellID = 212800, unitID = "player", caster = "player", filter = "BUFF"},
			-- Chaos Blades
			{spellID = 211048, unitID = "player", caster = "player", filter = "BUFF"},
			-- Prepared
			{spellID = 203650, unitID = "player", caster = "player", filter = "BUFF"},
			-- Momentum
			{spellID = 208628, unitID = "player", caster = "player", filter = "BUFF"},

			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Nightmare Fire (Crit, Proc)
			{spellID = 162919, unitID = "player", caster = "player", filter = "BUFF"},
			-- Visions of the Future (Spirit, Proc)
			{spellID = 162913, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spirit of the Warlords (Crit, Proc)
			{spellID = 162915, unitID = "player", caster = "player", filter = "BUFF"},
			-- Strength of Steel (Crit, Proc)
			{spellID = 162917, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1: Alchemy Stones
			-- Agility
			{spellID = 60233, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Brawler's Statue (Bonus Armor, Use)
			{spellID = 127967, unitID = "player", caster = "player", filter = "BUFF"},
			-- Coren's Cold Chromium (Attack Power, Proc)
			{spellID = 127926, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mithril Wristwatch (Spell Power, Proc)
			{spellID = 127924, unitID = "player", caster = "player", filter = "BUFF"},
			-- Thousand-Year Pickled Egg (Haste, Proc)
			{spellID = 127914, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Infallible Tracking Charm [Damage, Proc]
			{spellID = 201408, unitID = "player", caster = "player", filter = "BUFF"},
			-- Orb Of Voidsight (Haste, Proc)
			{spellID = 201410, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Damage [Agility] (Versatility, Proc)
			{spellID = 182060, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tanking
			-- Battering Talisman (Haste, Proc)
			{spellID = 177102, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blast Furnace Door (Mastery, Proc)
			{spellID = 177056, unitID = "player", caster = "player", filter = "BUFF"},
			-- Evergaze Arcane Eidolon (Bonus Armor, Proc)
			{spellID = 177053, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Relic of Blood (Haste, Proc)
			{spellID = 176937, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kyb's Foolish Perseverance (Health, Use)
			{spellID = 176460, unitID = "player", caster = "player", filter = "BUFF"},
			-- Pol's Blinded Eye (Mastery, Use)
			{spellID = 176876, unitID = "player", caster = "player", filter = "BUFF"},
			-- Stoneheart Idol (Crit, Proc)
			{spellID = 176982, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tablet of Turnbuckle Teamwork (Bonus Armor, Use)
			{spellID = 176873, unitID = "player", caster = "player", filter = "BUFF"},
			-- Anzu's Cursed Plume (Mastery, Proc)
			{spellID = 183931, unitID = "player", caster = "player", filter = "BUFF"},
			-- Enforcer's Stun Grenade (Versatility, Use)
			{spellID = 165534, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tyrant's Decree (Stamina, Proc)
			{spellID = 184770, unitID = "player", caster = "player", filter = "BUFF"},
			-- Xeri'tac's Unhatched Egg Sac (Mastery, Proc)
			{spellID = 165824, unitID = "player", caster = "player", filter = "BUFF"},
			-- Damage [Agility]
			-- Beating Heart of the Mountain (Multistrike, Use)
			{spellID = 176878, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blackheart Enforcer's Medallion (Multistrike, Proc)
			{spellID = 176984, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Jar of Doom (Mastery, Proc)
			{spellID = 176939, unitID = "player", caster = "player", filter = "BUFF"},
			-- Humming Blackiron Trigger (Crit, Proc)
			{spellID = 177067, unitID = "player", caster = "player", filter = "BUFF"},
			-- Lucky Double-Sided Coin (Agility, Use)
			{spellID = 177597, unitID = "player", caster = "player", filter = "BUFF"},
			-- Meaty Dragonspine Trophy (Haste, Proc)
			{spellID = 177035, unitID = "player", caster = "player", filter = "BUFF"},
			-- Scales of Doom (Multistrike, Proc)
			{spellID = 177038, unitID = "player", caster = "player", filter = "BUFF"},
			-- Gor'ashan's Lodestone Spike (Multistrike, Use)
			{spellID = 165542, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kihra's Adrenaline Injector (Mastery, Use)
			{spellID = 165485, unitID = "player", caster = "player", filter = "BUFF"},
			-- Malicious Censer (Agility, Proc)
			{spellID = 183926, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mirror of the Blademaster (Images, Proc)
			{spellID = 184270, unitID = "player", caster = "player", filter = "BUFF"},
			-- Soul Capacitator (Damage, Proc)
			{spellID = 184293, unitID = "player", caster = "player", filter = "BUFF"},
			-- Witherbark's Branch (Haste, Proc)
			{spellID = 165822, unitID = "player", caster = "player", filter = "BUFF"},

			-- Enchants
			-- Mark of Blackrock (Bonus Armor)
			{spellID = 159679, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Bleeding Hollow (Mastery)
			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Shadowmoon (Spirit)
			{spellID = 159678, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Frostwolf (Multistrike)
			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Thunderlord (Crit)
			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Warsong (Haste)
			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Darkness
			{spellID = 209426, unitID = "target", caster = "player", filter = "BUFF"},
			-- Brand of the Hunt
			{spellID = 218640, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Vengeful Retreat
			{spellID = 198813, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Chaos Nova
			{spellID = 179057, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Nemesis
			{spellID = 206491, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Fiery Brand
			{spellID = 207744, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Fiery Demise
			{spellID = 212818, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Frailty
			{spellID = 224509, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Razor Spikes
			{spellID = 210003, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Sigil of Flame
			{spellID = 204598, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Sigil of Silence
			{spellID = 204490, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Sigil of Chains
			{spellID = 204843, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Sigil of Misery
			{spellID = 207685, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Soul Carver
			{spellID = 207407, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Bloodlet
			{spellID = 207690, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Torment
			{spellID = 185245, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Master of the Glaive
			{spellID = 213405, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		--[[{
			Name = "T_DE/BUFF_BAR",
			enable = Misc.Tbar,
			Direction = "UP",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.target_bar)},

			-- Darkness
			{spellID = 209426, unitID = "target", caster = "player", filter = "BUFF"},
		},--]]
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Consume Magic
			{spellID = 183752, filter = "CD"},
			-- Fel Rush
			{spellID = 195072, filter = "CD", absID = true},
			-- Infernal Strike
			{spellID = 189110, filter = "CD"},
			-- Torment
			{spellID = 185245, filter = "CD"},
			-- Demon Spikes
			{spellID = 203720, filter = "CD"},
			-- Immolation Aura
			{spellID = 178740, filter = "CD"},
			-- Felblade (Talent)
			{spellID = 213241, filter = "CD"},
			-- Throw Glaive
			-- {spellID = 185123, filter = "CD"},
			-- Soul Barrier (Talent)
			{spellID = 227225, filter = "CD"},
			-- Blade Dance
			{spellID = 188499, filter = "CD"},
			-- Fel Barrage (Talent)
			{spellID = 211053, filter = "CD"},
			-- Vengeful Retreat
			{spellID = 198793, filter = "CD", absID = true},
			-- Soul Carver (Artifact)
			{spellID = 207407, filter = "CD"},
			-- Sigil of Silence
			{spellID = 202137, filter = "CD"},
			-- Sigil of Misery
			{spellID = 207684, filter = "CD"},
			-- Empower Wards
			{spellID = 218256, filter = "CD"},
			-- Spectral Sight
			{spellID = 188501, filter = "CD"},
			-- Fiery Brand
			{spellID = 204021, filter = "CD"},
			-- Eye Beam
			{spellID = 198013, filter = "CD", absID = true},
			-- Chaos Nova
			{spellID = 179057, filter = "CD", absID = true},
			-- Sigil of Chains
			{spellID = 202138, filter = "CD"},
			-- Fel Eruption (Talent)
			{spellID = 211881, filter = "CD"},
			-- Fel Devastation (Talent)
			{spellID = 212084, filter = "CD"},
			-- Nether Bond (Talent)
			{spellID = 207810, filter = "CD"},
			-- Fury of the Illidari (Artifact)
			{spellID = 201467, filter = "CD"},
			-- Netherwalk (Talent)
			{spellID = 196555, filter = "CD"},
			-- Chaos Blades (Talent)
			{spellID = 211048, filter = "CD"},
			-- Nemesis (Talent)
			{spellID = 206491, filter = "CD"},
			-- Metamorphosis
			{spellID = 187827, filter = "CD"},
			-- Darkness
			{spellID = 196718, filter = "CD"},

			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 202719, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},

			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["DRUID"] = {			--[小德]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Barkskin
			{spellID = 22812, unitID = "player", caster = "player", filter = "BUFF"},
			-- Cenarion Ward
			{spellID = 102351, unitID = "player", caster = "player", filter = "BUFF"},
			-- Dash
			{spellID = 1850, unitID = "player", caster = "player", filter = "BUFF"},
			-- Incarnation: Chosen of Elune
			{spellID = 102560, unitID = "player", caster = "player", filter = "BUFF"},
			-- Incarnation: King of the Jungle
			{spellID = 102543, unitID = "player", caster = "player", filter = "BUFF"},
			-- Incarnation: Son of Ursoc
			{spellID = 102558, unitID = "player", caster = "player", filter = "BUFF"},
			-- Incarnation: Tree of Life
			{spellID = 117679, unitID = "player", caster = "player", filter = "BUFF"},
			-- Lunar Empower
			{spellID = 164547, unitID = "player", caster = "player", filter = "BUFF"},
			-- Nature's Grasp
			{spellID = 170856, unitID = "player", caster = "player", filter = "BUFF"},
			-- Nature's Vigil
			{spellID = 124974, unitID = "player", caster = "player", filter = "BUFF"},
			-- Savage Roar
			{spellID = 52610, unitID = "player", caster = "player", filter = "BUFF"},
			-- Solar Empower
			{spellID = 164545, unitID = "player", caster = "player", filter = "BUFF"},
			-- Survival Instincts
			{spellID = 61336, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tiger's Fury
			{spellID = 5217, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.MidIconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Bloodtalons
			{spellID = 145152, unitID = "player", caster = "player", filter = "BUFF"},
			-- Clearcasting
			{spellID = 16870, unitID = "player", caster = "player", filter = "BUFF"},
			-- Predatory Swiftness
			{spellID = 69369, unitID = "player", caster = "player", filter = "BUFF"},
			-- Soul of the Forest
			{spellID = 114108, unitID = "player", caster = "player", filter = "BUFF"},
			
			-- Item sets 套装
			-- Sage Mender (治疗T16)
			{spellID = 144871, unitID = "player", caster = "player", filter = "BUFF"},
			-- 自然智慧 (治疗T17)
			{spellID = 177794, unitID = "player", caster = "player", filter = "BUFF"},

--			-- Trinkets
--			-- 1.0: Darkmoon Cards
--			-- Caster DPS (Crit, Proc)
--			{spellID = 162919, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Healing (Spirit, Proc)
--			{spellID = 162913, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Melee DPS (Crit, Proc)
--			{spellID = 162915, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Tanking (Crit, Proc)
--			{spellID = 162917, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 1.1: Alchemy Stones
--			-- Agility
--			{spellID = 60233, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Intellect
--			{spellID = 60234, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 1.2: Hallow's End
--			-- Brawler's Statue (Bonus Armor, Use)
--			{spellID = 127967, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Coren's Cold Chromium (Attack Power, Proc)
--			{spellID = 127926, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Mithril Wristwatch (Spell Power, Proc)
--			{spellID = 127924, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Thousand-Year Pickled Egg (Haste, Proc)
--			{spellID = 127914, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 3.0: Heirlooms
--			-- Infallible Tracking Charm
--			{spellID = 201408, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Orb Of Voidsight
--			{spellID = 201410, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 2.0: PvP Trinkets
--			-- Battlemaster (Health, Use)
--			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Caster DPS (Versatility, Use)
--			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Caster DPS (Versatility, Proc)
--			{spellID = 182058, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Melee DPS [Agility] (Versatility, Proc)
--			{spellID = 182060, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 3.0: Tanking
--			-- Battering Talisman (Haste, Proc)
--			{spellID = 177102, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Blast Furnace Door (Mastery, Proc)
--			{spellID = 177056, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Evergaze Arcane Eidolon (Bonus Armor, Proc)
--			{spellID = 177053, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Formidable Relic of Blood (Haste, Proc)
--			{spellID = 176937, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Kyb's Foolish Perseverance (Health, Use)
--			{spellID = 176460, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Pol's Blinded Eye (Mastery, Use)
--			{spellID = 176876, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Stoneheart Idol (Crit, Proc)
--			{spellID = 176982, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Tablet of Turnbuckle Teamwork (Bonus Armor, Use)
--			{spellID = 176873, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 3.1: Tanking
--			-- Anzu's Cursed Plume (Mastery, Proc)
--			{spellID = 183931, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Enforcer's Stun Grenade (Versatility, Use)
--			{spellID = 165534, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Tyrant's Decree (Stamina, Proc)
--			{spellID = 184770, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Xeri'tac's Unhatched Egg Sac (Mastery, Proc)
--			{spellID = 165824, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 4.0: Melee DPS [Agility]
--			-- Beating Heart of the Mountain (Multistrike, Use)
--			{spellID = 176878, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Blackheart Enforcer's Medallion (Multistrike, Proc)
--			{spellID = 176984, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Formidable Jar of Doom (Mastery, Proc)
--			{spellID = 176939, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Humming Blackiron Trigger (Crit, Proc)
--			{spellID = 177067, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Lucky Double-Sided Coin (Agility, Use)
--			{spellID = 177597, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Meaty Dragonspine Trophy (Haste, Proc)
--			{spellID = 177035, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Scales of Doom (Multistrike, Proc)
--			{spellID = 177038, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 4.1: Melee DPS [Agility]
--			-- Gor'ashan's Lodestone Spike (Multistrike, Use)
--			{spellID = 165542, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Kihra's Adrenaline Injector (Mastery, Use)
--			{spellID = 165485, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Malicious Censer
--			{spellID = 183926, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Mirror of the Blademaster (Images, Proc)
--			{spellID = 184270, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Soul Capacitator (Damage, Proc)
--			{spellID = 184293, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Witherbark's Branch (Haste, Proc)
--			{spellID = 165822, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 5.0: Caster DPS
--			-- Blackiron Micro Crucible (Multistrike, Proc)
--			{spellID = 177081, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Copeland's Clarity (Spellpower, Use)
--			{spellID = 177594, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Darmac's Unstoppable Talisman (Haste, Proc)
--			{spellID = 177051, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Formidable Orb of Putrescence (Mastery, Proc)
--			{spellID = 176941, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Furyheart Talisman (Haste, Proc)
--			{spellID = 176980, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Goren Soul Repository (Crit, Proc)
--			{spellID = 177046, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Shards of Nothing (Haste, Use)
--			{spellID = 176875, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 5.1: Caster DPS
--			-- Desecrated Shadowmoon Insignia (Intellect, Proc)
--			{spellID = 183924, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Coagulated Genesaur Blood (Multistrike, Proc)
--			{spellID = 165832, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Ragewing's Firefang (Versatility, Use)
--			{spellID = 165543, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Fleshrender's Meathook (Haste, Use)
--			{spellID = 165531, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 6.0: Healing
--			-- Auto-Repairing Autoclave (Haste, Proc)
--			{spellID = 177086, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Elementalist's Shielding Talisman (Multistrike, Proc)
--			{spellID = 177063, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Emblem of Caustic Healing (Haste, Use)
--			{spellID = 176879, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Formidable Censer of Faith (Haste, Proc)
--			{spellID = 176943, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Immaculate Living Mushroom (Crit, Proc)
--			{spellID = 176978, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Ironspike Chew Toy (Spirit, Proc)
--			{spellID = 177060, unitID = "player", caster = "player", filter = "BUFF"},
--			-- 6.1: Healing
--			-- Intuition's Gift (Crit, Use)
--			{spellID = 183929, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Leaf of the Ancient Protectors (Versatility, Proc)
--			{spellID = 165833, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Tharbek's Lucky Pebble (Mastery, Use)
--			{spellID = 165535, unitID = "player", caster = "player", filter = "BUFF"},
--			-- Voidmender's Shadowgem (Crit, Use)
--			{spellID = 165532, unitID = "player", caster = "player", filter = "BUFF"},
--
--			-- Enchants
--			-- Mark of Blackrock (Bonus Armor)
--			{spellID = 159679, unitID = "player", caster = "all", filter = "BUFF"},
--			-- Mark of Bleeding Hollow (Mastery)
--			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
--			-- Mark of Shadowmoon (Spirit)
--			{spellID = 159678, unitID = "player", caster = "all", filter = "BUFF"},
--			-- Mark of the Frostwolf (Multistrike)
--			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
--			-- Mark of the Thunderlord (Crit)
--			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
--			-- Mark of Warsong (Haste)
--			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.MidIconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Cenarion Ward
			{spellID = 102351, unitID = "target", caster = "player", filter = "BUFF"},
			-- Lifebloom
			{spellID = 33763, unitID = "target", caster = "player", filter = "BUFF"},
			-- Rejuvenation
			{spellID = 774, unitID = "target", caster = "player", filter = "BUFF"},
			-- Regrowth
			{spellID = 8936, unitID = "target", caster = "player", filter = "BUFF"},
			-- Wild Growth
			{spellID = 48438, unitID = "target", caster = "player", filter = "BUFF"},
			
			-- Immobilized
			{spellID = 45334, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Moonfire
			{spellID = 164812, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Rake
			{spellID = 155722, unitID = "target", caster = "player", filter = "DEBUFF", absID = true},
			-- Rip
			{spellID = 1079, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Sunfire
			{spellID = 164815, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Thrash
			{spellID = 77758, unitID = "target", caster = "player", filter = "DEBUFF"},
			
			-- Trinket Effects
			-- Mark of Doom (Prophecy of Fear)
			{spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		--[[{
			Name = "T_DE/BUFF_BAR",
			enable = Misc.Tbar,
			Direction = "UP",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.target_bar)},

			-- Cenarion Ward
			{spellID = 102351, unitID = "target", caster = "player", filter = "BUFF"},
			-- Lifebloom
			{spellID = 33763, unitID = "target", caster = "player", filter = "BUFF"},
			-- Rejuvenation
			{spellID = 774, unitID = "target", caster = "player", filter = "BUFF"},
			-- Regrowth
			{spellID = 8936, unitID = "target", caster = "player", filter = "BUFF"},
			-- Wild Growth
			{spellID = 48438, unitID = "target", caster = "player", filter = "BUFF"},
		},--]]
		{
			Name = "PVE/PVP_CC",
			enable = Misc.Pbar,
			Direction = "DOWN",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.pve_cc)},

			-- Cyclone
			{spellID = 33786, unitID = "focus", caster = "all", filter = "DEBUFF"},
			-- Entangling Roots
			{spellID = 339, unitID = "focus", caster = "all", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Barkskin
			{spellID = 22812, filter = "CD"},
			-- Growl
			{spellID = 6795, filter = "CD"},
			-- Incapacitating Roar
			{spellID = 99, filter = "CD"},
			-- Incarnation: Chosen of Elune
			{spellID = 102560, filter = "CD"},
			-- Incarnation: King of the Jungle
			{spellID = 102543, filter = "CD"},
			-- Incarnation: Son of Ursoc
			{spellID = 102558, filter = "CD"},
			-- Incarnation: Tree of Life
			{spellID = 33891, filter = "CD"},
			-- Ironbark
			{spellID = 102342, filter = "CD"},
			-- Maim
			{spellID = 22570, filter = "CD"},
			-- Mangle
			{spellID = 33917, filter = "CD"},
			-- Mighty Bash
			{spellID = 5211, filter = "CD"},
			-- Nature's Cure
			{spellID = 88423, filter = "CD"},
			-- Nature's Vigil
			{spellID = 124974, filter = "CD"},
			-- Remove Corruption
			{spellID = 2782, filter = "CD"},
			-- Skull Bash
			{spellID = 106839, filter = "CD"},
			-- Solar Beam
			{spellID = 78675, filter = "CD"},
			-- Starsurge
			{spellID = 78674, filter = "CD"},
			-- Swiftmend
			{spellID = 18562, filter = "CD"},
			-- Tiger's Fury
			{spellID = 5217, filter = "CD"},
			-- Typhoon
			{spellID = 132469, filter = "CD"},
			-- Ursol's Vortex
			{spellID = 102793, filter = "CD"},
			-- Wild Charge
			{spellID = 102401, filter = "CD"},
			-- Wild Growth
			{spellID = 48438, filter = "CD"},

			-- Racial
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD", absID = true},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			
			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["HUNTER"] = {			--[猎人]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Beast Cleave
			{spellID = 118455, unitID = "pet", caster = "player", filter = "BUFF"},
			-- Bestial Wrath
			{spellID = 19574, unitID = "player", caster = "player", filter = "BUFF"},
			-- Deterrence
			{spellID = 19263, unitID = "player", caster = "player", filter = "BUFF"},
			-- Posthaste
			{spellID = 118922, unitID = "player", caster = "player", filter = "BUFF"},
			-- Rapid Fire
			{spellID = 3045, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spirit Mend
			{spellID = 90361, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Frenzy
			{spellID = 19615, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Mend Pet
			{spellID = 136, unitID = "pet", caster = "player", filter = "BUFF"},

			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Ranged DPS (Crit, Proc)
			{spellID = 162915, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1: Alchemy Stones
			-- Agility
			{spellID = 60233, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Coren's Cold Chromium (Attack Power, Proc)
			{spellID = 127926, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ranged DPS [Agility] (Versatility, Use)
			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ranged DPS [Agility] (Versatility, Proc)
			{spellID = 182060, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Infallible Tracking Charm
			{spellID = 201408, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Ranged DPS [Agility]
			-- Beating Heart of the Mountain (Multistrike, Use)
			{spellID = 176878, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blackheart Enforcer's Medallion (Multistrike, Proc)
			{spellID = 176984, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Jar of Doom (Mastery, Proc)
			{spellID = 176939, unitID = "player", caster = "player", filter = "BUFF"},
			-- Humming Blackiron Trigger (Crit, Proc)
			{spellID = 177067, unitID = "player", caster = "player", filter = "BUFF"},
			-- Lucky Double-Sided Coin (Agility, Use)
			{spellID = 177597, unitID = "player", caster = "player", filter = "BUFF"},
			-- Meaty Dragonspine Trophy (Haste, Proc)
			{spellID = 177035, unitID = "player", caster = "player", filter = "BUFF"},
			-- Scales of Doom (Multistrike, Proc)
			{spellID = 177038, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.1: Ranged DPS [Agility]
			-- Gor'ashan's Lodestone Spike (Multistrike, Use)
			{spellID = 165542, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kihra's Adrenaline Injector (Mastery, Use)
			{spellID = 165485, unitID = "player", caster = "player", filter = "BUFF"},
			-- Malicious Censer
			{spellID = 183926, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mirror of the Blademaster (Images, Proc)
			{spellID = 184270, unitID = "player", caster = "player", filter = "BUFF"},
			-- Soul Capacitator (Damage, Proc)
			{spellID = 184293, unitID = "player", caster = "player", filter = "BUFF"},
			-- Witherbark's Branch (Haste, Proc)
			{spellID = 165822, unitID = "player", caster = "player", filter = "BUFF"},

			-- Enchants
			-- Hemet's Heartseeker (Mastery)
			{spellID = 173288, unitID = "player", caster = "all", filter = "BUFF"},
			-- Megawatt Filament (Crit)
			{spellID = 156060, unitID = "player", caster = "all", filter = "BUFF"},
			-- Oglethorpe's Missile Splitter (Multistrike)
			{spellID = 156055, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Ankle Crack (Crocolisk)
			{spellID = 50433, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Concussive Shot
			{spellID = 5116, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Entrapment
			{spellID = 135373, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Freezing Trap
			{spellID = 3355, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Frost Breath (Chimaera)
			{spellID = 54644, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Frozen Ammo
			{spellID = 162546, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Ice Trap
			{spellID = 135299, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Narrow Escape
			{spellID = 136634, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Poisoned Ammo
			{spellID = 162543, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Serpent Sting
			{spellID = 87935, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Warp Time (Warp Stalker)
			{spellID = 35346, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Wyvern Sting
			{spellID = 19386, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
--[[		{
			Name = "T_DE/BUFF_BAR",
			enable = Misc.Tbar,
			Direction = "UP",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.target_bar)},

			-- Serpent Sting
			{spellID = 87935, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
--]]
		{
			Name = "PVE/PVP_CC",
			enable = Misc.Pbar,
			Direction = "DOWN",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.pve_cc)},

			-- Wyvern Sting
			{spellID = 19386, unitID = "focus", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- A Murder of Crows
			{spellID = 131894, filter = "CD"},
			-- Concussive Shot
			{spellID = 5116, filter = "CD"},
			-- Counter Shot
			{spellID = 147362, filter = "CD"},
			-- Chimera Shot
			{spellID = 53209, filter = "CD"},
			-- Barrage
			{spellID = 120360, filter = "CD"},
			-- Bestial Wrath
			{spellID = 19574, filter = "CD"},
			-- Binding Shot
			{spellID = 117526, filter = "CD"},
			-- Deterrence
			{spellID = 19263, filter = "CD"},
			-- Dire Beast
			{spellID = 120679, filter = "CD"},
			-- Disengage
			{spellID = 781, filter = "CD"},
			-- Exhilaration
			{spellID = 109304, filter = "CD"},
			-- Explosive Trap
			{spellID = 13813, filter = "CD"},
			-- Feign Death
			{spellID = 5384, filter = "CD"},
			-- Fervor
			{spellID = 82726, filter = "CD"},
			-- Ice Trap
			{spellID = 13809, filter = "CD"},
			-- Intimidation
			{spellID = 19577, filter = "CD"},
			-- Kill Command
			{spellID = 34026, filter = "CD"},
			-- Master's Call
			{spellID = 53271, filter = "CD"},
			-- Misdirection
			{spellID = 34477, filter = "CD"},
			-- Rapid Fire
			{spellID = 3045, filter = "CD"},
			-- Spirit Mend (Pet)
			{spellID = 90361, filter = "CD"},
			-- Wyvern Sting
			{spellID = 19386, filter = "CD"},

			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Quaking Palm (Pandaren)
			{spellID = 107079, filter = "CD"},
			-- Rocket Jump (Goblin)
			{spellID = 69070, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},

			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["MAGE"] = {			--[法师]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Alter Time
			{spellID = 110909, unitID = "player", caster = "player", filter = "BUFF"},
			-- 气定神闲
			{spellID = 205025, unitID = "player", caster = "player", filter = "BUFF"},
			-- Arcane Power
			{spellID = 12042, unitID = "player", caster = "player", filter = "BUFF"},
			-- Evanesce
			{spellID = 157913, unitID = "player", caster = "player", filter = "BUFF"},
			-- Greater Invisibility
			{spellID = 110960, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Heating Up
			{spellID = 48107, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ice Barrier
			{spellID = 11426, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ice Block
			{spellID = 45438, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ice Floes
			{spellID = 108839, unitID = "player", caster = "player", filter = "BUFF"},
			-- Icy Veins
			{spellID = 12472, unitID = "player", caster = "player", filter = "BUFF"},
			-- Incanter's Flow
			{spellID = 1463, unitID = "player", caster = "player", filter = "BUFF"},
			-- Invisibility
			{spellID = 32612, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Rune of Power
			{spellID = 116014, unitID = "player", caster = "player", filter = "BUFF"},
			-- Temporal Shield
			{spellID = 115610, unitID = "player", caster = "player", filter = "BUFF"},
			-- Prismatic Crystal
			{spellID = 152087, filter = "ICD", trigger = "NONE", duration = 12},
			-- Mirror Image
			{spellID = 55342, filter = "ICD", trigger = "NONE", duration = 40},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Arcane Missiles
			{spellID = 79683, unitID = "player", caster = "player", filter = "BUFF"},
			-- Fingers of Frost
			{spellID = 44544, unitID = "player", caster = "player", filter = "BUFF"},
			-- Pyroblast!
			{spellID = 48108, unitID = "player", caster = "player", filter = "BUFF"},

			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Caster DPS (Crit, Proc)
			{spellID = 162919, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1: Alchemy Stones
			-- Intellect
			{spellID = 60234, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Mithril Wristwatch (Spell Power, Proc)
			{spellID = 127924, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Caster DPS (Versatility, Use)
			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
			-- Caster DPS (Versatility, Proc)
			{spellID = 182058, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Orb Of Voidsight
			{spellID = 201410, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Caster DPS
			-- Blackiron Micro Crucible (Multistrike, Proc)
			{spellID = 177081, unitID = "player", caster = "player", filter = "BUFF"},
			-- Copeland's Clarity (Spellpower, Use)
			{spellID = 177594, unitID = "player", caster = "player", filter = "BUFF"},
			-- Darmac's Unstoppable Talisman (Haste, Proc)
			{spellID = 177051, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Orb of Putrescence (Mastery, Proc)
			{spellID = 176941, unitID = "player", caster = "player", filter = "BUFF"},
			-- Furyheart Talisman (Haste, Proc)
			{spellID = 176980, unitID = "player", caster = "player", filter = "BUFF"},
			-- Goren Soul Repository (Crit, Proc)
			{spellID = 177046, unitID = "player", caster = "player", filter = "BUFF"},
			-- Shards of Nothing (Haste, Use)
			{spellID = 176875, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.1: Caster DPS
			-- Desecrated Shadowmoon Insignia (Intellect, Proc)
			{spellID = 183924, unitID = "player", caster = "player", filter = "BUFF"},
			-- Coagulated Genesaur Blood (Multistrike, Proc)
			{spellID = 165832, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ragewing's Firefang (Versatility, Use)
			{spellID = 165543, unitID = "player", caster = "player", filter = "BUFF"},
			-- Fleshrender's Meathook (Haste, Use)
			{spellID = 165531, unitID = "player", caster = "player", filter = "BUFF"},

			-- Enchants
			-- Mark of Bleeding Hollow (Mastery)
			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Frostwolf (Multistrike)
			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Thunderlord (Crit)
			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Warsong (Haste)
			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Arcane Charge
			{spellID = 36032, unitID = "player", caster = "player", filter = "DEBUFF"},
			-- Cone of Cold
			{spellID = 120, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Freeze (Pet)
			{spellID = 33395, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Frost Bomb
			{spellID = 112948, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Frost Nova
			{spellID = 122, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Ignite
			{spellID = 12654, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Living Bomb
			{spellID = 44457, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Nether Tempest
			{spellID = 114923, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Pyroblast
			{spellID = 11366, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Slow
			{spellID = 31589, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Water Jet (Pet)
			{spellID = 135029, unitID = "target", caster = "player", filter = "DEBUFF"},
			
			-- Trinket Effects
			-- Mark of Doom (Prophecy of Fear)
			{spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "PVE/PVP_CC",
			enable = Misc.Pbar,
			Direction = "DOWN",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.pve_cc)},

			-- Polymorph
			{spellID = 118, unitID = "focus", caster = "all", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Alter Time
			{spellID = 108978, filter = "CD"},
			-- Arcane Power
			{spellID = 12042, filter = "CD"},
			-- Cold Snap
			{spellID = 11958, filter = "CD"},
			-- Cone of Cold
			{spellID = 120, filter = "CD"},
			-- Counterspell
			{spellID = 2139, filter = "CD"},
			-- Blazing Speed
			{spellID = 108843, filter = "CD"},
			-- Blink
			{spellID = 1953, filter = "CD"},
			-- Comet Storm
			{spellID = 153595, filter = "CD"},
			-- Evocation
			{spellID = 12051, filter = "CD"},
			-- Flamestrike
			{spellID = 2120, filter = "CD"},
			-- Frost Bomb
			{spellID = 112948, filter = "CD"},
			-- Frost Nova
			{spellID = 122, filter = "CD"},
			-- Frozen Orb
			{spellID = 84714, filter = "CD"},
			-- Ice Barrier
			{spellID = 11426, filter = "CD"},
			-- Ice Block
			{spellID = 45438, filter = "CD"},
			-- Ice Floes
			{spellID = 108839, filter = "CD"},
			-- Icy Veins
			{spellID = 12472, filter = "CD"},
			-- Incanter's Ward
			{spellID = 1463, filter = "CD"},
			-- Invisibility
			{spellID = 66, filter = "CD"},
			-- Mirror Image
			{spellID = 55342, filter = "CD"},
			-- Prismatic Crystal
			{spellID = 152087, filter = "CD"},
			-- Ring of Frost
			{spellID = 113724, filter = "CD"},
			-- Temporal Shield
			{spellID = 115610, filter = "CD"},
			-- Water Jet (Pet)
			{spellID = 135029, filter = "CD"},

			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- Escape Artist (Gnome)
			{spellID = 20589, filter = "CD"},
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Quaking Palm (Pandaren)
			{spellID = 107079, filter = "CD"},
			-- Rocket Jump (Goblin)
			{spellID = 69070, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},

			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["MONK"] = {			--[武僧]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Dampen Harm
			{spellID = 122278, unitID = "player", caster = "player", filter = "BUFF"},
			-- Diffuse Magic
			{spellID = 122783, unitID = "player", caster = "player", filter = "BUFF"},
			-- Elusive Brew
			{spellID = 115308, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Energizing Brew
			{spellID = 115288, unitID = "player", caster = "player", filter = "BUFF"},
			-- Fortifying Brew
			{spellID = 120954, unitID = "player", caster = "player", filter = "BUFF"},
			-- Momentum
			{spellID = 119085, unitID = "player", caster = "player", filter = "BUFF"},
			-- Thunder Focus Tea
			{spellID = 116680, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tigereye Brew
			{spellID = 116740, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Touch of Karma
			{spellID = 125174, unitID = "player", caster = "player", filter = "BUFF"},
			--轻度醉拳
			--{spellID = 124275, unitID = "player", caster = "all", filter = "DEBUFF"},
			--中度醉拳
			--{spellID = 124274, unitID = "player", caster = "all", filter = "DEBUFF"},
			--重度醉拳
			{spellID = 124273, unitID = "player", caster = "all", filter = "DEBUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Combo Breaker: Blackout Kick
			{spellID = 116768, unitID = "player", caster = "player", filter = "BUFF"},
			-- Elusive Brew
			{spellID = 128939, unitID = "player", caster = "player", filter = "BUFF", absID = true, count = 12},

			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Healing (Spirit, Proc)
			{spellID = 162913, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS (Crit, Proc)
			{spellID = 162915, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tanking (Crit, Proc)
			{spellID = 162917, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1: Alchemy Stones
			-- Agility
			{spellID = 60233, unitID = "player", caster = "player", filter = "BUFF"},
			-- Intellect
			{spellID = 60234, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Brawler's Statue (Bonus Armor, Use)
			{spellID = 127967, unitID = "player", caster = "player", filter = "BUFF"},
			-- Coren's Cold Chromium (Attack Power, Proc)
			{spellID = 127926, unitID = "player", caster = "player", filter = "BUFF"},
			-- Thousand-Year Pickled Egg (Haste, Proc)
			{spellID = 127914, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Agility] (Versatility, Use)
			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Agility] (Versatility, Proc)
			{spellID = 182060, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Infallible Tracking Charm
			{spellID = 201408, unitID = "player", caster = "player", filter = "BUFF"},
			-- Orb Of Voidsight
			{spellID = 201410, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Tanking
			-- Battering Talisman (Haste, Proc)
			{spellID = 177102, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blast Furnace Door (Mastery, Proc)
			{spellID = 177056, unitID = "player", caster = "player", filter = "BUFF"},
			-- Evergaze Arcane Eidolon (Bonus Armor, Proc)
			{spellID = 177053, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Relic of Blood (Haste, Proc)
			{spellID = 176937, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kyb's Foolish Perseverance (Health, Use)
			{spellID = 176460, unitID = "player", caster = "player", filter = "BUFF"},
			-- Pol's Blinded Eye (Mastery, Use)
			{spellID = 176876, unitID = "player", caster = "player", filter = "BUFF"},
			-- Stoneheart Idol (Crit, Proc)
			{spellID = 176982, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tablet of Turnbuckle Teamwork (Bonus Armor, Use)
			{spellID = 176873, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.1: Tanking
			-- Anzu's Cursed Plume (Mastery, Proc)
			{spellID = 183931, unitID = "player", caster = "player", filter = "BUFF"},
			-- Enforcer's Stun Grenade (Versatility, Use)
			{spellID = 165534, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tyrant's Decree (Stamina, Proc)
			{spellID = 184770, unitID = "player", caster = "player", filter = "BUFF"},
			-- Xeri'tac's Unhatched Egg Sac (Mastery, Proc)
			{spellID = 165824, unitID = "player", caster = "player", filter = "BUFF"},
			-- 4.0: Melee DPS [Agility]
			-- Beating Heart of the Mountain (Multistrike, Use)
			{spellID = 176878, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blackheart Enforcer's Medallion (Multistrike, Proc)
			{spellID = 176984, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Jar of Doom (Mastery, Proc)
			{spellID = 176939, unitID = "player", caster = "player", filter = "BUFF"},
			-- Humming Blackiron Trigger (Crit, Proc)
			{spellID = 177067, unitID = "player", caster = "player", filter = "BUFF"},
			-- Lucky Double-Sided Coin (Agility, Use)
			{spellID = 177597, unitID = "player", caster = "player", filter = "BUFF"},
			-- Meaty Dragonspine Trophy (Haste, Proc)
			{spellID = 177035, unitID = "player", caster = "player", filter = "BUFF"},
			-- Scales of Doom (Multistrike, Proc)
			{spellID = 177038, unitID = "player", caster = "player", filter = "BUFF"},
			-- 4.1: Melee DPS [Agility]
			-- Gor'ashan's Lodestone Spike (Multistrike, Use)
			{spellID = 165542, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kihra's Adrenaline Injector (Mastery, Use)
			{spellID = 165485, unitID = "player", caster = "player", filter = "BUFF"},
			-- Malicious Censer
			{spellID = 183926, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mirror of the Blademaster (Images, Proc)
			{spellID = 184270, unitID = "player", caster = "player", filter = "BUFF"},
			-- Soul Capacitator (Damage, Proc)
			{spellID = 184293, unitID = "player", caster = "player", filter = "BUFF"},
			-- Witherbark's Branch (Haste, Proc)
			{spellID = 165822, unitID = "player", caster = "player", filter = "BUFF"},
			-- 5.0: Healing
			-- Auto-Repairing Autoclave (Haste, Proc)
			{spellID = 177086, unitID = "player", caster = "player", filter = "BUFF"},
			-- Elementalist's Shielding Talisman (Multistrike, Proc)
			{spellID = 177063, unitID = "player", caster = "player", filter = "BUFF"},
			-- Emblem of Caustic Healing (Haste, Use)
			{spellID = 176879, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Censer of Faith (Haste, Proc)
			{spellID = 176943, unitID = "player", caster = "player", filter = "BUFF"},
			-- Immaculate Living Mushroom (Crit, Proc)
			{spellID = 176978, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ironspike Chew Toy (Spirit, Proc)
			{spellID = 177060, unitID = "player", caster = "player", filter = "BUFF"},
			-- 5.1: Healing
			-- Intuition's Gift (Crit, Use)
			{spellID = 183929, unitID = "player", caster = "player", filter = "BUFF"},
			-- Leaf of the Ancient Protectors (Versatility, Proc)
			{spellID = 165833, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tharbek's Lucky Pebble (Mastery, Use)
			{spellID = 165535, unitID = "player", caster = "player", filter = "BUFF"},
			-- Voidmender's Shadowgem (Crit, Use)
			{spellID = 165532, unitID = "player", caster = "player", filter = "BUFF"},

			-- Enchants
			-- Mark of Blackrock (Bonus Armor)
			{spellID = 159679, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Bleeding Hollow (Mastery)
			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Shadowmoon (Spirit)
			{spellID = 159678, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Frostwolf (Multistrike)
			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Thunderlord (Crit)
			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Warsong (Haste)
			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Breath of Fire
			{spellID = 123725, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Heavy Stagger
			{spellID = 124273, unitID = "player", caster = "player", filter = "DEBUFF"},
		},
		--[[{
			Name = "T_DE/BUFF_BAR",
			enable = Misc.Tbar,
			Direction = "UP",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.target_bar)},

		},]]
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Chi Burst
			{spellID = 123986, filter = "CD"},
			-- Chi Wave
			{spellID = 115098, filter = "CD"},
			-- Dampen Harm
			{spellID = 122278, filter = "CD"},
			-- Detox
			{spellID = 115450, filter = "CD"},
			-- Energizing Brew
			{spellID = 115288, filter = "CD"},
			-- Expel Harm
			{spellID = 115072, filter = "CD"},
			-- Fists of Fury
			{spellID = 113656, filter = "CD"},
			-- Flying Serpent Kick
			{spellID = 101545, filter = "CD"},
			-- Invoke Xuen, the White Tiger
			{spellID = 123904, filter = "CD"},
			-- Life Cocoon
			{spellID = 116849, filter = "CD"},
			-- Paralysis
			{spellID = 115078, filter = "CD"},
			-- Provoke
			{spellID = 115546, filter = "CD"},
			-- Ring of Peace
			{spellID = 116844, filter = "CD"},
			-- Rising Sun Kick
			{spellID = 107428, filter = "CD"},
			-- Spear Hand Strike
			{spellID = 116705, filter = "CD"},
			-- Thunder Focus Tea
			{spellID = 116680, filter = "CD"},
			-- Touch of Karma
			{spellID = 122470, filter = "CD"},
			-- Touch of Death
			{spellID = 115080, filter = "CD"},
			-- Zen Sphere
			{spellID = 124081, filter = "CD"},

			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
			-- Escape Artist (Gnome)
			{spellID = 20589, filter = "CD"},
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
			-- Quaking Palm (Pandaren)
			{spellID = 107079, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},

			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},

			-- Internal
		},
	},
	["PALADIN"] = {			--[圣骑]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Ardent Defender
			{spellID = 31850, unitID = "player", caster = "player", filter = "BUFF"},
			-- Avenging Wrath
			{spellID = 31884, unitID = "player", caster = "player", filter = "BUFF"},
			-- Divine Protection
			{spellID = 498, unitID = "player", caster = "player", filter = "BUFF"},
			-- Divine Shield
			{spellID = 642, unitID = "player", caster = "player", filter = "BUFF"},
			-- Eternal Flame
			{spellID = 114163, unitID = "player", caster = "player", filter = "BUFF"},
			-- Guardian of Ancient Kings
			{spellID = 86659, unitID = "player", caster = "player", filter = "BUFF"},
			-- Holy Avenger
			{spellID = 105809, unitID = "player", caster = "player", filter = "BUFF"},
			-- Seraphim
			{spellID = 152262, unitID = "player", caster = "player", filter = "BUFF"},
			-- Speed of Light
			{spellID = 85499, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Final Verdict
			{spellID = 157048, unitID = "player", caster = "player", filter = "BUFF"},
			-- Grand Crusader
			{spellID = 85416, unitID = "player", caster = "player", filter = "BUFF"},
			-- Infusion of Light
			{spellID = 54149, unitID = "player", caster = "player", filter = "BUFF"},
			-- Selfless Healer
			{spellID = 114250, unitID = "player", caster = "player", filter = "BUFF"},
			-- Item sets
			-- Divine Crusader (T16)
			--{spellID = 144595, unitID = "player", caster = "player", filter = "BUFF"},
			
			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Healing (Spirit, Proc)
			{spellID = 162913, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS (Crit, Proc)
			{spellID = 162915, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tanking (Crit, Proc)
			{spellID = 162917, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1 Alchemy Stones
			-- Strength
			{spellID = 60229, unitID = "player", caster = "player", filter = "BUFF"},
			-- Intellect
			{spellID = 60234, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Brawler's Statue (Bonus Armor, Use)
			{spellID = 127967, unitID = "player", caster = "player", filter = "BUFF"},
			-- Coren's Cold Chromium (Attack Power, Proc)
			{spellID = 127926, unitID = "player", caster = "player", filter = "BUFF"},
			-- Thousand-Year Pickled Egg (Haste, Proc)
			{spellID = 127914, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Strength] (Versatility, Use)
			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Strength] (Versatility, Proc)
			{spellID = 182063, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Gronntooth War Horn (Strength, Proc)
			{spellID = 201405, unitID = "player", caster = "player", filter = "BUFF"},
			-- Orb Of Voidsight
			{spellID = 201410, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Tanking
			-- Battering Talisman (Haste, Proc)
			{spellID = 177102, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blast Furnace Door (Mastery, Proc)
			{spellID = 177056, unitID = "player", caster = "player", filter = "BUFF"},
			-- Evergaze Arcane Eidolon (Bonus Armor, Proc)
			{spellID = 177053, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Relic of Blood (Haste, Proc)
			{spellID = 176937, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kyb's Foolish Perseverance (Health, Use)
			{spellID = 176460, unitID = "player", caster = "player", filter = "BUFF"},
			-- Pol's Blinded Eye (Mastery, Use)
			{spellID = 176876, unitID = "player", caster = "player", filter = "BUFF"},
			-- Stoneheart Idol (Crit, Proc)
			{spellID = 176982, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tablet of Turnbuckle Teamwork (Bonus Armor, Use)
			{spellID = 176873, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.1: Tanking
			-- Anzu's Cursed Plume (Mastery, Proc)
			{spellID = 183931, unitID = "player", caster = "player", filter = "BUFF"},
			-- Enforcer's Stun Grenade (Versatility, Use)
			{spellID = 165534, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tyrant's Decree (Stamina, Proc)
			{spellID = 184770, unitID = "player", caster = "player", filter = "BUFF"},
			-- Xeri'tac's Unhatched Egg Sac (Mastery, Proc)
			{spellID = 165824, unitID = "player", caster = "player", filter = "BUFF"},
			-- 4.0: Melee DPS [Strength]
			-- Forgemaster's Insignia (Multistrike, Proc)
			{spellID = 177096, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Fang (Multistrike, Proc)
			{spellID = 176935, unitID = "player", caster = "player", filter = "BUFF"},
			-- Horn of the Screaming Spirits (Mastery, Proc)
			{spellID = 177042, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mote of the Mountain (Versatility, Proc)
			{spellID = 176974, unitID = "player", caster = "player", filter = "BUFF"},
			-- Scabbard of Kyanos (Strength, Use)
			{spellID = 177189, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tectus' Beating Heart (Crit, Proc)
			{spellID = 177040, unitID = "player", caster = "player", filter = "BUFF"},
			-- Vial of Convulsive Shadows (Multistrike, Use)
			{spellID = 176874, unitID = "player", caster = "player", filter = "BUFF"},
			-- 4.1: Melee DPS [Strength]
			-- Bonemaw's Big Toe (Crit, Use)
			{spellID = 165532, unitID = "player", caster = "player", filter = "BUFF"},
			-- Emberscale Talisman (Versatility, Use)
			{spellID = 165543, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spores of Alacrity (Haste, Proc)
			{spellID = 165822, unitID = "player", caster = "player", filter = "BUFF"},
			-- Unending Hunger (Strength, Proc)
			{spellID = 183941, unitID = "player", caster = "player", filter = "BUFF"},
			-- 5.0: Healing
			-- Auto-Repairing Autoclave (Haste, Proc)
			{spellID = 177086, unitID = "player", caster = "player", filter = "BUFF"},
			-- Elementalist's Shielding Talisman (Multistrike, Proc)
			{spellID = 177063, unitID = "player", caster = "player", filter = "BUFF"},
			-- Emblem of Caustic Healing (Haste, Use)
			{spellID = 176879, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Censer of Faith (Haste, Proc)
			{spellID = 176943, unitID = "player", caster = "player", filter = "BUFF"},
			-- Immaculate Living Mushroom (Crit, Proc)
			{spellID = 176978, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ironspike Chew Toy (Spirit, Proc)
			{spellID = 177060, unitID = "player", caster = "player", filter = "BUFF"},
			-- 6.1: Healing
			-- Intuition's Gift (Crit, Use)
			{spellID = 183929, unitID = "player", caster = "player", filter = "BUFF"},
			-- Leaf of the Ancient Protectors (Versatility, Proc)
			{spellID = 165833, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tharbek's Lucky Pebble (Mastery, Use)
			{spellID = 165535, unitID = "player", caster = "player", filter = "BUFF"},

			-- Enchants
			-- Mark of Blackrock (Bonus Armor)
			{spellID = 159679, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Bleeding Hollow (Mastery)
			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Shadowmoon (Spirit)
			{spellID = 159678, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Frostwolf (Multistrike)
			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Thunderlord (Crit)
			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Warsong (Haste)
			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Forbearance
			{spellID = 25771, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- Trinket Effects
			-- Fel Burn (Empty Drinking Horn)
			{spellID = 184256, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Ardent Defender
			{spellID = 31850, filter = "CD"},
			-- Avenger's Shield
			{spellID = 31935, filter = "CD"},
			-- Avenging Wrath
			{spellID = 31884, filter = "CD"},
			-- Blinding Light
			{spellID = 115750, filter = "CD"},
			-- Cleanse
			{spellID = 4987, filter = "CD"},
			-- Consecration
			{spellID = 26573, filter = "CD"},
			-- Devotion Aura
			{spellID = 31821, filter = "CD"},
			-- Divine Protection
			{spellID = 498, filter = "CD"},
			-- Hammer of Justice
			{spellID = 853, filter = "CD"},
			-- Hand of Freedom
			{spellID = 1044, filter = "CD"},
			-- Hand of Protection
			{spellID = 1022, filter = "CD"},
			-- Hand of Sacrifice
			{spellID = 6940, filter = "CD"},
			-- Holy Avenger
			{spellID = 105809, filter = "CD"},
			-- Holy Prism
			{spellID = 114165, filter = "CD"},
			-- Judgment
			{spellID = 20271, filter = "CD"},
			-- Light's Hammer
			{spellID = 114158, filter = "CD"},
			-- Rebuke
			{spellID = 96231, filter = "CD"},
			-- Repentance
			{spellID = 20066, filter = "CD"},
			-- Speed of Light
			{spellID = 85499, filter = "CD"},
			
			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			
			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["PRIEST"] = {			--[牧师]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Dispersion
			{spellID = 47585, unitID = "player", caster = "player", filter = "BUFF"},
			-- Fade
			{spellID = 586, unitID = "player", caster = "player", filter = "BUFF"},
			-- Focused Will
			{spellID = 45242, unitID = "player", caster = "player", filter = "BUFF"},
			-- Power Infusion
			{spellID = 10060, unitID = "player", caster = "player", filter = "BUFF"},
			-- Power Word: Shield
			{spellID = 17, unitID = "player", caster = "all", filter = "BUFF"},
			-- Renew
			{spellID = 139, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spectral Guise
			{spellID = 112833, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spirit Shell
			{spellID = 109964, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Vampiric Embrace
			{spellID = 15286, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Shadowy Insight
			{spellID = 124430, unitID = "player", caster = "player", filter = "BUFF"},
			-- Surge of Darkness
			{spellID = 87160, unitID = "player", caster = "player", filter = "BUFF"},
			-- Surge of Light
			{spellID = 114255, unitID = "player", caster = "player", filter = "BUFF"},
			-- Twist of Fate
			{spellID = 123254, unitID = "player", caster = "player", filter = "BUFF"},

			-- Item sets 套装
			-- 專心致志 (戒律T17)
			{spellID = 167695, unitID = "player", caster = "player", filter = "BUFF"},
			-- 偿赎 (戒律T18)
			{spellID = 186478, unitID = "player", caster = "player", filter = "BUFF"},

			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Caster DPS (Crit, Proc)
			{spellID = 162919, unitID = "player", caster = "player", filter = "BUFF"},
			-- Healing (Spirit, Proc)
			{spellID = 162913, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1: Alchemy Stones
			-- Intellect
			{spellID = 60234, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Mithril Wristwatch (Spell Power, Proc)
			{spellID = 127924, unitID = "player", caster = "player", filter = "BUFF"},
			-- Thousand-Year Pickled Egg (Haste, Proc)
			{spellID = 127914, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Caster DPS (Versatility, Use)
			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
			-- Caster DPS (Versatility, Proc)
			{spellID = 182058, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Orb Of Voidsight
			{spellID = 201410, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Caster DPS
			-- Blackiron Micro Crucible (Multistrike, Proc)
			{spellID = 177081, unitID = "player", caster = "player", filter = "BUFF"},
			-- Copeland's Clarity (Spellpower, Use)
			{spellID = 177594, unitID = "player", caster = "player", filter = "BUFF"},
			-- Darmac's Unstoppable Talisman (Haste, Proc)
			{spellID = 177051, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Orb of Putrescence (Mastery, Proc)
			{spellID = 176941, unitID = "player", caster = "player", filter = "BUFF"},
			-- Furyheart Talisman (Haste, Proc)
			{spellID = 176980, unitID = "player", caster = "player", filter = "BUFF"},
			-- Goren Soul Repository (Crit, Proc)
			{spellID = 177046, unitID = "player", caster = "player", filter = "BUFF"},
			-- Shards of Nothing (Haste, Use)
			{spellID = 176875, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.1: Caster DPS
			-- Desecrated Shadowmoon Insignia (Intellect, Proc)
			{spellID = 183924, unitID = "player", caster = "player", filter = "BUFF"},
			-- Coagulated Genesaur Blood (Multistrike, Proc)
			{spellID = 165832, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ragewing's Firefang (Versatility, Use)
			{spellID = 165543, unitID = "player", caster = "player", filter = "BUFF"},
			-- Fleshrender's Meathook (Haste, Use)
			{spellID = 165531, unitID = "player", caster = "player", filter = "BUFF"},
			-- 4.0: Healing
			-- Auto-Repairing Autoclave (Haste, Proc)
			{spellID = 177086, unitID = "player", caster = "player", filter = "BUFF"},
			-- Elementalist's Shielding Talisman (Multistrike, Proc)
			{spellID = 177063, unitID = "player", caster = "player", filter = "BUFF"},
			-- Emblem of Caustic Healing (Haste, Use)
			{spellID = 176879, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Censer of Faith (Haste, Proc)
			{spellID = 176943, unitID = "player", caster = "player", filter = "BUFF"},
			-- Immaculate Living Mushroom (Crit, Proc)
			{spellID = 176978, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ironspike Chew Toy (Spirit, Proc)
			{spellID = 177060, unitID = "player", caster = "player", filter = "BUFF"},
			-- 4.1: Healing
			-- Intuition's Gift (Crit, Use)
			{spellID = 183929, unitID = "player", caster = "player", filter = "BUFF"},
			-- Leaf of the Ancient Protectors (Versatility, Proc)
			{spellID = 165833, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tharbek's Lucky Pebble (Mastery, Use)
			{spellID = 165535, unitID = "player", caster = "player", filter = "BUFF"},
			-- Voidmender's Shadowgem (Crit, Use)
			{spellID = 165532, unitID = "player", caster = "player", filter = "BUFF"},
			
			-- Enchants
			-- Mark of Bleeding Hollow (Mastery)
			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Shadowmoon (Spirit)
			{spellID = 159678, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Frostwolf (Multistrike)
			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Thunderlord (Crit)
			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Warsong (Haste)
			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Guardian Spirit
			{spellID = 47788, unitID = "target", caster = "player", filter = "BUFF"},
			-- Pain Suppression
			{spellID = 33206, unitID = "target", caster = "player", filter = "BUFF"},
			-- Prayer of Mending
			{spellID = 41635, unitID = "target", caster = "player", filter = "BUFF"},
			-- Renew
			{spellID = 139, unitID = "target", caster = "player", filter = "BUFF"},
			-- Shadow Word: Pain
			{spellID = 589, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Vampiric Touch
			{spellID = 34914, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Void Entropy
			{spellID = 155361, unitID = "target", caster = "player", filter = "DEBUFF"},

			-- Void Tendrils
			{spellID = 114404, unitID = "target", caster = "player", filter = "DEBUFF"},
						
			-- Trinket Effects
			-- Mark of Doom (Prophecy of Fear)
			{spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		--[[{
			Name = "T_DE/BUFF_BAR",
			enable = Misc.Tbar,
			Direction = "UP",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.target_bar)},

			-- Guardian Spirit
			{spellID = 47788, unitID = "target", caster = "player", filter = "BUFF"},
			-- Pain Suppression
			{spellID = 33206, unitID = "target", caster = "player", filter = "BUFF"},
			-- Prayer of Mending
			{spellID = 41635, unitID = "target", caster = "player", filter = "BUFF"},
			-- Renew
			{spellID = 139, unitID = "target", caster = "player", filter = "BUFF"},
			-- Shadow Word: Pain
			{spellID = 589, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Vampiric Touch
			{spellID = 34914, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Void Entropy
			{spellID = 155361, unitID = "target", caster = "player", filter = "DEBUFF"},
		},--]]
		{
			Name = "PVE/PVP_CC",
			enable = Misc.Pbar,
			Direction = "DOWN",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.pve_cc)},

			-- Shackle Undead
			{spellID = 9484, unitID = "focus", caster = "player", filter = "DEBUFF"},
			-- Psychic Scream
			{spellID = 8122, unitID = "focus", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Circle of Healing
			{spellID = 34861, filter = "CD"},
			-- Desperate Prayer
			{spellID = 19236, filter = "CD"},
			-- Dispersion
			{spellID = 47585, filter = "CD"},
			-- Divine Star
			{spellID = 110744, filter = "CD"},
			-- Guardian Spirit
			{spellID = 47788, filter = "CD"},
			-- Halo
			{spellID = 120517, filter = "CD"},
			-- Holy Fire
			{spellID = 14914, filter = "CD"},
			-- Holy Word: Chastise
			{spellID = 88625, filter = "CD"},
			-- Leap of Faith
			{spellID = 73325, filter = "CD"},
			-- Mass Dispel
			{spellID = 32375, filter = "CD"},
			-- Mind Blast
			{spellID = 8092, filter = "CD"},
			-- Pain Suppression
			{spellID = 33206, filter = "CD"},
			-- Penance
			{spellID = 47540, filter = "CD"},
			-- Prayer of Mending
			{spellID = 33076, filter = "CD"},
			-- Psychic Horror
			{spellID = 64044, filter = "CD"},
			-- Psychic Scream
			{spellID = 8122, filter = "CD"},
			-- Purify
			{spellID = 527, filter = "CD"},
			-- Power Infusion
			{spellID = 10060, filter = "CD"},
			-- Power Word: Barrier
			{spellID = 62618, filter = "CD"},
			-- Shadow Word: Death
			{spellID = 32379, filter = "CD"},
			-- Silence
			{spellID = 15487, filter = "CD"},
			-- Spectral Guise
			{spellID = 112833, filter = "CD"},
			-- Fade
			{spellID = 586, filter = "CD"},

			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- Escape Artist (Gnome)
			{spellID = 20589, filter = "CD"},
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Quaking Palm (Pandaren)
			{spellID = 107079, filter = "CD"},
			-- Rocket Jump (Goblin)
			{spellID = 69070, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},

			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["ROGUE"] = {			--[盗贼]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Adrenaline Rush
			{spellID = 13750, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blade Flurry
			{spellID = 13877, unitID = "player", caster = "player", filter = "BUFF"},
			-- Burst of Speed
			{spellID = 108212, unitID = "player", caster = "player", filter = "BUFF"},
			-- Cheating Death
			{spellID = 45182, unitID = "player", caster = "player", filter = "BUFF"},
			-- Cloak of Shadows
			{spellID = 31224, unitID = "player", caster = "player", filter = "BUFF"},
			-- Combat Insight
			{spellID = 74002, unitID = "player", caster = "player", filter = "BUFF"},
			-- Combat Readiness
			{spellID = 74001, unitID = "player", caster = "player", filter = "BUFF"},
			-- Envenom
			{spellID = 32645, unitID = "player", caster = "player", filter = "BUFF"},
			-- Evasion
			{spellID = 5277, unitID = "player", caster = "player", filter = "BUFF"},
			-- Feint
			{spellID = 1966, unitID = "player", caster = "player", filter = "BUFF"},
			-- Master of Subtlety
			{spellID = 31665, unitID = "player", caster = "player", filter = "BUFF"},
			-- Shadow Reflection
			{spellID = 152151, unitID = "player", caster = "player", filter = "BUFF"},
			-- Slice and Dice
			{spellID = 5171, unitID = "player", caster = "player", filter = "BUFF"},
			-- Sprint
			{spellID = 2983, unitID = "player", caster = "player", filter = "BUFF"},
			-- Subterfuge
			{spellID = 115192, unitID = "player", caster = "player", filter = "BUFF"},
			-- Vanish
			{spellID = 1856, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Jolly Roger
			{spellID = 199603, unitID = "player", caster = "player", filter = "BUFF"},
			-- Grand Melee
			{spellID = 193358, unitID = "player", caster = "player", filter = "BUFF"},
			-- True Bearing
			{spellID = 193359, unitID = "player", caster = "player", filter = "BUFF"},
			-- Buried Treasure
			{spellID = 199600, unitID = "player", caster = "player", filter = "BUFF"},
			-- Broadsides
			{spellID = 193356, unitID = "player", caster = "player", filter = "BUFF"},
			-- Shark Infested Waters
			{spellID = 193357, unitID = "player", caster = "player", filter = "BUFF"},

			-- Item Sets
			-- 死亡暗影 (T18)
			{spellID = 188700, unitID = "player", caster = "player", filter = "BUFF"},
			
			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Melee DPS (Crit, Proc)
			{spellID = 162915, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1: Alchemy Stones
			-- Agility
			{spellID = 60233, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Coren's Cold Chromium (Attack Power, Proc)
			{spellID = 127926, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Agility] (Versatility, Use)
			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Agility] (Versatility, Proc)
			{spellID = 182060, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Infallible Tracking Charm
			{spellID = 201408, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Melee DPS [Agility]
			-- Beating Heart of the Mountain (Multistrike, Use)
			{spellID = 176878, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blackheart Enforcer's Medallion (Multistrike, Proc)
			{spellID = 176984, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Jar of Doom (Mastery, Proc)
			{spellID = 176939, unitID = "player", caster = "player", filter = "BUFF"},
			-- Humming Blackiron Trigger (Crit, Proc)
			{spellID = 177067, unitID = "player", caster = "player", filter = "BUFF"},
			-- Lucky Double-Sided Coin (Agility, Use)
			{spellID = 177597, unitID = "player", caster = "player", filter = "BUFF"},
			-- Meaty Dragonspine Trophy (Haste, Proc)
			{spellID = 177035, unitID = "player", caster = "player", filter = "BUFF"},
			-- Scales of Doom (Multistrike, Proc)
			{spellID = 177038, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.1: Melee DPS [Agility]
			-- Gor'ashan's Lodestone Spike (Multistrike, Use)
			{spellID = 165542, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kihra's Adrenaline Injector (Mastery, Use)
			{spellID = 165485, unitID = "player", caster = "player", filter = "BUFF"},
			-- Malicious Censer
			{spellID = 183926, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mirror of the Blademaster (Images, Proc)
			{spellID = 184270, unitID = "player", caster = "player", filter = "BUFF"},
			-- Soul Capacitator (Damage, Proc)
			{spellID = 184293, unitID = "player", caster = "player", filter = "BUFF"},
			-- Witherbark's Branch (Haste, Proc)
			{spellID = 165822, unitID = "player", caster = "player", filter = "BUFF"},
			
			-- Enchants
			-- Mark of Bleeding Hollow (Mastery)
			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Frostwolf (Multistrike)
			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Thunderlord (Crit)
			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Warsong (Haste)
			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Crippling Poison
			{spellID = 3409, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Deadly Poison
			{spellID = 2818, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Find Weakness
			{spellID = 91021, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Garrote
			{spellID = 703, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Gouge
			{spellID = 1776, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Hemorrhage
			{spellID = 16511, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Rupture
			{spellID = 1943, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Vendetta
			{spellID = 79140, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Wound Poison
			{spellID = 8680, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "PVE/PVP_CC",
			enable = Misc.Pbar,
			Direction = "DOWN",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.pve_cc)},

			-- Blind
			{spellID = 2094, unitID = "focus", caster = "player", filter = "DEBUFF"},
			-- Sap
			{spellID = 6770, unitID = "focus", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Adrenaline Rush
			{spellID = 13750, filter = "CD"},
			-- Combat Readiness
			{spellID = 74001, filter = "CD"},
			-- Gouge
			{spellID = 1776, filter = "CD"},
			-- Kick
			{spellID = 1766, filter = "CD"},
			-- Kidney Shot
			{spellID = 408, filter = "CD"},
			-- Killing Spree
			{spellID = 51690, filter = "CD"},
			-- Shadow Reflection
			{spellID = 152151, filter = "CD"},
			-- 暗影步
			{spellID = 36554, filter = "CD"},
			-- 闪避
			{spellID = 5277, filter = "CD"},
			-- 猩红之瓶
			{spellID = 185311, filter = "CD"},
			-- Sprint
			{spellID = 2983, filter = "CD"},
			-- Stealth
			{spellID = 1784, filter = "CD"},
			-- Vanish
			{spellID = 1856, filter = "CD"},
			-- Vendetta
			{spellID = 79140, filter = "CD"},

			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- Escape Artist (Gnome)
			{spellID = 20589, filter = "CD"},
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Quaking Palm (Pandaren)
			{spellID = 107079, filter = "CD"},
			-- Rocket Jump (Goblin)
			{spellID = 69070, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},

			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["SHAMAN"] = {			--[萨满]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Ancestral Guidance
			{spellID = 108281, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ascendance
			{spellID = 114049, unitID = "player", caster = "player", filter = "BUFF"},
			-- Astral Shift
			{spellID = 108271, unitID = "player", caster = "player", filter = "BUFF"},
			-- Elemental Mastery
			{spellID = 16166, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spiritwalker's Grace
			{spellID = 79206, unitID = "player", caster = "player", filter = "BUFF"},
			-- Stone Bulwark
			{spellID = 114893, unitID = "player", caster = "player", filter = "BUFF"},
			-- Unleash Life
			{spellID = 73685, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.MidIconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Elemental Blast
			{spellID = 118522, unitID = "player", caster = "player", filter = "BUFF"},
			-- Lava Surge
			{spellID = 77762, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tidal Waves
			{spellID = 53390, unitID = "player", caster = "player", filter = "BUFF"},
			-- Elemental Fusion
			--BETA {spellID = 157174, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.MidIconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Riptide
			{spellID = 61295, unitID = "target", caster = "player", filter = "BUFF"},

			-- Earthgrab
			{spellID = 64695, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- 火焰震击
			{spellID = 188389, unitID = "target", caster = "player", filter = "DEBUFF"},

			-- Trinket Effects
			-- Mark of Doom (Prophecy of Fear)
			{spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		--[[{
			Name = "T_DE/BUFF_BAR",
			enable = Misc.Tbar,
			Direction = "UP",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.target_bar)},

			-- Riptide
			{spellID = 61295, unitID = "target", caster = "player", filter = "BUFF"},
		},--]]
		{
			Name = "PVE/PVP_CC",
			enable = Misc.Pbar,
			Direction = "DOWN",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.pve_cc)},

			-- Hex
			{spellID = 51514, unitID = "focus", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Ancestral Guidance
			{spellID = 108281, filter = "CD"},
			-- Ascendance
			{spellID = 114049, filter = "CD"},
			-- Astral Shift
			{spellID = 108271, filter = "CD"},
			-- Cleanse Spirit
			{spellID = 51886, filter = "CD"},
			-- Earthbind Totem
			{spellID = 2484, filter = "CD"},
			-- Earth Shock
			{spellID = 8042, filter = "CD"},
			-- Elemental Blast
			{spellID = 117014, filter = "CD"},
			-- Feral Spirit
			{spellID = 51533, filter = "CD"},
			-- Healing Rain
			{spellID = 73920, filter = "CD"},
			-- Hex
			{spellID = 51514, filter = "CD"},
			-- Lava Burst
			{spellID = 51505, filter = "CD"},
			-- Lava Lash
			{spellID = 60103, filter = "CD"},
			-- Riptide
			{spellID = 61295, filter = "CD"},
			-- Spiritwalker's Grace
			{spellID = 79206, filter = "CD"},
			-- Stone Bulwark Totem
			{spellID = 108270, filter = "CD"},
			-- Stormstrike
			{spellID = 17364, filter = "CD"},
			-- Thunderstorm
			{spellID = 51490, filter = "CD"},
			-- Wind Shear
			{spellID = 57994, filter = "CD"},

			-- Racial
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Quaking Palm (Pandaren)
			{spellID = 107079, filter = "CD"},
			-- Rocket Jump (Goblin)
			{spellID = 69070, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},

			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["WARLOCK"] = {			--[术士]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Burning Rush
			{spellID = 111400, unitID = "player", caster = "player", filter = "BUFF"},
			-- Dark Regeneration
			{spellID = 108359, unitID = "player", caster = "player", filter = "BUFF"},
			-- Healthstone
			{spellID = 6262, unitID = "player", caster = "player", filter = "BUFF"},
			-- Soul Swap
			{spellID = 86211, unitID = "player", caster = "player", filter = "BUFF"},
			-- Unending Resolve
			{spellID = 104773, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.MidIconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Buffs
			-- Backdraft
			{spellID = 117828, unitID = "player", caster = "player", filter = "BUFF"},
			-- Demonic Synergy
			{spellID = 171982, unitID = "player", caster = "player", filter = "BUFF"},
			-- 恶魔增效
			{spellID = 193396, unitID = "pet", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.MidIconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- Agony
			{spellID = 980, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Corruption
			{spellID = 146739, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Doom
			{spellID = 603, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Haunt
			{spellID = 48181, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Immolate
			{spellID = 348, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Seed of Corruption
			{spellID = 27243, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Unstable Affliction
			{spellID = 30108, unitID = "target", caster = "player", filter = "DEBUFF", absID = true},

			-- Self
			-- Enslave Demon
			{spellID = 1098, unitID = "target", caster = "player", filter = "DEBUFF"},
			
			-- Trinket Effects
			-- Mark of Doom (Prophecy of Fear)
			{spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		--[[{
			Name = "T_DE/BUFF_BAR",
			enable = Misc.Tbar,
			Direction = "UP",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.target_bar)},

			-- Agony
			{spellID = 980, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Corruption
			{spellID = 146739, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Doom
			{spellID = 603, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Haunt
			{spellID = 48181, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Immolate
			{spellID = 348, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Seed of Corruption
			{spellID = 27243, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Unstable Affliction
			{spellID = 30108, unitID = "target", caster = "player", filter = "DEBUFF", absID = true},
		},--]]
		{
			Name = "PVE/PVP_CC",
			enable = Misc.Pbar,
			Direction = "DOWN",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.barIconSize,
			BarWidth = Misc.barw,
			Position = {unpack(FilgerPositions.pve_cc)},

			-- Banish
			{spellID = 710, unitID = "focus", caster = "player", filter = "DEBUFF"},
			-- Fear
			{spellID = 118699, unitID = "focus", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Demonic Circle: Teleport
			{spellID = 48020, filter = "CD"},
			-- Felstorm
			{spellID = 89751, filter = "CD"},
			-- Grimoire of Service
			{spellID = 108501, filter = "CD"},
			-- Hand of Gul'dan
			{spellID = 105174, filter = "CD"},
			-- Howl of Terror
			{spellID = 5484, filter = "CD"},
			-- Mortal Coil
			{spellID = 6789, filter = "CD"},
			-- Sacrifice (Voidwalker)
			{spellID = 7812, filter = "CD"},
			-- Shadowfury
			{spellID = 30283, filter = "CD"},
			-- Spell Lock (Felhunter)
			{spellID = 19647, filter = "CD"},

			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- Escape Artist (Gnome)
			{spellID = 20589, filter = "CD"},
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Rocket Jump (Goblin)
			{spellID = 69070, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},

			-- Items
			-- Back
			{slotID = 15, filter = "CD"},
			-- Belt
			{slotID = 6, filter = "CD"},
			-- Gloves
			{slotID = 10, filter = "CD"},
			-- Neck
			{slotID = 2, filter = "CD"},
			-- Rings
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["WARRIOR"] = {			--[战士]
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_buff_icon)},

			-- Avatar
			{spellID = 107574, unitID = "player", caster = "player", filter = "BUFF"},
			-- Berserker Rage
			{spellID = 18499, unitID = "player", caster = "player", filter = "BUFF"},
			-- Bloodbath
			{spellID = 12292, unitID = "player", caster = "player", filter = "BUFF"},
			-- Die by the Sword
			{spellID = 118038, unitID = "player", caster = "player", filter = "BUFF"},
			-- Last Stand
			{spellID = 12975, unitID = "player", caster = "player", filter = "BUFF"},
			-- Recklesness
			{spellID = 1719, unitID = "player", caster = "player", filter = "BUFF"},
			-- Shield Block
			{spellID = 2565, unitID = "player", caster = "player", filter = "BUFF"},
			-- Shield Wall
			{spellID = 871, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spell Reflection
			{spellID = 23920, unitID = "player", caster = "player", filter = "BUFF"},
			-- Victorious
			{spellID = 32216, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.player_proc_icon)},

			-- Raging Blow 怒击
			{spellID = 131116, unitID = "player", caster = "player", filter = "BUFF"},
			-- Sudden Death 猝死
			{spellID = 52437, unitID = "player", caster = "player", filter = "BUFF"},
			-- 压制
			{spellID = 60503, unitID = "player", caster = "player", filter = "BUFF"},
			-- Meat Cleaver
			{spellID = 85739, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ultimatum
			{spellID = 122510, unitID = "player", caster = "player", filter = "BUFF"},
			-- Unyielding Strikes
			{spellID = 169686, unitID = "player", caster = "player", filter = "BUFF"},

			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Melee DPS (Crit, Proc)
			{spellID = 162915, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tanking (Crit, Proc)
			{spellID = 162917, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1: Alchemy Stones
			-- Strength
			{spellID = 60229, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Brawler's Statue (Bonus Armor, Use)
			{spellID = 127967, unitID = "player", caster = "player", filter = "BUFF"},
			-- Coren's Cold Chromium (Attack Power, Proc)
			{spellID = 127926, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Strength] (Versatility, Use)
			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
			-- Melee DPS [Strength] (Versatility, Proc)
			{spellID = 182063, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Gronntooth War Horn (Strength, Proc)
			{spellID = 201405, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Tanking
			-- Battering Talisman (Haste, Proc)
			{spellID = 177102, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blast Furnace Door (Mastery, Proc)
			{spellID = 177056, unitID = "player", caster = "player", filter = "BUFF"},
			-- Evergaze Arcane Eidolon (Bonus Armor, Proc)
			{spellID = 177053, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Relic of Blood (Haste, Proc)
			{spellID = 176937, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kyb's Foolish Perseverance (Health, Use)
			{spellID = 176460, unitID = "player", caster = "player", filter = "BUFF"},
			-- Pol's Blinded Eye (Mastery, Use)
			{spellID = 176876, unitID = "player", caster = "player", filter = "BUFF"},
			-- Stoneheart Idol (Crit, Proc)
			{spellID = 176982, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tablet of Turnbuckle Teamwork (Bonus Armor, Use)
			{spellID = 176873, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.1: Tanking
			-- Anzu's Cursed Plume (Mastery, Proc)
			{spellID = 183931, unitID = "player", caster = "player", filter = "BUFF"},
			-- Enforcer's Stun Grenade (Versatility, Use)
			{spellID = 165534, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kyrak's Vileblood Serum (Mastery, Use)
			{spellID = 165535, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tyrant's Decree (Stamina, Proc)
			{spellID = 184770, unitID = "player", caster = "player", filter = "BUFF"},
			-- Xeri'tac's Unhatched Egg Sac (Mastery, Proc)
			{spellID = 165824, unitID = "player", caster = "player", filter = "BUFF"},
			-- 4.0: Melee DPS [Strength]
			-- Forgemaster's Insignia (Multistrike, Proc)
			{spellID = 177096, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Fang (Multistrike, Proc)
			{spellID = 176935, unitID = "player", caster = "player", filter = "BUFF"},
			-- Horn of the Screaming Spirits (Mastery, Proc)
			{spellID = 177042, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mote of the Mountain (Versatility, Proc)
			{spellID = 176974, unitID = "player", caster = "player", filter = "BUFF"},
			-- Scabbard of Kyanos (Strength, Use)
			{spellID = 177189, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tectus' Beating Heart (Crit, Proc)
			{spellID = 177040, unitID = "player", caster = "player", filter = "BUFF"},
			-- Vial of Convulsive Shadows (Multistrike, Use)
			{spellID = 176874, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.1: Melee DPS [Strength]
			-- Bonemaw's Big Toe (Crit, Use)
			{spellID = 165532, unitID = "player", caster = "player", filter = "BUFF"},
			-- Emberscale Talisman (Versatility, Use)
			{spellID = 165543, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spores of Alacrity (Haste, Proc)
			{spellID = 165822, unitID = "player", caster = "player", filter = "BUFF"},
			-- Unending Hunger (Strength, Proc)
			{spellID = 183941, unitID = "player", caster = "player", filter = "BUFF"},

			-- Enchants
			-- Mark of Blackrock (Bonus Armor)
			{spellID = 159679, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Bleeding Hollow (Mastery)
			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Frostwolf (Multistrike)
			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Thunderlord (Crit)
			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Warsong (Haste)
			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.target_debuff_icon)},

			-- 撕裂
			{spellID = 772, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Demoralizing Shout
			{spellID = 1160, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Hamstring
			{spellID = 1715, unitID = "target", caster = "all", filter = "DEBUFF"},
			
			-- Trinket Effects
			-- Fel Burn (Empty Drinking Horn)
			{spellID = 184256, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			enable = Misc.CD,
			Direction = "RIGHT",
			Mode = "ICON",
			NumPerLine = Misc.CDnum,
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.CDIconSize,
			Position = {unpack(FilgerPositions.cooldown)},

			-- Self
			-- Berserker Rage
			{spellID = 18499, filter = "CD"},
			-- Charge
			{spellID = 100, filter = "CD"},
			-- Demoralizing Shout
			{spellID = 1160, filter = "CD"},
			-- Heroic Leap
			{spellID = 6544, filter = "CD"},
			-- Intervene
			{spellID = 3411, filter = "CD"},
			-- Last Stand
			{spellID = 12975, filter = "CD"},
			-- Pummel
			{spellID = 6552, filter = "CD"},
			-- Rallying Cry
			{spellID = 97462, filter = "CD"},
			-- Shield Slam
			{spellID = 23922, filter = "CD"},
			-- Shield Wall
			{spellID = 871, filter = "CD"},
			-- Shockwave
			{spellID = 46968, filter = "CD"},
			-- Spell Reflection
			{spellID = 23920, filter = "CD"},
			-- Storm Bolt
			{spellID = 107570, filter = "CD"},
			-- Taunt
			{spellID = 355, filter = "CD"},
			-- Thunder Clap
			{spellID = 6343, filter = "CD"},

			-- Racial
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- Escape Artist (Gnome)
			{spellID = 20589, filter = "CD"},
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Quaking Palm (Pandaren)
			{spellID = 107079, filter = "CD"},
			-- Rocket Jump (Goblin)
			{spellID = 69070, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},

			-- Items
			-- Back 披风
			{slotID = 15, filter = "CD"},
			-- Belt 腰带
			{slotID = 6, filter = "CD"},
			-- Gloves 手套
			{slotID = 10, filter = "CD"},
			-- Neck 项链
			{slotID = 2, filter = "CD"},
			-- Rings 戒指
			{slotID = 11, filter = "CD"},
			{slotID = 12, filter = "CD"},
			-- Trinkets 饰品
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
	["ALL"] = {			--[通用]
		{
			Name = "SPECIAL_P_BUFF_ICON",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {unpack(FilgerPositions.special_proc_icon)},

			-- Ashran
			-- Ancient Artifact
			{spellID = 168506, unitID = "player", caster = "all", filter = "BUFF"},
			-- Boulder Shield
			{spellID = 169373, unitID = "player", caster = "all", filter = "BUFF"},
			-- Scroll of Speed
			{spellID = 171250, unitID = "player", caster = "all", filter = "BUFF"},
			-- Scroll of Protection
			{spellID = 171249, unitID = "player", caster = "all", filter = "BUFF"},
			-- Star Root Tuber
			{spellID = 161495, unitID = "player", caster = "all", filter = "BUFF"},
			-- Wand of Lightning Shield
			{spellID = 171725, unitID = "player", caster = "all", filter = "BUFF"},

			-- Potions: Draenor
			-- Draenic Agility Potion
			{spellID = 156423, unitID = "player", caster = "player", filter = "BUFF"},
			-- Draenic Intellect Potion
			{spellID = 156426, unitID = "player", caster = "player", filter = "BUFF"},
			-- Draenic Strength Potion
			{spellID = 156428, unitID = "player", caster = "player", filter = "BUFF"},
			-- Draenic Armor Potion
			{spellID = 156430, unitID = "player", caster = "player", filter = "BUFF"},
			-- Potions: Pandaria
			-- Virmen's Bite (Agility)
			{spellID = 105697, unitID = "player", caster = "player", filter = "BUFF"},
			-- Potion of Mogu Power (Strength)
			{spellID = 105706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Potion of the Jade Serpent (Intellect)
			{spellID = 105702, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kafa Press (Haste)
			{spellID = 125282, unitID = "player", caster = "player", filter = "BUFF"},
			-- Potions: Miscellaneous
			-- Invisibility Potion
			{spellID = 11392, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Darkwater Potion
			{spellID = 105707, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Draenic Invisibility Potion
			{spellID = 175833, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Draenic Swiftness Potion
			{spellID = 175790, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Potion of Luck
			{spellID = 135855, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Potion of Treasure Finding
			{spellID = 80263, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Swiftness Potion
			{spellID = 2379, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Potions: Brawler's Guild
			-- Brawler's Draenic Agility Potion
			{spellID = 176107, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Brawler's Draenic Intellect Potion
			{spellID = 176108, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Brawler's Draenic Strength Potion
			{spellID = 176109, unitID = "player", caster = "player", filter = "BUFF", absID = true},

			-- Raid Amplifiers: General
			-- Ancient Hysteria
			{spellID = 90355, unitID = "player", caster = "all", filter = "BUFF"},
			-- Netherwinds
			{spellID = 160452, unitID = "player", caster = "all", filter = "BUFF"},
			-- Drums of Fury
			{spellID = 178207, unitID = "player", caster = "all", filter = "BUFF"},
			-- Drums of Rage
			{spellID = 146555, unitID = "player", caster = "all", filter = "BUFF"},
			-- Bloodlust
			{spellID = 2825, unitID = "player", caster = "all", filter = "BUFF"},
			-- Heroism
			{spellID = 32182, unitID = "player", caster = "all", filter = "BUFF"},
			-- Time Warp
			{spellID = 80353, unitID = "player", caster = "all", filter = "BUFF"},

			-- Legendary Rings
			-- Maalus, the Blood Drinker
			{spellID = 187806, unitID = "player", caster = "all", filter = "BUFF"},
			-- Nithramus, the All-Seer
			{spellID = 187616, unitID = "player", caster = "all", filter = "BUFF"},
			-- Sanctus, Sigil of the Unbroken
			{spellID = 187617, unitID = "player", caster = "all", filter = "BUFF"},
			-- Thorasus, the Stone Heart of Draenor
			{spellID = 187619, unitID = "player", caster = "all", filter = "BUFF"},

			-- Professions
			-- Goblin Glider [Goblin Glider Kit]
			{spellID = 126389, unitID = "player", caster = "all", filter = "BUFF", absID = true},
			-- Nitro Boosts
			{spellID = 54861, unitID = "player", caster = "player", filter = "BUFF"},
			-- Parachute
			{spellID = 55001, unitID = "player", caster = "player", filter = "BUFF"},
			-- Shieldtronic Shield
			{spellID = 173260, unitID = "player", caster = "all", filter = "BUFF", absID = true},
			-- Stealth Field [Stealthman 54]
			{spellID = 156136, unitID = "player", caster = "all", filter = "BUFF", absID = true},

			-- Racial
			-- Berserking (Troll)
			{spellID = 26297, unitID = "player", caster = "player", filter = "BUFF", absID = true},
			-- Blood Fury (Orc)
			{spellID = 20572, unitID = "player", caster = "player", filter = "BUFF"},
			-- Darkflight (Worgen)
			{spellID = 68992, unitID = "player", caster = "player", filter = "BUFF"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, unitID = "player", caster = "all", filter = "BUFF"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, unitID = "player", caster = "player", filter = "BUFF"},
			-- Stoneform (Dwarf)
			{spellID = 65116, unitID = "player", caster = "player", filter = "BUFF"},

			-- Zone Buffs
			-- Speed (Battlegrounds)
			{spellID = 23451, unitID = "player", caster = "all", filter = "BUFF", absID = true},
			-- Fel Sludge (Tanaan Jungle)
			{spellID = 188520, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- Strange Feeling (Brawler's Guild)
			{spellID = 134851, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},

			-- Damage Reduction
			-- Life Cocoon
			{spellID = 116849, unitID = "player", caster = "all", filter = "BUFF"},
			-- Guardian Spirit
			{spellID = 47788, unitID = "player", caster = "all", filter = "BUFF"},
			-- Pain Suppression
			{spellID = 33206, unitID = "player", caster = "all", filter = "BUFF"},
			-- Ironbark
			{spellID = 102342, unitID = "player", caster = "all", filter = "BUFF"},
			-- Aura Mastery
			{spellID = 31821, unitID = "player", caster = "all", filter = "BUFF"},
			-- Blessing of Protection
			{spellID = 1022, unitID = "player", caster = "all", filter = "BUFF"},
			-- Blessing of Sacrifice
			{spellID = 6940, unitID = "player", caster = "all", filter = "BUFF"},
			-- Vigilance
			{spellID = 114030, unitID = "player", caster = "all", filter = "BUFF"},
			-- Rallying Cry
			{spellID = 97463, unitID = "player", caster = "all", filter = "BUFF"},

			-- Other
			-- Grounding Totem
			{spellID = 8178, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mass Spell Reflection
			{spellID = 114028, unitID = "player", caster = "all", filter = "BUFF"},
			-- Tiger's Lust
			{spellID = 116841, unitID = "player", caster = "all", filter = "BUFF"},
			-- Body and Soul
			{spellID = 65081, unitID = "player", caster = "all", filter = "BUFF"},
			-- Angelic Feather
			{spellID = 121557, unitID = "player", caster = "all", filter = "BUFF"},
			-- Stampeding Roar
			{spellID = 77764, unitID = "player", caster = "all", filter = "BUFF"},
			-- Blessing of Freedom
			{spellID = 1044, unitID = "player", caster = "all", filter = "BUFF"},
			-- Slow Fall
			{spellID = 130, unitID = "player", caster = "all", filter = "BUFF"},
			-- Levitate
			{spellID = 1706, unitID = "player", caster = "all", filter = "BUFF"},
			
			-- Trinkets
			-- 1.0: Darkmoon Cards
			-- Nightmare Fire (Crit, Proc)
			{spellID = 162919, unitID = "player", caster = "player", filter = "BUFF"},
			-- Visions of the Future (Spirit, Proc)
			{spellID = 162913, unitID = "player", caster = "player", filter = "BUFF"},
			-- Spirit of the Warlords (Crit, Proc)
			{spellID = 162915, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.1: Alchemy Stones
			-- Agility
			{spellID = 60233, unitID = "player", caster = "player", filter = "BUFF"},
			-- Intellect
			{spellID = 60234, unitID = "player", caster = "player", filter = "BUFF"},
			-- 1.2: Hallow's End
			-- Coren's Cold Chromium (Attack Power, Proc)
			{spellID = 127926, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mithril Wristwatch (Spell Power, Proc)
			{spellID = 127924, unitID = "player", caster = "player", filter = "BUFF"},
			-- Thousand-Year Pickled Egg (Haste, Proc)
			{spellID = 127914, unitID = "player", caster = "player", filter = "BUFF"},
			-- 2.0: PvP Trinkets
			-- Battlemaster (Health, Use)
			{spellID = 181706, unitID = "player", caster = "player", filter = "BUFF"},
			-- Damage [Intellect] (Versatility, Use)
			{spellID = 182073, unitID = "player", caster = "player", filter = "BUFF"},
			-- Damage [Intellect] (Versatility, Proc)
			{spellID = 182058, unitID = "player", caster = "player", filter = "BUFF"},
			-- Damage [Agility] (Versatility, Proc)
			{spellID = 182060, unitID = "player", caster = "player", filter = "BUFF"},
			-- 3.0: Heirlooms
			-- Infallible Tracking Charm [Damage, Proc]
			{spellID = 201408, unitID = "player", caster = "player", filter = "BUFF"},
			-- Orb Of Voidsight (Haste, Proc)
			{spellID = 201410, unitID = "player", caster = "player", filter = "BUFF"},
			-- Damage [Agility]
			-- Beating Heart of the Mountain (Multistrike, Use)
			{spellID = 176878, unitID = "player", caster = "player", filter = "BUFF"},
			-- Blackheart Enforcer's Medallion (Multistrike, Proc)
			{spellID = 176984, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Jar of Doom (Mastery, Proc)
			{spellID = 176939, unitID = "player", caster = "player", filter = "BUFF"},
			-- Humming Blackiron Trigger (Crit, Proc)
			{spellID = 177067, unitID = "player", caster = "player", filter = "BUFF"},
			-- Lucky Double-Sided Coin (Agility, Use)
			{spellID = 177597, unitID = "player", caster = "player", filter = "BUFF"},
			-- Meaty Dragonspine Trophy (Haste, Proc)
			{spellID = 177035, unitID = "player", caster = "player", filter = "BUFF"},
			-- Scales of Doom (Multistrike, Proc)
			{spellID = 177038, unitID = "player", caster = "player", filter = "BUFF"},
			-- Gor'ashan's Lodestone Spike (Multistrike, Use)
			{spellID = 165542, unitID = "player", caster = "player", filter = "BUFF"},
			-- Kihra's Adrenaline Injector (Mastery, Use)
			{spellID = 165485, unitID = "player", caster = "player", filter = "BUFF"},
			-- Malicious Censer (Agility, Proc)
			{spellID = 183926, unitID = "player", caster = "player", filter = "BUFF"},
			-- Mirror of the Blademaster (Images, Proc)
			{spellID = 184270, unitID = "player", caster = "player", filter = "BUFF"},
			-- Soul Capacitator (Damage, Proc)
			{spellID = 184293, unitID = "player", caster = "player", filter = "BUFF"},
			-- Witherbark's Branch (Haste, Proc)
			{spellID = 165822, unitID = "player", caster = "player", filter = "BUFF"},
			-- Damage [Intellect]
			-- Blackiron Micro Crucible (Multistrike, Proc)
			{spellID = 177081, unitID = "player", caster = "player", filter = "BUFF"},
			-- Copeland's Clarity (Spellpower, Use)
			{spellID = 177594, unitID = "player", caster = "player", filter = "BUFF"},
			-- Darmac's Unstable Talisman (Haste, Proc)
			{spellID = 177051, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Orb of Putrescence (Mastery, Proc)
			{spellID = 176941, unitID = "player", caster = "player", filter = "BUFF"},
			-- Furyheart Talisman (Haste, Proc)
			{spellID = 176980, unitID = "player", caster = "player", filter = "BUFF"},
			-- Goren Soul Repository (Crit, Proc)
			{spellID = 177046, unitID = "player", caster = "player", filter = "BUFF"},
			-- Shards of Nothing (Haste, Use)
			{spellID = 176875, unitID = "player", caster = "player", filter = "BUFF"},
			-- Desecrated Shadowmoon Insignia (Intellect, Proc)
			{spellID = 183924, unitID = "player", caster = "player", filter = "BUFF"},
			-- Coagulated Genesaur Blood (Multistrike, Proc)
			{spellID = 165832, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ragewing's Firefang (Versatility, Use)
			{spellID = 165543, unitID = "player", caster = "player", filter = "BUFF"},
			-- Fleshrender's Meathook (Haste, Use)
			{spellID = 165531, unitID = "player", caster = "player", filter = "BUFF"},
			-- Healing
			-- Auto-Repairing Autoclave (Haste, Proc)
			{spellID = 177086, unitID = "player", caster = "player", filter = "BUFF"},
			-- Elementalist's Shielding Talisman (Multistrike, Proc)
			{spellID = 177063, unitID = "player", caster = "player", filter = "BUFF"},
			-- Emblem of Caustic Healing (Haste, Use)
			{spellID = 176879, unitID = "player", caster = "player", filter = "BUFF"},
			-- Formidable Censer of Faith (Haste, Proc)
			{spellID = 176943, unitID = "player", caster = "player", filter = "BUFF"},
			-- Immaculate Living Mushroom (Crit, Proc)
			{spellID = 176978, unitID = "player", caster = "player", filter = "BUFF"},
			-- Ironspike Chew Toy (Spirit, Proc)
			{spellID = 177060, unitID = "player", caster = "player", filter = "BUFF"},
			-- Intuition's Gift (Crit, Use)
			{spellID = 183929, unitID = "player", caster = "player", filter = "BUFF"},
			-- Leaf of the Ancient Protectors (Versatility, Proc)
			{spellID = 165833, unitID = "player", caster = "player", filter = "BUFF"},
			-- Tharbek's Lucky Pebble (Mastery, Use)
			{spellID = 165535, unitID = "player", caster = "player", filter = "BUFF"},
			-- Voidmender's Shadowgem (Crit, Use)
			{spellID = 165532, unitID = "player", caster = "player", filter = "BUFF"},

			-- Enchants
			-- Mark of Bleeding Hollow (Mastery)
			{spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Shadowmoon (Spirit)
			{spellID = 159678, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Frostwolf (Multistrike)
			{spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of the Thunderlord (Crit)
			{spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
			-- Mark of Warsong (Haste)
			{spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
		},
		{
			Name = "PVE/PVP_DEBUFF",
			Direction = "UP",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.BigIconSize,
			Position = {unpack(FilgerPositions.pve_debuff)},

			-- Death Knight
			-- Shroud of Purgatory
			{spellID = 116888, unitID = "player", caster = "player", filter = "DEBUFF"},
			-- Asphyxiate
			{spellID = 108194, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Chains of Ice
			{spellID = 45524, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Gnaw (Ghoul)
			{spellID = 91800, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Monstrous Blow (Mutated Ghoul)
			{spellID = 91797, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Strangulate
			{spellID = 47476, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Demon Hunter
			-- Imprison
			{spellID = 217832, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Druid
			-- Cyclone
			{spellID = 33786, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Entangling Roots
			{spellID = 339, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Immobilized
			{spellID = 45334, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Incapacitating Roar
			{spellID = 99, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Infected Wounds
			{spellID = 58180, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Mighty Bash
			{spellID = 5211, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Maim
			{spellID = 22570, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Rake
			{spellID = 163505, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- Solar Beam
			{spellID = 78675, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Typhoon
			{spellID = 61391, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Hunter
			-- Ankle Crack (Crocolisk)
			{spellID = 50433, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Binding Shot
			{spellID = 117526, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Concussive Shot
			{spellID = 5116, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Entrapment
			{spellID = 135373, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Freezing Trap
			{spellID = 3355, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Frost Breath (Chimaera)
			{spellID = 54644, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Ice Trap
			{spellID = 135299, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Intimidation
			{spellID = 24394, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Narrow Escape
			{spellID = 136634, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Warp Time (Warp Stalker)
			{spellID = 35346, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Wyvern Sting
			{spellID = 19386, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Mage
			-- Chilled
			{spellID = 7321, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Cone of Cold
			{spellID = 120, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Dragon's Breath
			{spellID = 31661, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Freeze (Pet)
			{spellID = 33395, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Frost Nova
			{spellID = 122, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Polymorph
			{spellID = 118, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Ring of Frost
			{spellID = 82691, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Slow
			{spellID = 31589, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Monk
			-- Touch of Karma
			{spellID = 125174, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Disable
			{spellID = 116706, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- Fists of Fury
			{spellID = 120086, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Leg Sweep
			{spellID = 119381, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Paralysis
			{spellID = 115078, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Paladin
			-- Avenger's Shield
			{spellID = 31935, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Blinding Light
			{spellID = 105421, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Hammer of Justice
			{spellID = 853, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Repentance
			{spellID = 20066, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- Priest
			-- Dominate Mind
			{spellID = 605, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Psychic Horror
			{spellID = 64044, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Psychic Scream
			{spellID = 8122, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Silence
			{spellID = 15487, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Sin and Punishment
			{spellID = 87204, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Void Tendrils
			{spellID = 114404, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Rogue
			-- Blind
			{spellID = 2094, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Cheap Shot
			{spellID = 1833, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Crippling Poison
			{spellID = 3409, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Deadly Throw
			{spellID = 26679, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Garrote
			{spellID = 1330, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Gouge
			{spellID = 1776, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Kidney Shot
			{spellID = 408, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Sap
			{spellID = 6770, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Smoke Bomb
			{spellID = 76577, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Shaman
			-- Earthbind
			{spellID = 3600, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Earthgrab
			{spellID = 64695, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Earthquake
			{spellID = 77505, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Hex
			{spellID = 51514, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Pulverize (Earth Elemental)
			{spellID = 118345, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Static Charge
			{spellID = 118905, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Thunderstorm
			{spellID = 51490, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Warlock
			-- Axe Toss (Felguard)
			{spellID = 89766, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Conflagrate
			{spellID = 17962, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Fear
			{spellID = 118699, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Howl of Terror
			{spellID = 5484, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Mesmerize (Shivarra)
			{spellID = 115268, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Meteor Strike (Abyssal)
			{spellID = 171156, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Mortal Coil
			{spellID = 6789, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Seduction (Succubus)
			{spellID = 6358, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Shadowfury
			{spellID = 30283, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Unstable Affliction
			{spellID = 31117, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},

			-- Warrior
			-- Hamstring
			{spellID = 1715, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Intimidating Shout
			{spellID = 5246, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Piercing Howl
			{spellID = 12323, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Shockwave
			{spellID = 132168, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Staggering Shout
			{spellID = 107566, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Storm Bolt
			{spellID = 132169, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- Warbringer
			{spellID = 7922, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Racial
			-- Arcane Torrent
			{spellID = 28730, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Quaking Palm
			{spellID = 107079, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- War Stomp
			{spellID = 20549, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- Other
			-- Rocket Fuel Leak 火箭鞋漏油
			{spellID = 94794, unitID = "player", caster = "player", filter = "DEBUFF"},
			-- Uncontained Fel (Demon Hunter Last Resort Talent)
			{spellID = 209261, unitID = "player", caster = "player", filter = "DEBUFF"},
		

			-------------------------
			--  -- <<  Raids  >> -- --
			-------------------------
			-- Throne of Thunder	-- 雷电王座 930
			-- Jin'rokh the Breaker [击碎者金罗克] --
			-- 郝利东 --
			-- Council of Elders [长者议会] --
			-- Frostbite 霜寒刺骨
			{spellID = 136922, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Biting Cold 刺骨之寒
			{spellID = 136992, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 托多斯 --
			-- 墨格瑞拉 --
			-- 季鹍 --
			-- 灵巧之翼
			{spellID = 134339, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 遗忘者杜鲁姆 --
			-- 蓝光追踪
			{spellID = 139202, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 红光追踪
			{spellID = 139204, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 强光
			{spellID = 133738, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 普利莫修斯 --
			-- 黑暗意志 --
			-- 铁穹 --
			-- 魔古双后 --
			-- 堕落治疗
			{spellID = 137360, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 梦魇兽
			{spellID = 137375, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 雷神 --
			-- 斩首
			{spellID = 135000, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Static Shock 静电冲击
			{spellID = 135695, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			
			-- Mogu'shan Vaults -- 魔古山宝库 896
			-- The Stone Guard [石头守卫]
			-- Amethyst Pool 紫晶之池
			-- Feng the Accursed [受诅者魔封]
			-- Gara'jal the Spiritbinder [缚灵者戈拉亚]
			-- Cross Over 灵魂越界
			{spellID = 116166, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- Elegon [伊拉贡]
			-- Will of the Emperor [皇帝的意志]
			-- Focused Assault 专注打击
			{spellID = 116525, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Focused Energy 专注能量
			{spellID = 116829, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			
			-- Heart of Fear -- 恐惧之心 897
			-- Imperial Vizier Zor'lok [皇家宰相佐尔洛克]
			-- Blade Lord Ta'yak [刀锋领主塔亚克]
			-- Garalon [加拉隆]
			-- Pheromones 信息素
			{spellID = 123092, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- Wind Lord Mel'Jarak [风领主梅尔加拉克]
			-- Amber-Shaper Un'sok [琥珀塑形者昂舒克]
			-- Burning Amber
			{spellID = 122504, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Parasitic Growth 寄生增长
			{spellID = 121949, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- Grand Empress Shek'zeer [大女皇夏柯希尔]
			
			
			-- terrace of endless spring -- 永春台 886
			-- Protector of the Endless [无尽守护者]
			-- Tsulong [烛龙]
			-- Lei Shi [雷施]
			-- Sha of Fear [惧之煞]
			-- 永春台 [结束]
			

			-- 决战奥格瑞玛 Siege Of Orgrimmar 953
			-- 1	伊墨苏斯 [Immerseus]
			-- 2	堕落的守护者 [FallenProtectors]
			-- 3	诺鲁什 [Norushen]
			-- 4	傲之煞 [ShaofPride]
			-- 受损自尊
			{spellID = 144358, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 傲气光环
			{spellID = 146817, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 投影
			{spellID = 146822, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 动摇的决心 H
			{spellID = 147207, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 5	迦拉卡斯 [Galakras]
			-- 6	钢铁战蝎 [IronJuggernaut]
			-- 燃烧护甲
			{spellID = 144467, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 7	库卡隆黑暗萨满 [KorkronDarkShaman]
			-- 8	纳兹戈林将军 [GeneralNazgrim]
			-- 碎甲重击
			{spellID = 143494, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 9	马尔考罗克 [Malkorok]
			-- 致命打击
			{spellID = 142990, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 散逸能量
			{spellID = 142913, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 受难 H
			{spellID = 143919, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 10	潘达利亚战利品 [SpoilsOfPandria]
			-- 设置炸药
			{spellID = 145987, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 11	嗜血的索克 [ThokTheBloodthirsty]
			-- 锁定
			{spellID = 143445, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			
			-- 12	攻城匠师黑索 [SiegecrafterBlackfuse]
			-- 电荷冲击
			{spellID = 143385, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 过热
			{spellID = 143856, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 图像识别
			{spellID = 144236, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 13	卡拉克西英杰 [ParagonsOfTheKlaxxi]
			-- 14	加尔鲁什·地狱咆哮 [GarroshHellscream]
			-- 决战奥格瑞玛 [结束]
			
			
			-- 悬槌堡 994
			-- 1	卡加斯·刃拳 [Kargath Bladefist]
			-- 穿刺 (T)
			{spellID = 159113, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 迸裂创伤 (T) 1~2层
			{spellID = 159178, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 烈焰喷射
			{spellID = 159311, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 钢铁炸弹
			{spellID = 159386, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暴虐酒
			{spellID = 159413, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 搜寻猎物
			{spellID = 162497, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 2	屠夫 [The Butcher]
			-- 捶肉槌 (T) 2~3层
			{spellID = 156151, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 切肉刀
			{spellID = 156147, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 龟裂创伤
			{spellID = 156152, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 白鬼硫酸
			{spellID = 163046, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 3	泰克图斯 [Tectus]
			-- 石化
			--{spellID = 162892, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 晶化弹幕 - 点名
			{spellID = 162346, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 晶化弹幕 - 踩到火
			{spellID = 162370, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			
			-- 4	布兰肯斯波 [Brackenspore]
			-- 溃烂 (T) 4~6层
			{spellID = 163241, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 死疽吐息
			{spellID = 159220, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 蚀脑真菌
			{spellID = 163140, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 滑溜溜的苔藓
			{spellID = 163590, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 爆裂灌注
			{spellID = 165223, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 回春孢子
			{spellID = 159426, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 5	独眼魔双子 [Twin Ogron]
			-- 防御削弱
			{spellID = 159709, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 致衰咆哮
			{spellID = 158026, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 烈焰
			{spellID = 158241, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 奥术之伤 (T)
			{spellID = 167200, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 奥能动荡
			{spellID = 163372, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 6	克拉戈 [Ko'ragh]
			-- 魔能散射：奥术 (T)
			{spellID = 162186, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魔能散射：火焰
			{spellID = 162185, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魔能散射：冰霜
			{spellID = 172813, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魔能散射：暗影
			{spellID = 162184, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 废灵璧垒
			{spellID = 156803, unitID = "player", caster = "all", filter = "DEBUFF"},
			{spellID = 172886, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 压制力场
			{spellID = 161345, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 腐蚀能量
			{spellID = 161242, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魔能散射：邪能 - 点名
			{spellID = 172895, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 魔能散射：邪能 - 踩到火
			{spellID = 172917, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			
			-- 7	元首马尔高克 [Imperator Mar'gok]
			-- 混沌标记 (T) P1换T
			{spellID = 158605, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 混沌标记：偏移 (T) P2换T
			{spellID = 164176, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 混沌标记：强固 (T) P3换T
			{spellID = 164178, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 混沌标记：复制 (T) P4换T
			{spellID = 164191, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 奥术愤怒 P1
			{spellID = 156225, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 奥术愤怒 P2
			{spellID = 164004, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 奥术愤怒 P3
			{spellID = 164005, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 奥术愤怒 P4
			{spellID = 164006, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 减速
			{spellID = 157801, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 锁定
			{spellID = 157763, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 毁灭共鸣
			{spellID = 159200, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 碾碎护甲
			{spellID = 158553, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 悬槌堡 [结束]
			
			
			-- 黑石铸造厂 988 [Blackrock Foundry]
			-- 1	奥尔高格 [Oregorger]
			-- 酸液巨口 (T)
			{spellID = 173471, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 酸液洪流
			{spellID = 156297, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 呕吐黑石
			{spellID = 156203, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 2	格鲁尔 [Gruul]
			-- 炼狱打击 (T)
			{spellID = 162322, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 压迫打击 (T)
			{spellID = 155078, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 炼狱切割
			{spellID = 155080, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 落石
			{spellID = 173192, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 石化
			{spellID = 155330, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			
			-- 3	爆裂熔炉 [The Blast Furnace]
			-- 高热 (T) 层
			{spellID = 155242, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 淬火 (T)
			{spellID = 155240, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 崩裂
			{spellID = 156932, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 炸弹
			{spellID = 155192, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 防御
			{spellID = 160379, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 不稳定的火焰
			{spellID = 176121, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 锁定
			{spellID = 155196, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 熔渣池
			{spellID = 155743, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 熔化
			{spellID = 155225, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 熔化
			{spellID = 155223, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			
			-- 4	汉斯加尔与弗兰佐克 [Hans'gar and Franzok]
			-- 折脊碎椎
			{spellID = 157139, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 灼热燃烧
			{spellID = 155818, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 5	缚火者卡格拉兹 [Flamebender Ka'graz]
			-- 焦灼吐息 (T) 1~5 层
			{spellID = 155074, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 升腾烈焰 (T) 
			{spellID = 163284, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 烧灼
			{spellID = 155049, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 熔岩激流
			{spellID = 154932, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 岩浆猛击
			{spellID = 155314, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 锁定
			{spellID = 154952, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 炽热光辉
			{spellID = 155277, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 6	克罗莫格 [Kromog]
			-- 扭曲护甲 (T) 4~5 层
			{spellID = 156766, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 纠缠之地符文
			{spellID = 157059, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 破碎大地符文
			{spellID = 161923, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 7	兽王达玛克 [Beastlord Darmac]
			-- 狂乱撕扯-狼 (T) 层
			{spellID = 155061, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 狂乱撕扯-BOSS (T) 层
			{spellID = 162283, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 灼烧躯体 (T) 层
			{spellID = 155030, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 碾碎护甲 (T) 层
			{spellID = 155236, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 地动山摇
			{spellID = 162276, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 爆燃
			{spellID = 155399, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 8	主管索格尔 [Operator Thogar]
			-- 点燃 (T) 层
			{spellID = 155921, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 实验型脉冲手雷
			{spellID = 165195, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 燃烧
			--{spellID = 164380, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 9	钢铁女武神 [The Iron Maidens]
			-- 急速射击
			{spellID = 156631, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 穿透射击
			{spellID = 164271, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暗影猎杀
			{spellID = 158315, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 浸血觅心者
			{spellID = 158010, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 致命投掷
			{spellID = 158692, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 锁定
			{spellID = 158702, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 破甲
			{spellID = 158686, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 堕落之血
			{spellID = 158683, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			-- 10	黑手 [Blackhand]
			-- 死亡标记
			{spellID = 156096, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 锁定-被坦克追
			{spellID = 156653, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 炉渣冲击 156047/157018/157322
			{spellID = 156047, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 穿刺 156743/175020
			{spellID = 156743, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 巨力粉碎猛击
			{spellID = 158054, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 燃烧
			--{spellID = 162490, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 熔火炉渣
			{spellID = 156401, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 烧伤
			{spellID = 156404, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 燃烧射击
			{spellID = 156772, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 投掷炉渣炸弹
			{spellID = 157000, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 投掷炉渣炸弹 (T)
			{spellID = 159179, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 黑石铸造厂 [结束]



			-- 地狱火堡垒 1026 [Hellfire Citadel]
			-- 1	奇袭地狱火 [Hellfire Assault]
			-- 邪火弹药
			{spellID = 180079, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 啸风战斧
			{spellID = 184369, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 颤抖
			{spellID = 184238, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 猛击 (T)
			{spellID = 184243, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 导电冲击脉冲
			{spellID = 185806, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 钻孔
			{spellID = 180022, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 灼烧
			{spellID = 185157, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 腐化虹吸
			{spellID = 187655, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 2	钢铁掠夺者 [Iron Reaver]
			-- 献祭
			{spellID = 182074, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 不稳定的宝珠
			{spellID = 182001, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 炮击
			{spellID = 182280, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 燃料尾痕
			{spellID = 182003, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 迅猛突袭
			{spellID = 179897, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 185242, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 易爆火焰炸弹
			{spellID = 185978, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 火焰易伤
			{spellID = 182373, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 3	考莫克 [Kormrok]
			-- 攫取之手 (T)
			{spellID = 181345, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能之触 (T)
			{spellID = 181321, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 爆炸冲击 (T)
			{spellID = 181306, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪污碾压
			{spellID = 187819, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暗影血球
			{spellID = 180270, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 炽热血球
			{spellID = 185519, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪污血球
			{spellID = 185521, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暗影之池
			{spellID = 181082, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 火焰之池
			{spellID = 186559, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪污之池
			{spellID = 186560, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暗影残渣
			{spellID = 181208, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 爆炸残渣
			{spellID = 185686, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪恶残渣
			{spellID = 185687, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 4	高阶地狱火议会 [Hellfire High Council]
			-- 死灵印记
			{spellID = 184449, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 184450, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 184676, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 185065, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 185066, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 愤怒
			{spellID = 184360, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 酸性创伤 (T)
			{spellID = 184847, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暗影收割
			{spellID = 184652, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 污血
			{spellID = 184357, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 血液沸腾
			{spellID = 184355, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 5	基尔罗格·死眼 [Kilrogg Deadeye]
			-- 剖心之刀
			{spellID = 188929, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 180389, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 邪能腐蚀
			{spellID = 182159, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 184396, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 恶魔附身
			{spellID = 180313, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 永恒的决心
			{spellID = 180718, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 死亡幻象
			{spellID = 181488, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 永恒的救赎
			{spellID = 185563, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 碎甲 (T)
			{spellID = 180200, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能烈焰
			{spellID = 180575, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 撕裂嚎叫
			{spellID = 183917, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 溅血
			{spellID = 188852, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能腐液
			{spellID = 184067, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 6	血魔 [Gorefiend]
			-- 灵魂箭雨
			{spellID = 180093, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 死亡之影
			{spellID = 179864, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 血魔的腐化
			{spellID = 179867, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 消化
			{spellID = 181295, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 生命渴望
			{spellID = 180148, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 毁灭之触
			{spellID = 179977, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 末日井
			{spellID = 179995, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能之怒
			{spellID = 185189, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能烈焰
			{spellID = 185190, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 命运相连
			{spellID = 179908, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 179909, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 灵魂之池
			{spellID = 186770, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 7	暗影领主艾斯卡 [Shadow-Lord Iskar]
			-- 安苏之光
			{spellID = 185239, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 幻影之伤
			{spellID = 182325, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能焚化
			{spellID = 182600, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 幻影之风
			{spellID = 181957, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能飞轮
			{spellID = 182200, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 182178, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 幻影邪能炸弹
			{spellID = 179219, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能炸弹
			{spellID = 181753, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 幻影腐蚀 (T)
			{spellID = 181824, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 幻影焚化
			{spellID = 187344, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暗影之缚
			{spellID = 185510, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 8	永恒者索克雷萨 [Socrethar the Eternal]
			-- 粉碎防御
			{spellID = 182038, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 易爆的邪能宝珠
			{spellID = 189627, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魔炎残渣
			{spellID = 182218, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能牢笼
			{spellID = 180415, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 183017, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 压倒能量
			{spellID = 189540, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 堕落者之赐
			{spellID = 184124, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魅影重重
			{spellID = 182769, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暗言术：恶
			{spellID = 184239, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 恶毒鬼魅
			{spellID = 182900, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 无尽饥渴
			{spellID = 188666, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 索克雷萨之咒
			{spellID = 190776, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 9	邪能领主扎昆 [Fel Lord Zakuun]
			-- 破碎之魂
			{spellID = 189260, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魂不附体
			{spellID = 179407, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 潜伏能量
			{spellID = 182008, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 玷污
			{spellID = 189032, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 189031, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 189030, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 179711, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 轰鸣的裂隙
			{spellID = 179428, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 毁灭之种
			{spellID = 181508, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 181515, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 邪能水晶
			{spellID = 181653, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 枯竭灵魂
			{spellID = 188998, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 10	祖霍拉克 [Xhul'horac]
			-- 邪蚀
			{spellID = 186134, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 灵媒
			{spellID = 186135, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪影屠戮
			{spellID = 185656, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能炙烤
			{spellID = 186073, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 虚空消耗
			{spellID = 186063, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魔能喷涌
			{spellID = 186407, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 灵能涌动
			{spellID = 186333, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪焰乱舞 (T)
			{spellID = 186448, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 186453, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 凋零凝视 (T)
			{spellID = 186785, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 186783, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 点燃
			{spellID = 188208, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 黑洞
			{spellID = 186547, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能锁链
			{spellID = 186500, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 强化魔化锁链
			{spellID = 189775, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 11	暴君维哈里 [Tyrant Velhari]
			-- 凋零契印 (T)
			{spellID = 180000, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 蔑视光环
			{spellID = 179987, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 抑制光环
			{spellID = 181683, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 怨恨光环
			{spellID = 179993, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 腐蚀序列
			{spellID = 180526, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 哀伤之触
			{spellID = 180166, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 180164, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 谴责法令
			{spellID = 182459, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 亵渎之地
			{spellID = 180604, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 12	玛诺洛斯 [Mannoroth]
			-- 军团诅咒
			{spellID = 181275, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 末日印记
			{spellID = 181099, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 末日之刺 (T)
			{spellID = 181119, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 189717, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 玛诺洛斯之血
			{spellID = 182171, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 穿刺之伤 (T)
			{spellID = 184252, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 191231, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 巨力冲击 (T)
			{spellID = 181359, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 玛诺洛斯的凝视
			{spellID = 181597, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暗影之力
			{spellID = 181841, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 强化玛诺洛斯凝视
			{spellID = 182006, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 强化暗影之力
			{spellID = 182088, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 凝视暗影
			{spellID = 182031, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 束缚暗影
			{spellID = 190482, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 13	阿克蒙德 [Archimonde]
			-- 影魔冲击
			{spellID = 183634, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 暗影爆破 (T)
			{spellID = 187742, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 183864, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 死亡烙印 (T)
			{spellID = 183828, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魔火
			{spellID = 183586, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 纳鲁之光
			{spellID = 183963, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 魔火锁定
			{spellID = 182879, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 聚焦混乱
			{spellID = 185014, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 精炼混乱
			{spellID = 186123, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 枷锁酷刑
			{spellID = 184964, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 虚空放逐 (T)
			{spellID = 186952, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			{spellID = 186961, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 吞噬生命
			{spellID = 187047, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 虚空撕裂
			{spellID = 189891, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 虚空腐化
			{spellID = 190049, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 邪能腐蚀
			{spellID = 188796, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			-- 地狱火堡垒 [结束]
			
			
			-- outdoor bosses -- 户外首领
			-- Sha of Anger [怒之煞]
			--Seethe
			{spellID = 119487, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Aggressive Behavior
			{spellID = 119626, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- Unleashed Wrath
			{spellID = 119488, unitID = "player", caster = "all", filter = "DEBUFF"},
			
			--Salys's Warband [萨莱斯兵团]
			--Yu'lon	玉珑(青龙)
			--Xuen		雪怒(白虎)
			--Chi-ji	赤精(朱鹤)
			--Niuzao	砮皂(玄牛)
			--Ordos		斡耳朵斯(野牛人火神)
			
			-- 心智 [尤格萨隆]
			{spellID = 63050, unitID = "player", caster = "all", filter = "DEBUFF"},

			-- 要塞 824
		},
		{
			Name = "T_BUFF",
			Direction = "UP",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.BigIconSize,
			Position = {unpack(FilgerPositions.target_buff_icon)},

			-- Death Knight
			-- Anti-Magic Shell
			{spellID = 48707, unitID = "target", caster = "all", filter = "BUFF"},
			-- Desecrated Ground
			{spellID = 115018, unitID = "target", caster = "all", filter = "BUFF"},
			-- Lichborne
			{spellID = 49039, unitID = "target", caster = "all", filter = "BUFF"},
			-- Icebound Fortitude
			{spellID = 48792, unitID = "target", caster = "all", filter = "BUFF"},
			-- Pillar of Frost
			{spellID = 51271, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Asphyxiate
			{spellID = 108194, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Gnaw (Ghoul)
			{spellID = 91800, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Monstrous Blow (Mutated Ghoul)
			{spellID = 91797, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Strangulate
			{spellID = 47476, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Demon Hunter
			-- Metamorphosis
			{spellID = 162264, unitID = "target", caster = "all", filter = "BUFF"},
			-- Spectral Sight
			{spellID = 188501, unitID = "target", caster = "all", filter = "BUFF"},
			-- Netherwalk
			{spellID = 196555, unitID = "target", caster = "all", filter = "BUFF"},
			-- Nether Bond
			{spellID = 207810, unitID = "target", caster = "all", filter = "BUFF"},
			-- Soul Barrier
			{spellID = 227225, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Imprison
			{spellID = 217832, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Druid
			-- Barkskin
			{spellID = 22812, unitID = "target", caster = "all", filter = "BUFF"},
			-- Incarnation: Tree of Life
			{spellID = 117679, unitID = "target", caster = "all", filter = "BUFF"},
			-- Ironbark
			{spellID = 102342, unitID = "target", caster = "all", filter = "BUFF"},
			-- Nature's Grasp
			{spellID = 170856, unitID = "target", caster = "all", filter = "BUFF"},
			-- Stampeding Roar
			{spellID = 77764, unitID = "target", caster = "all", filter = "BUFF"},
			-- Survival Instincts
			{spellID = 61336, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Cyclone
			{spellID = 33786, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Entangling Roots
			{spellID = 339, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Incapacitating Roar
			{spellID = 99, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Maim
			{spellID = 22570, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Mighty Bash
			{spellID = 5211, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Rake
			{spellID = 163505, unitID = "target", caster = "all", filter = "DEBUFF", absID = true},
			-- Solar Beam
			{spellID = 78675, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Hunter
			-- Deterrence
			{spellID = 19263, unitID = "target", caster = "all", filter = "BUFF"},
			-- Feign Death
			{spellID = 5384, unitID = "target", caster = "all", filter = "BUFF"},
			-- Posthaste
			{spellID = 118922, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Binding Shot
			{spellID = 117526, unitID = "target", caster = "all", filter = "DEBUFF", absID = true},
			-- Intimidation
			{spellID = 24394, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Freezing Trap
			{spellID = 3355, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Wyvern Sting
			{spellID = 19386, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Mage
			-- Alter Time
			{spellID = 110909, unitID = "target", caster = "all", filter = "BUFF"},
			-- Evanesce
			{spellID = 157913, unitID = "target", caster = "all", filter = "BUFF"},
			-- Evocation
			{spellID = 12051, unitID = "target", caster = "all", filter = "BUFF"},
			-- Ice Block
			{spellID = 45438, unitID = "target", caster = "all", filter = "BUFF"},
			-- Invisibility
			{spellID = 66, unitID = "target", caster = "all", filter = "BUFF"},
			-- Temporal Shield
			{spellID = 115610, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Cauterize
			{spellID = 87023, unitID = "target", caster = "target", filter = "DEBUFF"},
			-- Dragon's Breath
			{spellID = 31661, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Polymorph
			{spellID = 118, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Ring of Frost
			{spellID = 82691, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Monk
			-- Dampen Harm
			{spellID = 122278, unitID = "player", caster = "all", filter = "BUFF"},
			-- Diffuse Magic
			{spellID = 122783, unitID = "target", caster = "all", filter = "BUFF"},
			-- Ring of Peace
			{spellID = 116844, unitID = "target", caster = "all", filter = "BUFF"},
			-- Touch of Karma
			{spellID = 125174, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Fists of Fury
			{spellID = 120086, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Leg Sweep
			{spellID = 119381, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Paralysis
			{spellID = 115078, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Paladin
			-- Ardent Defender
			{spellID = 31850, unitID = "target", caster = "all", filter = "BUFF"},
			-- Devotion Aura
			{spellID = 31821, unitID = "target", caster = "all", filter = "BUFF"},
			-- Divine Protection
			{spellID = 498, unitID = "target", caster = "all", filter = "BUFF"},
			-- Divine Shield
			{spellID = 642, unitID = "target", caster = "all", filter = "BUFF"},
			-- Guardian of Ancient Kings
			{spellID = 86659, unitID = "target", caster = "all", filter = "BUFF"},
			-- Hand of Freedom
			{spellID = 1044, unitID = "target", caster = "all", filter = "BUFF"},
			-- Hand of Protection
			{spellID = 1022, unitID = "target", caster = "all", filter = "BUFF"},
			-- Hand of Sacrifice
			{spellID = 6940, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Avenger's Shield
			{spellID = 31935, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Blinding Light
			{spellID = 105421, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Hammer of Justice
			{spellID = 853, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Repentance
			{spellID = 20066, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Priest
			-- Dispersion
			{spellID = 47585, unitID = "target", caster = "all", filter = "BUFF"},
			-- Guardian Spirit
			{spellID = 47788, unitID = "target", caster = "all", filter = "BUFF"},
			-- Pain Suppression
			{spellID = 33206, unitID = "target", caster = "all", filter = "BUFF"},
			-- Phantasm
			{spellID = 114239, unitID = "target", caster = "all", filter = "BUFF"},
			-- Spectral Guise
			{spellID = 119030, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Dominate Mind
			{spellID = 605, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Psychic Horror
			{spellID = 64044, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Psychic Scream
			{spellID = 8122, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Silence
			{spellID = 15487, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Rogue
			-- Cheating Death
			{spellID = 45182, unitID = "target", caster = "all", filter = "BUFF"},
			-- Cloak of Shadows
			{spellID = 31224, unitID = "target", caster = "all", filter = "BUFF"},
			-- Combat Insight
			{spellID = 74002, unitID = "target", caster = "all", filter = "BUFF"},
			-- Evasion
			{spellID = 5277, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Blind
			{spellID = 2094, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Cheap Shot
			{spellID = 1833, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Garrote
			{spellID = 1330, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Kidney Shot
			{spellID = 408, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Sap
			{spellID = 6770, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Smoke Bomb
			{spellID = 76577, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Shaman
			-- Grounding Totem
			{spellID = 8178, unitID = "target", caster = "all", filter = "BUFF"},
			-- Spiritwalker's Grace
			{spellID = 79206, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Hex
			{spellID = 51514, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Pulverize (Earth Elemental)
			{spellID = 118345, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Static Charge
			{spellID = 118905, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Warlock
			-- Soulstone
			{spellID = 20707, unitID = "target", caster = "all", filter = "BUFF"},
			-- Unending Resolve
			{spellID = 104773, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Axe Toss (Felguard)
			{spellID = 89766, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Banish
			{spellID = 710, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Debilitate (Terrorguard)
			{spellID = 170996, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Fear
			{spellID = 118699, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Howl of Terror
			{spellID = 5484, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Mesmerize (Shivarra)
			{spellID = 115268, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Meteor Strike (Abyssal)
			{spellID = 171156, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Mortal Coil
			{spellID = 6789, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Seduction (Succubus)
			{spellID = 6358, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Shadowfury
			{spellID = 30283, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Unstable Affliction
			{spellID = 31117, unitID = "target", caster = "all", filter = "DEBUFF", absID = true},

			-- Warrior
			-- Berserker Rage
			{spellID = 18499, unitID = "target", caster = "all", filter = "BUFF"},
			-- Bladestorm
			{spellID = 46924, unitID = "target", caster = "all", filter = "BUFF"},
			-- Die by the Sword
			{spellID = 118038, unitID = "target", caster = "all", filter = "BUFF"},
			-- Last Stand
			{spellID = 12975, unitID = "target", caster = "all", filter = "BUFF"},
			-- Mass Spell Reflection
			{spellID = 114028, unitID = "target", caster = "all", filter = "BUFF"},
			-- Shield Wall
			{spellID = 871, unitID = "target", caster = "all", filter = "BUFF"},
			-- Spell Reflection
			{spellID = 23920, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Intimidating Shout
			{spellID = 5246, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Shockwave
			{spellID = 132168, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Storm Bolt
			{spellID = 132169, unitID = "target", caster = "all", filter = "DEBUFF", absID = true},

			-- Racial
			-- Arcane Torrent
			{spellID = 28730, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Quaking Palm
			{spellID = 107079, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- War Stomp
			{spellID = 20549, unitID = "target", caster = "all", filter = "DEBUFF"},
			
			-- Professions
			-- Shieldtronic Shield
			{spellID = 173260, unitID = "target", caster = "all", filter = "BUFF"},
			
			-- Player vs. Player
			-- Ashran
			-- Ancient Artifact
			{spellID = 168506, unitID = "target", caster = "all", filter = "BUFF"},
			-- Boulder Shield
			{spellID = 169373, unitID = "target", caster = "all", filter = "BUFF"},
			-- Scroll of Protection
			{spellID = 171249, unitID = "target", caster = "all", filter = "BUFF"},
			-- Star Root Tuber
			{spellID = 161495, unitID = "target", caster = "all", filter = "BUFF"},
			-- Battlegrounds
			-- Netherstorm Flag
			{spellID = 34976, unitID = "target", caster = "all", filter = "BUFF"},
			-- Orb of Power
			{spellID = 121175, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Warsong Flag
			{spellID = 23333, unitID = "target", caster = "all", filter = "BUFF"},
			{spellID = 23335, unitID = "target", caster = "all", filter = "BUFF"},
			-- Seaforium Bombs
			{spellID = 66271, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Other
			-- Ba'ruun's Bountiful Bloom
			{spellID = 167268, unitID = "target", caster = "all", filter = "BUFF"},
			-- Drinking
			{spellID = 80167, unitID = "target", caster = "all", filter = "BUFF"},
			-- Mage Food
			{spellID = 167152, unitID = "target", caster = "all", filter = "BUFF"},
		},
		--[=[
		{
			Name = "自定义组",
			Direction = "DOWN",
			Mode = "ICON",
			Interval = Misc.Interval,
			Alpha = 1,
			IconSize = Misc.IconSize,
			Position = {"CENTER", UIParent, "CENTER", 0, 0},

			{spellID = 469, unitID = "player", caster = "player", filter = "BUFF"},
			{spellID = 469, unitID = "player", caster = "player", filter = "BUFF"},
			{spellID = 469, unitID = "player", caster = "player", filter = "BUFF"},
		
		},
		--]=]
	},
}