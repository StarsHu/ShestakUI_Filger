local _, ns = ...
local Misc = ns.Misc

local FilgerPositions = Misc.FilgerPositions

Misc.Filger_Spells = {
    ["DEATHKNIGHT"] = {
        --[死骑]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Bone Shield
            { spellID = 195181, unitID = "player", caster = "player", filter = "BUFF" },
            -- Vampiric Blood
            { spellID = 55233, unitID = "player", caster = "player", filter = "BUFF" },
            -- Icebound Fortitude
            { spellID = 48792, unitID = "player", caster = "player", filter = "BUFF" },
            -- Anti-Magic Shell
            { spellID = 48707, unitID = "player", caster = "player", filter = "BUFF" },
            -- Dancing Rune Weapon
            { spellID = 81256, unitID = "player", caster = "player", filter = "BUFF" },
            -- Rune Tap
            { spellID = 194679, unitID = "player", caster = "player", filter = "BUFF" },
            -- Pillar of Frost
            { spellID = 51271, unitID = "player", caster = "player", filter = "BUFF" },
            -- Desecrated Ground
            { spellID = 115018, unitID = "player", caster = "player", filter = "BUFF" },
            -- Unholy Blight
            { spellID = 115989, unitID = "player", caster = "player", filter = "BUFF" },
            -- Summon Gargoyle
            { spellID = 49206, filter = "ICD", trigger = "NONE", duration = 40 },
            { spellID = 77535, unitID = "player", caster = "player", filter = "BUFF" },
            -- 符文武器
            { spellID = 207127, unitID = "player", caster = "player", filter = "BUFF" },
            -- 橙肩凝血
            { spellID = 235559, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- 冰爪
            { spellID = 194879, unitID = "player", caster = "player", filter = "BUFF" },
            -- Crimson Scourge
            { spellID = 81141, unitID = "player", caster = "player", filter = "BUFF" },
            -- Freezing Fog
            { spellID = 59052, unitID = "player", caster = "player", filter = "BUFF" },
            -- Killing Machine
            { spellID = 51124, unitID = "player", caster = "player", filter = "BUFF" },
            -- Sudden Doom
            { spellID = 81340, unitID = "player", caster = "player", filter = "BUFF" },
            -- Unholy Strength
            { spellID = 53365, unitID = "player", caster = "player", filter = "BUFF" },
            -- Dark Transformation
            { spellID = 63560, unitID = "pet", caster = "player", filter = "BUFF" },
            { spellID = 194844, unitID = "player", caster = "player", filter = "BUFF" },
            -- 冷酷严冬
            { spellID = 196770, unitID = "player", caster = "player", filter = "BUFF" },
            -- 冰龙吐息
            { spellID = 155166, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Festering Wound
            { spellID = 194310, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Virulent Plague
            { spellID = 191587, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Blood Plague
            { spellID = 55078, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Frost Fever
            { spellID = 55095, unitID = "target", caster = "player", filter = "DEBUFF" },

            -- Trinket Effects
            -- Fel Burn [Empty Drinking Horn]
            { spellID = 184256, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Apocalypse
            { spellID = 220143, filter = "CD" },
            -- Sindragosa's Fury
            { spellID = 190778, filter = "CD" },
            -- Consumption
            { spellID = 205223, filter = "CD" },
            -- Bonestorm
            { spellID = 194844, filter = "CD" },
            -- Asphyxiate
            { spellID = 221562, filter = "CD" },
            -- Blinding Sleet
            { spellID = 207167, filter = "CD" },
            -- Hungering Rune Weapon
            { spellID = 207127, filter = "CD" },
            -- Mind Freeze
            { spellID = 47528, filter = "CD" },
            -- Strangulate
            { spellID = 47476, filter = "CD" },
            -- Gnaw (Ghoul)
            { spellID = 47481, filter = "CD" },
            -- Remorseless Winter
            { spellID = 196770, filter = "CD" },
            -- Dark Simulacrum
            { spellID = 77606, filter = "CD" },
            -- Soul Reaper
            { spellID = 130736, filter = "CD" },
            -- Death Grip
            { spellID = 49576, filter = "CD" },
            -- Plague Leech
            { spellID = 123693, filter = "CD" },
            -- Death and Decay
            { spellID = 43265, filter = "CD" },
            -- Rune Tap
            { spellID = 194679, filter = "CD" },
            -- Anti-Magic Shell
            { spellID = 48707, filter = "CD" },
            -- Blood Tap
            { spellID = 221699, filter = "CD" },
            -- Vampiric Blood
            { spellID = 55233, filter = "CD" },
            -- Pillar of Frost
            { spellID = 51271, filter = "CD" },
            -- Outbreak
            { spellID = 77575, filter = "CD" },
            -- Gorefiend's Grasp
            { spellID = 108199, filter = "CD" },
            -- Raise Dead
            { spellID = 46584, filter = "CD" },
            -- Dancing Rune Weapon
            { spellID = 49028, filter = "CD" },
            -- Unholy Blight
            { spellID = 115989, filter = "CD" },
            -- Breath of Sindragosa
            { spellID = 152279, filter = "CD" },
            -- Desecrated Ground
            { spellID = 108201, filter = "CD" },
            -- Death Pact
            { spellID = 48743, filter = "CD" },
            -- Anti-Magic Zone
            { spellID = 51052, filter = "CD" },
            -- Icebound Fortitude
            { spellID = 48792, filter = "CD" },
            -- Summon Gargoyle
            { spellID = 49206, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 69179, filter = "CD" },
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD" },
            -- Blood Fury (Orc)
            { spellID = 20572, filter = "CD" },
            -- Cannibalize (Forsaken)
            { spellID = 20577, filter = "CD" },
            -- Darkflight (Worgen)
            { spellID = 68992, filter = "CD" },
            -- Escape Artist (Gnome)
            { spellID = 20589, filter = "CD" },
            -- Every Man for Himself (Human)
            { spellID = 59752, filter = "CD" },
            -- Gift of the Naaru (Draenei)
            { spellID = 28880, filter = "CD" },
            -- Rocket Jump (Goblin)
            { spellID = 69070, filter = "CD" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- War Stomp (Tauren)
            { spellID = 20549, filter = "CD" },
            -- Will of the Forsaken (Forsaken)
            { spellID = 7744, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["DEMONHUNTER"] = {
        --[恶魔猎手]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Metamorphosis
            { spellID = 187827, unitID = "player", caster = "player", filter = "BUFF" },
            -- Empower Wards
            { spellID = 218256, unitID = "player", caster = "player", filter = "BUFF" },
            -- Darkness
            { spellID = 196718, unitID = "player", caster = "player", filter = "BUFF" },
            -- Immolation Aura
            { spellID = 178740, unitID = "player", caster = "player", filter = "BUFF" },
            -- Demon Spikes
            { spellID = 203720, unitID = "player", caster = "player", filter = "BUFF" },
            -- Soul Barrier
            { spellID = 227225, unitID = "player", caster = "player", filter = "BUFF" },
            -- Blur
            { spellID = 212800, unitID = "player", caster = "player", filter = "BUFF" },
            -- Chaos Blades
            { spellID = 211048, unitID = "player", caster = "player", filter = "BUFF" },
            -- Netherwalk
            { spellID = 196555, unitID = "player", caster = "player", filter = "BUFF" },
            -- Nether Bond
            { spellID = 207810, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Buffs
            -- Soul Fragments
            { spellID = 203981, unitID = "player", caster = "player", filter = "BUFF" },
            -- Painbringer (Vengeance Artifact)
            { spellID = 212988, unitID = "player", caster = "player", filter = "BUFF" },
            -- Momentum
            { spellID = 208628, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Nemesis
            { spellID = 206491, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Sigil of Flame
            { spellID = 204598, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Sigil of Silence
            { spellID = 204490, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Sigil of Misery
            { spellID = 207685, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Sigil of Grasp
            { spellID = 204843, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Fiery Brand
            { spellID = 207744, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Frailty
            { spellID = 224509, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Bloodlet
            { spellID = 207690, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Darkness
            { spellID = 209426, unitID = "target", caster = "player", filter = "BUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Consume Magic
            { spellID = 183752, filter = "CD" },
            -- Fel Rush
            { spellID = 195072, filter = "CD", absID = true },
            -- Infernal Strike
            { spellID = 189110, filter = "CD" },
            -- Torment
            { spellID = 185245, filter = "CD" },
            -- Demon Spikes
            { spellID = 203720, filter = "CD" },
            -- Immolation Aura
            { spellID = 178740, filter = "CD" },
            -- Felblade
            { spellID = 213241, filter = "CD" },
            -- Throw Glaive
            { spellID = 185123, filter = "CD" },
            -- Soul Barrier
            { spellID = 227225, filter = "CD" },
            -- Blade Dance
            { spellID = 188499, filter = "CD" },
            -- Fel Barrage
            { spellID = 211053, filter = "CD" },
            -- Vengeful Retreat
            { spellID = 198793, filter = "CD", absID = true },
            -- Soul Carver (Artifact)
            { spellID = 207407, filter = "CD" },
            -- Sigil of Silence
            { spellID = 202137, filter = "CD" },
            -- Sigil of Misery
            { spellID = 207684, filter = "CD" },
            -- Empower Wards
            { spellID = 218256, filter = "CD" },
            -- Spectral Sight
            { spellID = 188501, filter = "CD" },
            -- Fiery Brand
            { spellID = 204021, filter = "CD" },
            -- Eye Beam
            { spellID = 198013, filter = "CD", absID = true },
            -- Chaos Nova
            { spellID = 179057, filter = "CD", absID = true },
            -- Sigil of Chains
            { spellID = 202138, filter = "CD" },
            -- Fel Eruption
            { spellID = 211881, filter = "CD" },
            -- Fel Devastation
            { spellID = 212084, filter = "CD" },
            -- Nether Bond
            { spellID = 207810, filter = "CD" },
            -- Demonic Infusion
            { spellID = 236189, filter = "CD" },
            -- Blur
            { spellID = 198589, filter = "CD" },
            -- Fury of the Illidari (Artifact)
            { spellID = 201467, filter = "CD" },
            -- Netherwalk
            { spellID = 196555, filter = "CD" },
            -- Chaos Blades
            { spellID = 211048, filter = "CD" },
            -- Nemesis
            { spellID = 206491, filter = "CD" },
            -- Metamorphosis
            { spellID = 187827, filter = "CD" },
            -- Darkness
            { spellID = 196718, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 202719, filter = "CD" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["DRUID"] = {
        --[小德]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Incarnation: Chosen of Elune
            { spellID = 102560, unitID = "player", caster = "player", filter = "BUFF" },
            -- Incarnation: King of the Jungle
            { spellID = 102543, unitID = "player", caster = "player", filter = "BUFF" },
            -- Incarnation: Son of Ursoc
            { spellID = 102558, unitID = "player", caster = "player", filter = "BUFF" },
            -- Incarnation: Tree of Life
            { spellID = 117679, unitID = "player", caster = "player", filter = "BUFF" },
            -- Survival Instincts
            { spellID = 61336, unitID = "player", caster = "player", filter = "BUFF" },
            -- Barkskin
            { spellID = 22812, unitID = "player", caster = "player", filter = "BUFF" },
            -- Savage Roar
            { spellID = 52610, unitID = "player", caster = "player", filter = "BUFF" },
            -- Berserk
            { spellID = 106951, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Tiger's Fury
            { spellID = 5217, unitID = "player", caster = "player", filter = "BUFF" },
            -- Celestial Alignment
            { spellID = 194223, unitID = "player", caster = "player", filter = "BUFF" },
            -- Nature's Vigil
            { spellID = 124974, unitID = "player", caster = "player", filter = "BUFF" },
            -- Rage of the Sleeper
            { spellID = 200851, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ironfur
            { spellID = 192081, unitID = "player", caster = "player", filter = "BUFF" },
            -- Pulverize
            { spellID = 158792, unitID = "player", caster = "player", filter = "BUFF" },
            -- Lunar Empowerment
            { spellID = 164547, unitID = "player", caster = "player", filter = "BUFF" },
            -- Solar Empowerment
            { spellID = 164545, unitID = "player", caster = "player", filter = "BUFF" },
            -- Nature's Grasp
            { spellID = 170856, unitID = "player", caster = "player", filter = "BUFF" },
            -- Dash
            { spellID = 1850, unitID = "player", caster = "player", filter = "BUFF" },
            -- Cenarion Ward
            { spellID = 102351, unitID = "player", caster = "player", filter = "BUFF" },
            -- 狂暴恢复
            { spellID = 22842, unitID = "player", caster = "player", filter = "BUFF" },
            -- 欧奈斯的自负
            { spellID = 209407, unitID = "player", caster = "player", filter = "BUFF" },
            -- 欧奈斯的直觉
            { spellID = 209406, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Bloodtalons
            { spellID = 145152, unitID = "player", caster = "player", filter = "BUFF" },
            -- Clearcasting
            { spellID = 16870, unitID = "player", caster = "player", filter = "BUFF" },
            -- Soul of the Forest
            { spellID = 114108, unitID = "player", caster = "player", filter = "BUFF" },
            -- Predatory Swiftness
            { spellID = 69369, unitID = "player", caster = "player", filter = "BUFF" },
            -- Guardian of Elune
            { spellID = 213680, unitID = "player", caster = "player", filter = "BUFF" },
            -- Apex Predator (T21)
            { spellID = 252752, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Moonfire
            { spellID = 164812, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Sunfire
            { spellID = 164815, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Stellar Flare
            { spellID = 202347, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Ashmane's Frenzy
            { spellID = 210722, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Rake
            { spellID = 155722, unitID = "target", caster = "player", filter = "DEBUFF", absID = true },
            -- Rip
            { spellID = 1079, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Thrash
            { spellID = 77758, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Immobilized
            { spellID = 45334, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Lifebloom
            { spellID = 33763, unitID = "target", caster = "player", filter = "BUFF" },
            -- Rejuvenation
            { spellID = 774, unitID = "target", caster = "player", filter = "BUFF" },
            -- Rejuvenation (Germination)
            { spellID = 155777, unitID = "target", caster = "player", filter = "BUFF" },
            -- Regrowth
            { spellID = 8936, unitID = "target", caster = "player", filter = "BUFF" },
            -- Wild Growth
            { spellID = 48438, unitID = "target", caster = "player", filter = "BUFF" },
            -- Cenarion Ward
            { spellID = 102351, unitID = "target", caster = "player", filter = "BUFF" },

            -- Trinket Effects
            -- Mark of Doom [Prophecy of Fear]
            { spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.pve_cc) },

            { spellID = 33786, unitID = "focus", caster = "all", filter = "DEBUFF" }, -- Cyclone
            { spellID = 339, unitID = "focus", caster = "all", filter = "DEBUFF" }, -- Entangling Roots
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Nature's Cure
            { spellID = 88423, filter = "CD" },
            -- Remove Corruption
            { spellID = 2782, filter = "CD" },
            -- Skull Bash
            { spellID = 106839, filter = "CD" },
            -- Mangle
            { spellID = 33917, filter = "CD" },
            -- Wild Growth
            { spellID = 48438, filter = "CD" },
            -- Swiftmend
            { spellID = 18562, filter = "CD" },
            -- Growl
            { spellID = 6795, filter = "CD" },
            -- Maim
            { spellID = 22570, filter = "CD" },
            -- Starsurge
            { spellID = 78674, filter = "CD" },
            -- Wild Charge
            { spellID = 102401, filter = "CD" },
            -- Force of Nature
            { spellID = 205636, filter = "CD" },
            -- Tiger's Fury
            { spellID = 5217, filter = "CD" },
            -- Incapacitating Roar
            { spellID = 99, filter = "CD" },
            -- Bristling Fur
            { spellID = 155835, filter = "CD" },
            -- Mass Entanglement
            { spellID = 102359, filter = "CD" },
            -- Typhoon
            { spellID = 132469, filter = "CD" },
            -- Mighty Bash
            { spellID = 5211, filter = "CD" },
            -- Solar Beam
            { spellID = 78675, filter = "CD" },
            -- Barkskin
            { spellID = 22812, filter = "CD" },
            -- Ironbark
            { spellID = 102342, filter = "CD" },
            -- Ursol's Vortex
            { spellID = 102793, filter = "CD" },
            -- Nature's Vigil
            { spellID = 124974, filter = "CD" },
            -- Berserk
            { spellID = 106951, filter = "CD", absID = true },
            -- Ashmane's Frenzy
            { spellID = 210722, filter = "CD" },
            -- Incarnation: Chosen of Elune
            { spellID = 102560, filter = "CD" },
            -- Incarnation: King of the Jungle
            { spellID = 102543, filter = "CD" },
            -- Incarnation: Son of Ursoc
            { spellID = 102558, filter = "CD" },
            -- Incarnation: Tree of Life
            { spellID = 33891, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD", absID = true },
            -- Darkflight (Worgen)
            { spellID = 68992, filter = "CD" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, filter = "CD" },
            -- War Stomp (Tauren)
            { spellID = 20549, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["HUNTER"] = {
        --[猎人]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Aspect of the Turtle
            { spellID = 186265, unitID = "player", caster = "player", filter = "BUFF" },
            -- Bestial Wrath
            { spellID = 19574, unitID = "player", caster = "player", filter = "BUFF" },
            -- Trueshot
            { spellID = 193526, unitID = "player", caster = "player", filter = "BUFF" },
            -- Aspect of the Wild
            { spellID = 193530, unitID = "player", caster = "player", filter = "BUFF" },
            -- Aspect of the Eagle
            { spellID = 186289, unitID = "player", caster = "player", filter = "BUFF" },
            -- Aspect of the Cheetah
            { spellID = 186257, unitID = "player", caster = "player", filter = "BUFF" },
            -- 变色龙守护
            { spellID = 61648, unitID = "player", caster = "player", filter = "BUFF" },
            -- Camouflage
            { spellID = 199483, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Spirit Mend
            { spellID = 90361, unitID = "player", caster = "player", filter = "BUFF" },
            -- Posthaste
            { spellID = 118922, unitID = "player", caster = "player", filter = "BUFF" },
            -- 凶猛狂暴
            { spellID = 217200, unitID = "pet", caster = "player", filter = "BUFF" },
            -- Titan's Thunder
            { spellID = 207094, unitID = "pet", caster = "player", filter = "BUFF" },
            -- Dire Beast
            { spellID = 120694, unitID = "player", caster = "player", filter = "BUFF" },
            -- Beast Cleave
            { spellID = 118455, unitID = "pet", caster = "player", filter = "BUFF" },
            -- Misdirection
            { spellID = 35079, unitID = "player", caster = "player", filter = "BUFF" },
            -- Survivalist
            { spellID = 164857, unitID = "player", caster = "player", filter = "BUFF" },
            -- Trick Shot
            { spellID = 227272, unitID = "player", caster = "player", filter = "BUFF" },
            -- Bombardment
            { spellID = 82921, unitID = "player", caster = "player", filter = "BUFF" },
            -- Spitting Cobra
            { spellID = 194407, unitID = "player", caster = "player", filter = "BUFF" },
            --
            { spellID = 248085, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Buffs
            -- Steady Focus
            { spellID = 193533, unitID = "player", caster = "player", filter = "BUFF" },
            -- Lock and Load
            { spellID = 194594, unitID = "player", caster = "player", filter = "BUFF" },
            -- Mok'Nathal Tactics
            { spellID = 201081, unitID = "player", caster = "player", filter = "BUFF" },
            -- Mongoose Fury
            { spellID = 190931, unitID = "player", caster = "player", filter = "BUFF" },
            -- Marking Targets
            { spellID = 223138, unitID = "player", caster = "player", filter = "BUFF" },
            -- Frenzy
            { spellID = 19615, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Mend Pet
            { spellID = 136, unitID = "pet", caster = "player", filter = "BUFF" },
            -- Bullseye
            { spellID = 204090, unitID = "player", caster = "player", filter = "BUFF" },
            -- 4T20
            { spellID = 246153, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Black Arrow
            { spellID = 194599, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Serpent Sting
            { spellID = 87935, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Lacerate
            { spellID = 185855, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- A Murder of Crows
            { spellID = 131894, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Vulnerable
            { spellID = 187131, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Hunter's Mark
            { spellID = 185365, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Narrow Escape
            { spellID = 136634, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Entrapment
            { spellID = 135373, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Caltrops
            { spellID = 194279, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Warp Time (Warp Stalker)
            { spellID = 35346, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Ankle Crack (Crocolisk)
            { spellID = 50433, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Frost Breath (Chimaera)
            { spellID = 54644, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Concussive Shot
            { spellID = 5116, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Tar Trap
            { spellID = 135299, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Poisoned Ammo
            { spellID = 162543, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Frozen Ammo
            { spellID = 162546, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- True Aim
            { spellID = 199803, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Dragonsfire Grenade
            { spellID = 194858, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Explosive Trap
            { spellID = 13812, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Steel Trap
            { spellID = 162487, unitID = "target", caster = "player", filter = "DEBUFF", absID = true },
            -- 流血
            { spellID = 191413, unitID = "target", caster = "pet", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.pve_cc) },

            -- Wyvern Sting
            { spellID = 19386, unitID = "focus", caster = "player", filter = "DEBUFF" },
            -- Freezing Trap
            { spellID = 3355, unitID = "focus", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Concussive Shot
            { spellID = 5116, filter = "CD" },
            -- Counter Shot
            { spellID = 147362, filter = "CD" },
            -- Kill Command
            { spellID = 34026, filter = "CD" },
            -- Sidewinders
            { spellID = 214579, filter = "CD" },
            -- Explosive Shot
            { spellID = 212431, filter = "CD" },
            -- Chimera Shot
            { spellID = 53209, filter = "CD" },
            -- Barrage
            { spellID = 120360, filter = "CD" },
            -- Disengage
            { spellID = 781, filter = "CD" },
            -- Dire Beast
            { spellID = 120679, filter = "CD" },
            -- Fervor
            { spellID = 82726, filter = "CD" },
            -- Misdirection
            { spellID = 34477, filter = "CD" },
            -- Feign Death
            { spellID = 5384, filter = "CD" },
            -- Explosive Trap
            { spellID = 13813, filter = "CD" },
            -- Ice Trap
            { spellID = 13809, filter = "CD" },
            -- Binding Shot
            { spellID = 117526, filter = "CD" },
            -- Master's Call
            { spellID = 53271, filter = "CD" },
            -- Wyvern Sting
            { spellID = 19386, filter = "CD" },
            -- Intimidation
            { spellID = 19577, filter = "CD" },
            -- Bestial Wrath
            { spellID = 19574, filter = "CD" },
            -- A Murder of Crows
            { spellID = 131894, filter = "CD" },
            -- Exhilaration
            { spellID = 109304, filter = "CD" },
            -- Aspect of the Wild
            { spellID = 193530, filter = "CD" },
            -- Aspect of the Turtle
            { spellID = 186265, filter = "CD" },
            -- Aspect of the Cheetah
            { spellID = 186257, filter = "CD" },
            -- Spirit Mend (Pet)
            { spellID = 90361, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 69179, filter = "CD" },
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD" },
            -- Blood Fury (Orc)
            { spellID = 20572, filter = "CD" },
            -- Cannibalize (Forsaken)
            { spellID = 20577, filter = "CD" },
            -- Darkflight (Worgen)
            { spellID = 68992, filter = "CD" },
            -- Every Man for Himself (Human)
            { spellID = 59752, filter = "CD" },
            -- Gift of the Naaru (Draenei)
            { spellID = 28880, filter = "CD" },
            -- Quaking Palm (Pandaren)
            { spellID = 107079, filter = "CD" },
            -- Rocket Jump (Goblin)
            { spellID = 69070, filter = "CD" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- War Stomp (Tauren)
            { spellID = 20549, filter = "CD" },
            -- Will of the Forsaken (Forsaken)
            { spellID = 7744, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["MAGE"] = {
        --[法师]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Ice Block
            { spellID = 45438, unitID = "player", caster = "player", filter = "BUFF" },
            -- Invisibility
            { spellID = 66, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Invisibility
            { spellID = 32612, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Greater Invisibility
            { spellID = 110960, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Icy Veins
            { spellID = 12472, unitID = "player", caster = "player", filter = "BUFF" },
            -- Arcane Power
            { spellID = 12042, unitID = "player", caster = "player", filter = "BUFF" },
            -- Combustion
            { spellID = 190319, unitID = "player", caster = "player", filter = "BUFF" },
            -- Pyretic Incantation
            { spellID = 194329, unitID = "player", caster = "player", filter = "BUFF" },
            -- Blazing Barrier
            { spellID = 235313, unitID = "player", caster = "player", filter = "BUFF" },
            -- Prismatic Barrier
            { spellID = 235450, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ice Barrier
            { spellID = 11426, unitID = "player", caster = "player", filter = "BUFF" },
            -- Heating Up
            { spellID = 48107, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ice Floes
            { spellID = 108839, unitID = "player", caster = "player", filter = "BUFF" },
            -- Evanesce
            { spellID = 157913, unitID = "player", caster = "player", filter = "BUFF" },
            -- Temporal Shield
            { spellID = 198111, unitID = "player", caster = "player", filter = "BUFF" },
            -- 咒术洪流
            { spellID = 116267, unitID = "player", caster = "player", filter = "BUFF" },
            -- Rune of Power
            { spellID = 116014, filter = "ICD", trigger = "NONE", duration = 10 },
            -- Mirror Image
            { spellID = 55342, filter = "ICD", trigger = "NONE", duration = 40 },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Buffs
            -- Fingers of Frost
            { spellID = 44544, unitID = "player", caster = "player", filter = "BUFF" },
            -- Brain Freeze
            { spellID = 190447, unitID = "player", caster = "player", filter = "BUFF" },
            -- Glacial Spike!
            { spellID = 199844, unitID = "player", caster = "player", filter = "BUFF" },
            -- Arcane Missiles!
            { spellID = 79683, unitID = "player", caster = "player", filter = "BUFF" },
            -- Hot Streak!
            { spellID = 48108, unitID = "player", caster = "player", filter = "BUFF" },
            -- Kael'thas's Ultimate Ability
            { spellID = 209455, unitID = "player", caster = "player", filter = "BUFF" },
            -- Freezing Rain
            { spellID = 240555, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Arcane Charge
            { spellID = 36032, unitID = "player", caster = "player", filter = "DEBUFF" },
            -- Living Bomb
            { spellID = 44457, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Nether Tempest
            { spellID = 114923, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Frost Bomb
            { spellID = 112948, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Pyroblast
            { spellID = 11366, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Freeze (Pet)
            { spellID = 33395, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Water Jet (Pet)
            { spellID = 135029, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Frostbite
            { spellID = 198121, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Frost Nova
            { spellID = 122, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Cone of Cold
            { spellID = 120, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Flurry
            { spellID = 228354, unitID = "target", caster = "player", filter = "DEBUFF", absID = true },
            -- Ice Nova
            { spellID = 157997, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Slow
            { spellID = 31589, unitID = "target", caster = "player", filter = "DEBUFF" },

            -- Trinket Effects
            -- Mark of Doom [Prophecy of Fear]
            { spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.pve_cc) },

            -- Polymorph
            { spellID = 118, unitID = "focus", caster = "all", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Counterspell
            { spellID = 2139, filter = "CD" },
            -- Living Bomb
            { spellID = 44457, filter = "CD" },
            -- Blink
            { spellID = 1953, filter = "CD" },
            -- Frost Nova
            { spellID = 122, filter = "CD" },
            -- Ice Nova
            { spellID = 157997, filter = "CD" },
            -- Ring of Frost
            { spellID = 113724, filter = "CD" },
            -- Blazing Barrier
            { spellID = 235313, filter = "CD" },
            -- Prismatic Barrier
            { spellID = 235450, filter = "CD" },
            -- Ice Barrier
            { spellID = 11426, filter = "CD" },
            -- Temporal Shield
            { spellID = 198111, filter = "CD" },
            -- Fire Blast
            { spellID = 108853, filter = "CD" },
            -- Cone of Cold
            { spellID = 120, filter = "CD" },
            -- Water Jet (Pet)
            { spellID = 135029, filter = "CD" },
            -- Comet Storm
            { spellID = 153595, filter = "CD" },
            -- Ice Floes
            { spellID = 108839, filter = "CD" },
            -- Ebonbolt
            { spellID = 214634, filter = "CD" },
            -- Phoenix's Flames
            { spellID = 194466, filter = "CD" },
            -- Mark of Aluneth
            { spellID = 224968, filter = "CD" },
            -- Frozen Orb
            { spellID = 84714, filter = "CD" },
            -- Meteor
            { spellID = 153561, filter = "CD" },
            -- Dragon's Breath
            { spellID = 31661, filter = "CD" },
            -- Arcane Power
            { spellID = 12042, filter = "CD" },
            -- Rune of Power
            { spellID = 116011, filter = "CD" },
            -- Presence of Mind
            { spellID = 205025, filter = "CD" },
            -- Displacement
            { spellID = 195676, filter = "CD" },
            -- Charged Up
            { spellID = 205032, filter = "CD" },
            -- Supernova
            { spellID = 157980, filter = "CD" },
            -- Evocation
            { spellID = 12051, filter = "CD" },
            -- Icy Veins
            { spellID = 12472, filter = "CD" },
            -- Mirror Image
            { spellID = 55342, filter = "CD" },
            -- Combustion
            { spellID = 190319, filter = "CD" },
            -- Cold Snap
            { spellID = 235219, filter = "CD" },
            -- Ice Block
            { spellID = 45438, filter = "CD" },
            -- Invisibility
            { spellID = 66, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 69179, filter = "CD" },
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD" },
            -- Blood Fury (Orc)
            { spellID = 20572, filter = "CD" },
            -- Cannibalize (Forsaken)
            { spellID = 20577, filter = "CD" },
            -- Darkflight (Worgen)
            { spellID = 68992, filter = "CD" },
            -- Escape Artist (Gnome)
            { spellID = 20589, filter = "CD" },
            -- Every Man for Himself (Human)
            { spellID = 59752, filter = "CD" },
            -- Gift of the Naaru (Draenei)
            { spellID = 28880, filter = "CD" },
            -- Quaking Palm (Pandaren)
            { spellID = 107079, filter = "CD" },
            -- Rocket Jump (Goblin)
            { spellID = 69070, filter = "CD" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- Will of the Forsaken (Forsaken)
            { spellID = 7744, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["MONK"] = {
        --[武僧]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Fortifying Brew
            { spellID = 120954, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ironskin Brew
            { spellID = 215479, unitID = "player", caster = "player", filter = "BUFF" },
            -- Touch of Karma
            { spellID = 125174, unitID = "player", caster = "player", filter = "BUFF" },
            -- Diffuse Magic
            { spellID = 122783, unitID = "player", caster = "player", filter = "BUFF" },
            -- Dampen Harm
            { spellID = 122278, unitID = "player", caster = "player", filter = "BUFF" },
            -- Nimble Brew
            { spellID = 213664, unitID = "player", caster = "player", filter = "BUFF" },
            -- Serenity
            { spellID = 152173, unitID = "player", caster = "player", filter = "BUFF" },
            -- Mana Tea
            { spellID = 197908, unitID = "player", caster = "player", filter = "BUFF" },
            -- Thunder Focus Tea
            { spellID = 116680, unitID = "player", caster = "player", filter = "BUFF" },
            -- Brew-Stache
            { spellID = 214372, unitID = "player", caster = "player", filter = "BUFF" },
            -- Lifecycles (Vivify)
            { spellID = 197916, unitID = "player", caster = "player", filter = "BUFF" },
            -- Lifecycles (Enveloping Mist)
            { spellID = 197919, unitID = "player", caster = "player", filter = "BUFF" },
            -- Fortification
            { spellID = 213341, unitID = "player", caster = "player", filter = "BUFF" },
            -- Chi Torpedo
            { spellID = 119085, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Buffs
            -- Blackout Kick!
            { spellID = 116768, unitID = "player", caster = "player", filter = "BUFF" },
            -- The Mists of Sheilun
            { spellID = 199888, unitID = "player", caster = "player", filter = "BUFF" },
            -- Surge of Mists
            { spellID = 246328, unitID = "player", caster = "player", filter = "BUFF" },
            -- Power Strikes
            { spellID = 129914, unitID = "player", caster = "player", filter = "BUFF" },
            -- Teachings of the Monastery
            { spellID = 202090, unitID = "player", caster = "player", filter = "BUFF" },
            -- Transfer the Power
            { spellID = 195321, unitID = "player", caster = "player", filter = "BUFF" },
            -- Hit Combo
            { spellID = 196741, unitID = "player", caster = "player", filter = "BUFF" },
            -- Transfer the Power
            { spellID = 195321, unitID = "player", caster = "player", filter = "BUFF" },

            -- Item Sets
            -- Combo Master (T19)
            { spellID = 211432, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Heavy Stagger
            { spellID = 124273, unitID = "player", caster = "player", filter = "DEBUFF" },
            -- Keg Smash
            { spellID = 121253, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Breath of Fire
            { spellID = 123725, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Exploding Keg
            { spellID = 214326, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Detox
            { spellID = 115450, filter = "CD" },
            -- Spear Hand Strike
            { spellID = 116705, filter = "CD" },
            -- Paralysis
            { spellID = 115078, filter = "CD" },
            -- Expel Harm
            { spellID = 115072, filter = "CD" },
            -- Rising Sun Kick
            { spellID = 107428, filter = "CD" },
            -- Provoke
            { spellID = 115546, filter = "CD" },
            -- Zen Sphere
            { spellID = 124081, filter = "CD" },
            -- Chi Wave
            { spellID = 115098, filter = "CD" },
            -- Fists of Fury
            { spellID = 113656, filter = "CD" },
            -- Chi Burst
            { spellID = 123986, filter = "CD" },
            -- Guard
            { spellID = 202162, filter = "CD" },
            -- Hurricane Strike
            { spellID = 152175, filter = "CD" },
            -- Ring of Peace
            { spellID = 116844, filter = "CD" },
            -- Thunder Focus Tea
            { spellID = 116680, filter = "CD" },
            -- Dampen Harm
            { spellID = 122278, filter = "CD" },
            -- Flying Serpent Kick
            { spellID = 101545, filter = "CD" },
            -- Energizing Elixir
            { spellID = 115288, filter = "CD" },
            -- Diffuse Magic
            { spellID = 122783, filter = "CD" },
            -- Serenity
            { spellID = 152173, filter = "CD" },
            -- Touch of Karma
            { spellID = 122470, filter = "CD" },
            -- Touch of Death
            { spellID = 115080, filter = "CD" },
            -- Nimble Brew
            { spellID = 213664, filter = "CD" },
            -- Life Cocoon
            { spellID = 116849, filter = "CD" },
            -- Invoke Xuen, the White Tiger
            { spellID = 123904, filter = "CD" },
            -- Essence Font
            { spellID = 191837, filter = "CD" },
            -- Refreshing Jade Wind
            { spellID = 162530, filter = "CD" },
            -- Fortifying Brew
            { spellID = 115203, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 69179, filter = "CD" },
            -- Escape Artist (Gnome)
            { spellID = 20589, filter = "CD" },
            -- Every Man for Himself (Human)
            { spellID = 59752, filter = "CD" },
            -- Gift of the Naaru (Draenei)
            { spellID = 28880, filter = "CD" },
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD" },
            -- Blood Fury (Orc)
            { spellID = 20572, filter = "CD" },
            -- Cannibalize (Forsaken)
            { spellID = 20577, filter = "CD" },
            -- Quaking Palm (Pandaren)
            { spellID = 107079, filter = "CD" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- War Stomp (Tauren)
            { spellID = 20549, filter = "CD" },
            -- Will of the Forsaken (Forsaken)
            { spellID = 7744, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["PALADIN"] = {
        --[圣骑]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Shield of Vengeance 复仇之盾
            { spellID = 184662, unitID = "player", caster = "player", filter = "BUFF" },
            -- Eye for an Eye 以眼还眼
            { spellID = 205191, unitID = "player", caster = "player", filter = "BUFF" },
            -- Crusade 征伐
            { spellID = 231895, unitID = "player", caster = "player", filter = "BUFF" },
            -- Divine Shield 无敌
            { spellID = 642, unitID = "player", caster = "player", filter = "BUFF" },
            -- Guardian of Ancient Kings 远古列王守卫
            { spellID = 86659, unitID = "player", caster = "player", filter = "BUFF" },
            -- Holy Avenger 神圣复仇者
            { spellID = 105809, unitID = "player", caster = "player", filter = "BUFF" },
            -- Velens future ight 维伦的未来预言
            { spellID = 235966, unitID = "player", caster = "player", filter = "BUFF" },
            -- Avenging Wrath
            { spellID = 31884, unitID = "player", caster = "player", filter = "BUFF" },
            -- Seraphim
            { spellID = 152262, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ardent Defender
            { spellID = 31850, unitID = "player", caster = "player", filter = "BUFF" },
            -- Divine Protection
            { spellID = 498, unitID = "player", caster = "player", filter = "BUFF" },
            -- Rule of Law
            { spellID = 214202, unitID = "player", caster = "player", filter = "BUFF" },
            -- Shield of the Righteous
            { spellID = 132403, unitID = "player", caster = "player", filter = "BUFF" },
            -- Speed of Light
            { spellID = 85499, unitID = "player", caster = "player", filter = "BUFF" },
            -- 神圣马驹
            { spellID = 190784, unitID = "player", caster = "player", filter = "BUFF" },
            -- 正义之火(圣骑天赋)
            { spellID = 209785, unitID = "player", caster = "player", filter = "BUFF" },
            -- 报复
            { spellID = 183436, unitID = "player", caster = "player", filter = "BUFF" },
            -- Selfless Healer
            { spellID = 114250, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Buffs
            -- Infusion of Light
            { spellID = 54149, unitID = "player", caster = "player", filter = "BUFF" },
            -- Divine Purpose
            { spellID = 223819, unitID = "player", caster = "player", filter = "BUFF" },
            -- Grand Crusader
            { spellID = 85416, unitID = "player", caster = "player", filter = "BUFF" },
            -- Final Verdict
            { spellID = 157048, unitID = "player", caster = "player", filter = "BUFF" },
            -- 纳斯雷兹姆的低语(圣骑的橙色披风BUFF)
            { spellID = 207635, unitID = "player", caster = "player", filter = "BUFF" },
            -- 正义裁决
            { spellID = 267611, unitID = "player", caster = "player", filter = "BUFF" },
            -- 异端裁决
            { spellID = 84963, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Eye of Tyr
            { spellID = 209202, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Forbearance
            { spellID = 25771, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Judgment
            { spellID = 197277, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Hand of Hindrance
            { spellID = 183218, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- 处决宣判
            { spellID = 267799, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Trinket Effects
            -- Fel Burn [Empty Drinking Horn]
            { spellID = 184256, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Eye of Tyr
            { spellID = 209202, filter = "CD" },
            -- Cleanse
            { spellID = 4987, filter = "CD" },
            -- Rebuke
            { spellID = 96231, filter = "CD" },
            -- Repentance
            { spellID = 20066, filter = "CD" },
            -- Hammer of Justice
            { spellID = 853, filter = "CD" },
            -- Judgment
            { spellID = 20271, filter = "CD" },
            -- Consecration
            { spellID = 26573, filter = "CD" },
            -- Avenger's Shield
            { spellID = 31935, filter = "CD" },
            -- Bestow Faith
            { spellID = 223306, filter = "CD" },
            -- Light of Dawn
            { spellID = 85222, filter = "CD" },
            -- Holy Prism
            { spellID = 114165, filter = "CD" },
            -- Blessing of Freedom
            { spellID = 1044, filter = "CD" },
            -- Seraphim
            { spellID = 152262, filter = "CD" },
            -- Rule of Law
            { spellID = 214202, filter = "CD" },
            -- Speed of Light
            { spellID = 85499, filter = "CD" },
            -- Divine Protection
            { spellID = 498, filter = "CD", absID = true },
            -- Light's Hammer
            { spellID = 114158, filter = "CD" },
            -- Blinding Light
            { spellID = 115750, filter = "CD" },
            -- Holy Avenger
            { spellID = 105809, filter = "CD" },
            -- Holy Wrath
            { spellID = 210220, filter = "CD" },
            -- Aura Mastery
            { spellID = 31821, filter = "CD" },
            -- Blessing of Sacrifice
            { spellID = 6940, filter = "CD" },
            -- Avenging Wrath
            { spellID = 31884, filter = "CD" },
            -- Ardent Defender
            { spellID = 31850, filter = "CD", absID = true },
            -- Guardian of Ancient Kings
            { spellID = 86659, filter = "CD" },
            -- Blessing of Protection
            { spellID = 1022, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 69179, filter = "CD" },
            -- Every Man for Himself (Human)
            { spellID = 59752, filter = "CD" },
            -- Gift of the Naaru (Draenei)
            { spellID = 28880, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- War Stomp (Tauren)
            { spellID = 20549, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["PRIEST"] = {
        --[牧师]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Voidform
            { spellID = 194249, unitID = "player", caster = "player", filter = "BUFF" },
            -- Dispersion
            { spellID = 47585, unitID = "player", caster = "player", filter = "BUFF" },
            -- Power Infusion
            { spellID = 10060, unitID = "player", caster = "player", filter = "BUFF" },
            -- Apotheosis
            { spellID = 200183, unitID = "player", caster = "player", filter = "BUFF" },
            -- Blessing of T'uure
            { spellID = 196644, unitID = "player", caster = "player", filter = "BUFF" },
            -- Al'maiesh, the Cord of Hope(Holy Word: Serenity)
            { spellID = 211440, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Al'maiesh, the Cord of Hope(Holy Word: Sanctify)
            { spellID = 211443, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Spirit of Redemption
            { spellID = 20711, unitID = "player", caster = "all", filter = "BUFF" },
            -- Divinity
            { spellID = 197030, unitID = "player", caster = "player", filter = "BUFF" },
            -- Power of the Naaru
            { spellID = 196490, unitID = "player", caster = "player", filter = "BUFF" },
            -- Archangel
            { spellID = 197862, unitID = "player", caster = "player", filter = "BUFF" },
            -- Vampiric Embrace
            { spellID = 15286, unitID = "player", caster = "player", filter = "BUFF" },
            -- Focused Will
            { spellID = 45242, unitID = "player", caster = "player", filter = "BUFF" },
            -- Spectral Guise
            { spellID = 112833, unitID = "player", caster = "player", filter = "BUFF" },
            -- Fade
            { spellID = 586, unitID = "player", caster = "player", filter = "BUFF" },
            -- Spirit Shell
            { spellID = 109964, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Power Word: Shield
            { spellID = 17, unitID = "player", caster = "all", filter = "BUFF" },
            -- Renew
            { spellID = 139, unitID = "player", caster = "player", filter = "BUFF" },
            -- Power of the Dark Side
            { spellID = 198069, unitID = "player", caster = "player", filter = "BUFF" },
            -- 空虚心灵
            { spellID = 247226, unitID = "player", caster = "player", filter = "BUFF" },
            -- 全神贯注
            { spellID = 47536, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Buffs
            -- Lingering Insanity
            { spellID = 197937, unitID = "player", caster = "player", filter = "BUFF" },
            -- Shadowy Insight
            { spellID = 124430, unitID = "player", caster = "player", filter = "BUFF" },
            -- Surge of Light
            { spellID = 114255, unitID = "player", caster = "player", filter = "BUFF" },
            -- Surge of Darkness
            { spellID = 87160, unitID = "player", caster = "player", filter = "BUFF" },
            -- Twist of Fate
            { spellID = 123254, unitID = "player", caster = "player", filter = "BUFF" },
            -- 诸罪加身
            { spellID = 198076, unitID = "player", caster = "player", filter = "BUFF" },
            -- 应许之祈
            { spellID = 253437, unitID = "player", caster = "player", filter = "BUFF" },
            -- 希望永存
            { spellID = 253443, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Renew
            { spellID = 139, unitID = "target", caster = "player", filter = "BUFF" },
            -- Prayer of Mending
            { spellID = 41635, unitID = "target", caster = "player", filter = "BUFF" },
            -- Guardian Spirit
            { spellID = 47788, unitID = "target", caster = "player", filter = "BUFF" },
            -- Pain Suppression
            { spellID = 33206, unitID = "target", caster = "player", filter = "BUFF" },
            -- Void Entropy
            { spellID = 155361, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Vampiric Touch
            { spellID = 34914, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Shadow Word: Pain
            { spellID = 589, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Purge the Wicked
            { spellID = 204197, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Light of T'uure
            { spellID = 208065, unitID = "target", caster = "player", filter = "BUFF" },

            -- Trinket Effects
            -- Mark of Doom [Prophecy of Fear]
            { spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.pve_cc) },

            -- Shackle Undead
            { spellID = 9484, unitID = "focus", caster = "player", filter = "DEBUFF" },
            -- Psychic Scream
            { spellID = 8122, unitID = "focus", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Purify
            { spellID = 527, filter = "CD" },
            -- Mass Dispel
            { spellID = 32375, filter = "CD" },
            -- Penance
            { spellID = 47540, filter = "CD" },
            -- Mind Blast
            { spellID = 8092, filter = "CD" },
            -- Power Word: Shield
            { spellID = 17, filter = "CD" },
            -- Holy Fire
            { spellID = 14914, filter = "CD" },
            -- Shadow Word: Death
            { spellID = 32379, filter = "CD" },
            -- Circle of Healing
            { spellID = 204883, filter = "CD" },
            -- Angelic Feather
            { spellID = 121536, filter = "CD" },
            -- Prayer of Mending
            { spellID = 33076, filter = "CD" },
            -- Divine Star
            { spellID = 110744, filter = "CD" },
            -- Archangel
            { spellID = 197862, filter = "CD" },
            -- Holy Word: Sanctify
            { spellID = 34861, filter = "CD" },
            -- Holy Word: Chastise
            { spellID = 88625, filter = "CD" },
            -- Holy Word: Serenity
            { spellID = 2050, filter = "CD" },
            -- Spectral Guise
            { spellID = 112833, filter = "CD" },
            -- Fade
            { spellID = 586, filter = "CD" },
            -- Halo
            { spellID = 120517, filter = "CD" },
            -- Psychic Scream
            { spellID = 8122, filter = "CD" },
            -- Psychic Horror
            { spellID = 64044, filter = "CD" },
            -- Silence
            { spellID = 15487, filter = "CD" },
            -- Leap of Faith
            { spellID = 73325, filter = "CD" },
            -- Power Infusion
            { spellID = 10060, filter = "CD" },
            -- Dispersion
            { spellID = 47585, filter = "CD" },
            -- Desperate Prayer
            { spellID = 19236, filter = "CD" },
            -- Shining Force
            { spellID = 204263, filter = "CD" },
            -- Pain Suppression
            { spellID = 33206, filter = "CD" },
            -- Guardian Spirit
            { spellID = 47788, filter = "CD" },
            -- Power Word: Barrier
            { spellID = 62618, filter = "CD" },
            -- Divine Hymn
            { spellID = 64843, filter = "CD" },
            -- Symbol of Hope
            { spellID = 64901, filter = "CD" },
            -- Apotheosis
            { spellID = 200183, filter = "CD" },
            -- Shadowfiend
            { spellID = 34433, filter = "CD" },
            -- Void Eruption
            { spellID = 228260, filter = "CD" },
            -- Light of T'uure
            { spellID = 208065, filter = "CD" },
            -- Light's Wrath
            { spellID = 207946, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 69179, filter = "CD" },
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD" },
            -- Cannibalize (Forsaken)
            { spellID = 20577, filter = "CD" },
            -- Darkflight (Worgen)
            { spellID = 68992, filter = "CD" },
            -- Escape Artist (Gnome)
            { spellID = 20589, filter = "CD" },
            -- Every Man for Himself (Human)
            { spellID = 59752, filter = "CD" },
            -- Gift of the Naaru (Draenei)
            { spellID = 28880, filter = "CD" },
            -- Quaking Palm (Pandaren)
            { spellID = 107079, filter = "CD" },
            -- Rocket Jump (Goblin)
            { spellID = 69070, filter = "CD" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- War Stomp (Tauren)
            { spellID = 20549, filter = "CD" },
            -- Will of the Forsaken (Forsaken)
            { spellID = 7744, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["ROGUE"] = {
        --[盗贼]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Slice and Dice
            { spellID = 5171, unitID = "player", caster = "player", filter = "BUFF" },
            -- Adrenaline Rush
            { spellID = 13750, unitID = "player", caster = "player", filter = "BUFF" },
            -- Evasion
            { spellID = 5277, unitID = "player", caster = "player", filter = "BUFF" },
            -- Envenom
            { spellID = 32645, unitID = "player", caster = "player", filter = "BUFF" },
            -- Shadow Dance
            { spellID = 185313, unitID = "player", caster = "player", filter = "BUFF" },
            -- Symbols of Death
            { spellID = 212283, unitID = "player", caster = "player", filter = "BUFF" },
            -- Shadow Blades
            { spellID = 121471, unitID = "player", caster = "player", filter = "BUFF" },
            -- Curse of the Dreadblades
            { spellID = 208245, unitID = "player", caster = "player", filter = "DEBUFF" },
            -- Alacrity
            { spellID = 193539, unitID = "player", caster = "player", filter = "BUFF" },
            -- Master of Subtlety
            { spellID = 31665, unitID = "player", caster = "player", filter = "BUFF" },
            -- Cloak of Shadows
            { spellID = 31224, unitID = "player", caster = "player", filter = "BUFF" },
            -- Vanish
            { spellID = 1856, unitID = "player", caster = "player", filter = "BUFF" },
            -- Combat Readiness
            { spellID = 74001, unitID = "player", caster = "player", filter = "BUFF" },
            -- Combat Insight
            { spellID = 74002, unitID = "player", caster = "player", filter = "BUFF" },
            -- Shadow Reflection
            { spellID = 152151, unitID = "player", caster = "player", filter = "BUFF" },
            -- Cheating Death
            { spellID = 45182, unitID = "player", caster = "player", filter = "BUFF" },
            -- Blade Flurry
            { spellID = 13877, unitID = "player", caster = "player", filter = "BUFF" },
            -- Burst of Speed
            { spellID = 108212, unitID = "player", caster = "player", filter = "BUFF" },
            -- Sprint
            { spellID = 2983, unitID = "player", caster = "player", filter = "BUFF" },
            -- Feint
            { spellID = 1966, unitID = "player", caster = "player", filter = "BUFF" },
            -- Subterfuge
            { spellID = 115192, unitID = "player", caster = "player", filter = "BUFF" },
            -- 深谋远虑
            { spellID = 193641, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Buffs
            -- Jolly Roger
            { spellID = 199603, unitID = "player", caster = "player", filter = "BUFF" },
            -- Grand Melee
            { spellID = 193358, unitID = "player", caster = "player", filter = "BUFF" },
            -- True Bearing
            { spellID = 193359, unitID = "player", caster = "player", filter = "BUFF" },
            -- Buried Treasure
            { spellID = 199600, unitID = "player", caster = "player", filter = "BUFF" },
            -- Broadsides
            { spellID = 193356, unitID = "player", caster = "player", filter = "BUFF" },
            -- Shark Infested Waters
            { spellID = 193357, unitID = "player", caster = "player", filter = "BUFF" },
            -- 遇刺者之血
            { spellID = 192925, unitID = "player", caster = "player", filter = "BUFF" },
            -- 终极剔骨
            { spellID = 197496, unitID = "player", caster = "player", filter = "BUFF" },

            -- Item Sets
            -- Deathly Shadows (T18)
            { spellID = 188700, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Rupture
            { spellID = 1943, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Garrote
            { spellID = 703, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Gouge
            { spellID = 1776, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Hemorrhage
            { spellID = 16511, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Find Weakness
            { spellID = 91021, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Vendetta
            { spellID = 79140, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Nightblade
            { spellID = 195452, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Ghostly Strike
            { spellID = 196937, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Deadly Poison
            { spellID = 2818, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Crippling Poison
            { spellID = 3409, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Wound Poison
            { spellID = 8680, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.pve_cc) },

            -- Blind
            { spellID = 2094, unitID = "focus", caster = "player", filter = "DEBUFF" },
            -- Sap
            { spellID = 6770, unitID = "focus", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Stealth
            { spellID = 1784, filter = "CD" },
            -- Kick
            { spellID = 1766, filter = "CD" },
            -- Gouge
            { spellID = 1776, filter = "CD" },
            -- Kidney Shot
            { spellID = 408, filter = "CD" },
            -- Death from Above
            { spellID = 152150, filter = "CD" },
            -- Sprint
            { spellID = 2983, filter = "CD" },
            -- Shadow Dance
            { spellID = 185313, filter = "CD" },
            -- Marked for Death
            { spellID = 137619, filter = "CD" },
            -- Killing Spree
            { spellID = 51690, filter = "CD" },
            -- Vendetta
            { spellID = 79140, filter = "CD" },
            -- Shadow Reflection
            { spellID = 152151, filter = "CD" },
            -- Combat Readiness
            { spellID = 74001, filter = "CD" },
            -- Vanish
            { spellID = 1856, filter = "CD" },
            -- Adrenaline Rush
            { spellID = 13750, filter = "CD" },
            -- Between the Eyes
            { spellID = 199804, filter = "CD" },
            -- Riposte
            { spellID = 199754, filter = "CD" },
            -- Cloak of Shadows
            { spellID = 31224, filter = "CD" },
            -- Grappling Hook
            { spellID = 195457, filter = "CD" },
            -- Crimson Vial
            { spellID = 185311, filter = "CD" },
            -- Cannonball Barrage
            { spellID = 185767, filter = "CD" },
            -- Garrote
            { spellID = 703, filter = "CD" },
            -- Exsanguinate
            { spellID = 200806, filter = "CD" },
            -- Shadowstep
            { spellID = 36554, filter = "CD" },
            -- Evasion
            { spellID = 5277, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 69179, filter = "CD" },
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD" },
            -- Blood Fury (Orc)
            { spellID = 20572, filter = "CD" },
            -- Cannibalize (Forsaken)
            { spellID = 20577, filter = "CD" },
            -- Darkflight (Worgen)
            { spellID = 68992, filter = "CD" },
            -- Escape Artist (Gnome)
            { spellID = 20589, filter = "CD" },
            -- Every Man for Himself (Human)
            { spellID = 59752, filter = "CD" },
            -- Quaking Palm (Pandaren)
            { spellID = 107079, filter = "CD" },
            -- Rocket Jump (Goblin)
            { spellID = 69070, filter = "CD" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- Will of the Forsaken (Forsaken)
            { spellID = 7744, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["SHAMAN"] = {
        --[萨满]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Elemental Mastery
            { spellID = 16166, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ascendance
            { spellID = 114049, unitID = "player", caster = "player", filter = "BUFF" },
            -- Spiritwalker's Grace
            { spellID = 79206, unitID = "player", caster = "player", filter = "BUFF" },
            -- Unleash Life
            { spellID = 73685, unitID = "player", caster = "player", filter = "BUFF" },
            -- Healing Stream Totem
            { spellID = 5394, filter = "ICD", trigger = "NONE", duration = 15 },
            -- Doom Winds
            { spellID = 204945, unitID = "player", caster = "player", filter = "BUFF" },
            -- Landslide
            { spellID = 202004, unitID = "player", caster = "player", filter = "BUFF" },
            -- Flametongue
            { spellID = 194084, unitID = "player", caster = "player", filter = "BUFF" },
            -- Stone Bulwark
            { spellID = 114893, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ancestral Guidance
            { spellID = 108281, unitID = "player", caster = "player", filter = "BUFF" },
            -- Astral Shift
            { spellID = 108271, unitID = "player", caster = "player", filter = "BUFF" },
            -- Fury of Air
            { spellID = 197211, unitID = "player", caster = "player", filter = "BUFF" },
            -- Windsong
            { spellID = 201898, unitID = "player", caster = "player", filter = "BUFF" },
            -- 精通图腾
            { spellID = 210652, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Buffs
            -- Lava Surge
            { spellID = 77762, unitID = "player", caster = "player", filter = "BUFF" },
            -- Elemental Blast
            { spellID = 118522, unitID = "player", caster = "player", filter = "BUFF" },
            -- Tidal Waves
            { spellID = 53390, unitID = "player", caster = "player", filter = "BUFF" },
            -- Queen Ascendant
            { spellID = 207288, unitID = "player", caster = "player", filter = "BUFF" },
            -- Stormlash
            { spellID = 195222, unitID = "player", caster = "player", filter = "BUFF" },
            -- Stormbringer
            { spellID = 201846, unitID = "player", caster = "player", filter = "BUFF" },
            -- Crash Lightning
            { spellID = 187878, unitID = "player", caster = "player", filter = "BUFF" },
            -- 波动
            { spellID = 216251, unitID = "player", caster = "player", filter = "BUFF" },
            -- 大地盾图腾
            { spellID = 201633, unitID = "player", caster = "player", filter = "BUFF" },
            -- 暴雨图腾
            { spellID = 157504, unitID = "player", caster = "player", filter = "BUFF" },
            -- 元素冲击
            { spellID = 173184, unitID = "player", caster = "player", filter = "BUFF" },
            -- 漩涡之力
            { spellID = 191877, unitID = "player", caster = "player", filter = "BUFF" },
            -- 元素集中
            { spellID = 16246, unitID = "player", caster = "player", filter = "BUFF" },
            -- 疾风
            { spellID = 198293, unitID = "player", caster = "all", filter = "BUFF" },
            -- Gathering Storms
            { spellID = 198300, unitID = "player", caster = "player", filter = "BUFF" },
            -- Frostbrand
            { spellID = 196834, unitID = "player", caster = "player", filter = "BUFF" },
            -- 2T20
            { spellID = 246729, unitID = "player", caster = "player", filter = "BUFF" },
            -- 4T20
            { spellID = 246771, unitID = "player", caster = "player", filter = "BUFF" },
            -- 2T21
            { spellID = 252141, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Earth Shield
            { spellID = 204288, unitID = "target", caster = "player", filter = "BUFF" },
            -- Riptide
            { spellID = 61295, unitID = "target", caster = "player", filter = "BUFF" },
            -- Stormstrike
            { spellID = 17364, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Flame Shock
            { spellID = 188389, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Frost Shock
            { spellID = 196840, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Earthgrab
            { spellID = 64695, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Earthen Spike
            { spellID = 188089, unitID = "target", caster = "player", filter = "DEBUFF" },

            -- Trinket Effects
            -- Mark of Doom [Prophecy of Fear]
            { spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.pve_cc) },

            { spellID = 51514, unitID = "focus", caster = "player", filter = "DEBUFF" }, -- Hex 妖术
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Cleanse Spirit
            { spellID = 51886, filter = "CD" },
            -- Wind Shear
            { spellID = 57994, filter = "CD" },
            -- Hex
            { spellID = 51514, filter = "CD" },
            -- Riptide
            { spellID = 61295, filter = "CD" },
            -- Lava Burst
            { spellID = 51505, filter = "CD" },
            -- Healing Rain
            { spellID = 73920, filter = "CD" },
            -- Elemental Blast
            { spellID = 117014, filter = "CD" },
            -- Stormstrike
            { spellID = 17364, filter = "CD" },
            -- Cloudburst Totem
            { spellID = 157153, filter = "CD" },
            -- Thunderstorm
            { spellID = 51490, filter = "CD" },
            -- Earthbind Totem
            { spellID = 2484, filter = "CD" },
            -- Stone Bulwark Totem
            { spellID = 108270, filter = "CD" },
            -- Astral Shift
            { spellID = 108271, filter = "CD" },
            -- Feral Spirit
            { spellID = 51533, filter = "CD" },
            -- Spiritwalker's Grace
            { spellID = 79206, filter = "CD" },
            -- Ancestral Guidance
            { spellID = 108281, filter = "CD" },
            -- Ascendance
            { spellID = 114049, filter = "CD" },
            -- Feral Lunge
            { spellID = 196884, filter = "CD" },
            -- Flametongue
            { spellID = 193796, filter = "CD" },
            -- Lightning Surge Totem
            { spellID = 192058, filter = "CD" },
            -- Crash Lightning
            { spellID = 187874, filter = "CD" },
            -- Doom Winds
            { spellID = 204945, filter = "CD" },
            -- Windsong
            { spellID = 201898, filter = "CD" },
            -- Sundering
            { spellID = 197214, filter = "CD" },
            -- 狂风图腾
            { spellID = 192077, filter = "CD" },
            -- 女王之赐
            { spellID = 207778, filter = "CD" },
            -- 大地盾图腾
            { spellID = 198838, filter = "CD" },
            -- 奔涌之流
            { spellID = 197995, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD" },
            -- Blood Fury (Orc)
            { spellID = 20572, filter = "CD" },
            -- Gift of the Naaru (Draenei)
            { spellID = 28880, filter = "CD" },
            -- Quaking Palm (Pandaren)
            { spellID = 107079, filter = "CD" },
            -- Rocket Jump (Goblin)
            { spellID = 69070, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- War Stomp (Tauren)
            { spellID = 20549, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["WARLOCK"] = {
        --[术士]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Unending Resolve
            { spellID = 104773, unitID = "player", caster = "player", filter = "BUFF" },
            -- Soul Harvest
            { spellID = 196098, unitID = "player", caster = "player", filter = "BUFF" },
            -- Empowered Life Tap
            { spellID = 235156, unitID = "player", caster = "player", filter = "BUFF" },
            -- Soul Swap
            { spellID = 86211, unitID = "player", caster = "player", filter = "BUFF" },
            -- Dark Regeneration
            { spellID = 108359, unitID = "player", caster = "player", filter = "BUFF" },
            -- Burning Rush
            { spellID = 111400, unitID = "player", caster = "player", filter = "BUFF" },
            -- Sacrificial Pact
            { spellID = 108416, unitID = "player", caster = "player", filter = "BUFF" },
            -- Healthstone
            { spellID = 6262, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Buffs
            -- Backdraft
            { spellID = 117828, unitID = "player", caster = "player", filter = "BUFF" },
            -- Grimore of Synergy
            { spellID = 171982, unitID = "player", caster = "player", filter = "BUFF" },
            -- 逆风收割者
            { spellID = 216708, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Self
            -- Enslave Demon
            { spellID = 1098, unitID = "target", caster = "player", filter = "DEBUFF" },

            -- Trinket Effects
            -- Mark of Doom [Prophecy of Fear]
            { spellID = 184073, unitID = "target", caster = "player", filter = "DEBUFF" },

            -- Havoc
            { spellID = 80240, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Doom
            { spellID = 603, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Agony
            { spellID = 980, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Corruption
            { spellID = 146739, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Seed of Corruption
            { spellID = 27243, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Immolate
            { spellID = 348, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Unstable Affliction
            { spellID = 233490, unitID = "target", caster = "player", filter = "DEBUFF", absID = true },
            -- Unstable Affliction 2nd
            { spellID = 233496, unitID = "target", caster = "player", filter = "DEBUFF", absID = true },
            -- Unstable Affliction 3rd
            { spellID = 233497, unitID = "target", caster = "player", filter = "DEBUFF", absID = true },
            -- Unstable Affliction 4th
            { spellID = 233498, unitID = "target", caster = "player", filter = "DEBUFF", absID = true },
            -- Unstable Affliction 5th
            { spellID = 233499, unitID = "target", caster = "player", filter = "DEBUFF", absID = true },
            -- Siphon Life
            { spellID = 63106, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Soul Effigy
            { spellID = 205178, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Phantom Singularity
            { spellID = 205179, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Haunt
            { spellID = 48181, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Shadowflame
            { spellID = 205181, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Eradication
            { spellID = 196414, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.pve_cc) },

            -- Banish
            { spellID = 710, unitID = "focus", caster = "player", filter = "DEBUFF" },
            -- Fear
            { spellID = 118699, unitID = "focus", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Devour Magic (Felhunter)
            { spellID = 19505, filter = "CD" },
            -- Spell Lock (Felhunter)
            { spellID = 19647, filter = "CD" },
            -- Shadowfury
            { spellID = 30283, filter = "CD" },
            -- Howl of Terror
            { spellID = 5484, filter = "CD" },
            -- Mortal Coil
            { spellID = 6789, filter = "CD" },
            -- Demonic Circle
            { spellID = 48018, filter = "CD" },
            -- Felstorm
            { spellID = 89751, filter = "CD" },
            -- Cataclysm
            { spellID = 152108, filter = "CD" },
            -- Soul Harvest
            { spellID = 196098, filter = "CD" },
            -- Grimoire of Service
            { spellID = 108501, filter = "CD" },
            -- Shadowflame
            { spellID = 205181, filter = "CD" },
            -- Summon Darkglare
            { spellID = 205180, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 69179, filter = "CD" },
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD" },
            -- Blood Fury (Orc)
            { spellID = 20572, filter = "CD" },
            -- Cannibalize (Forsaken)
            { spellID = 20577, filter = "CD" },
            -- Darkflight (Worgen)
            { spellID = 68992, filter = "CD" },
            -- Escape Artist (Gnome)
            { spellID = 20589, filter = "CD" },
            -- Every Man for Himself (Human)
            { spellID = 59752, filter = "CD" },
            -- Rocket Jump (Goblin)
            { spellID = 69070, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- Will of the Forsaken (Forsaken)
            { spellID = 7744, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["WARRIOR"] = {
        --[战士]
        {
            Name = "P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.player_buff_icon) },

            -- Shield Wall
            { spellID = 871, unitID = "player", caster = "player", filter = "BUFF" },
            -- Last Stand
            { spellID = 12975, unitID = "player", caster = "player", filter = "BUFF" },
            -- Enraged Regeneration
            { spellID = 184364, unitID = "player", caster = "player", filter = "BUFF" },
            -- Shield Block
            { spellID = 2565, unitID = "player", caster = "player", filter = "BUFF" },
            -- Spell Reflection
            { spellID = 23920, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ravager
            { spellID = 152277, unitID = "player", caster = "player", filter = "BUFF", spec = 3 },
            -- Die by the Sword
            { spellID = 118038, unitID = "player", caster = "player", filter = "BUFF" },
            -- Berserker Rage
            { spellID = 18499, unitID = "player", caster = "player", filter = "BUFF" },
            -- Avatar
            { spellID = 107574, unitID = "player", caster = "player", filter = "BUFF" },
            -- Bloodbath
            { spellID = 12292, unitID = "player", caster = "player", filter = "BUFF" },
            -- Recklesness
            { spellID = 1719, unitID = "player", caster = "player", filter = "BUFF" },
            -- Victorious
            { spellID = 32216, unitID = "player", caster = "player", filter = "BUFF" },
            --最后通牒
            { spellID = 122510, unitID = "player", caster = "player", filter = "BUFF" },
            -- 报复
            { spellID = 202574, unitID = "player", caster = "player", filter = "BUFF" },
            { spellID = 202573, unitID = "player", caster = "player", filter = "BUFF" },
            -- 无视痛苦
            { spellID = 190456, unitID = "player", caster = "player", filter = "BUFF" },
            --橙戒石之心
            { spellID = 225947, unitID = "player", caster = "player", filter = "BUFF" },
            --维库之力
            { spellID = 188783, unitID = "player", caster = "player", filter = "BUFF" },
            --战争疤痕
            { spellID = 200954, unitID = "player", caster = "player", filter = "BUFF" },
            --狂暴冲锋
            { spellID = 202225, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "P_PROC_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.player_proc_icon) },

            -- Sudden Death
            { spellID = 52437, unitID = "player", caster = "player", filter = "BUFF" },
            -- Raging Blow!
            { spellID = 131116, unitID = "player", caster = "player", filter = "BUFF" },
            -- Meat Cleaver
            { spellID = 85739, unitID = "player", caster = "player", filter = "BUFF" },
            -- Enrage
            { spellID = 184362, unitID = "player", caster = "player", filter = "BUFF" },
            -- 怒火聚焦
            { spellID = 207982, unitID = "player", caster = "player", filter = "BUFF" },
            -- 重伤
            { spellID = 115767, unitID = "player", caster = "player", filter = "BUFF" },
            -- 巨人打击
            { spellID = 208086, unitID = "player", caster = "player", filter = "BUFF" },
            -- 狂暴复兴
            { spellID = 202289, unitID = "player", caster = "player", filter = "BUFF" },
            -- 摧拉枯朽
            { spellID = 215570, unitID = "player", caster = "player", filter = "BUFF" },
            -- 致死
            { spellID = 115804, unitID = "player", caster = "player", filter = "BUFF" },
            -- 顺劈斩
            { spellID = 188923, unitID = "player", caster = "player", filter = "BUFF" },
            -- 粉碎防御
            { spellID = 209706, unitID = "player", caster = "player", filter = "BUFF" },
            -- 暴风之眼
            { spellID = 248145, unitID = "player", caster = "player", filter = "BUFF" },
            -- 杀心骤起
            { spellID = 248621, unitID = "player", caster = "player", filter = "BUFF" },
            -- 投入战斗
            { spellID = 202602, unitID = "player", caster = "player", filter = "BUFF" },
            -- 狂暴
            { spellID = 200953, unitID = "player", caster = "player", filter = "BUFF" },
            -- 血腥气息
            { spellID = 206333, unitID = "player", caster = "player", filter = "BUFF" },
            -- 奥丁的勇士
            { spellID = 200986, unitID = "player", caster = "player", filter = "BUFF" },
            -- 狂乱
            { spellID = 202539, unitID = "player", caster = "player", filter = "BUFF" },
            --暴乱狂战士
            { spellID = 215572, unitID = "player", caster = "player", filter = "BUFF" },
            --巨龙怒吼
            { spellID = 118000, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "T_DEBUFF_ICON",
            Direction = "RIGHT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.MidIconSize,
            Position = { unpack(FilgerPositions.target_debuff_icon) },

            -- Rend
            { spellID = 772, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Colossus Smash
            { spellID = 167105, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- Hamstring
            { spellID = 1715, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Demoralizing Shout
            { spellID = 1160, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Trinket Effects
            -- Fel Burn [Empty Drinking Horn]
            { spellID = 184256, unitID = "target", caster = "player", filter = "DEBUFF" },
            -- 刽子手的精准
            { spellID = 242188, unitID = "target", caster = "player", filter = "DEBUFF" },
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
            Position = { unpack(FilgerPositions.cooldown) },

            -- Self
            -- Pummel
            { spellID = 6552, filter = "CD" },
            -- Shield Slam
            { spellID = 23922, filter = "CD" },
            -- Shockwave
            { spellID = 46968, filter = "CD" },
            -- Storm Bolt
            { spellID = 107570, filter = "CD" },
            -- Thunder Clap
            { spellID = 6343, filter = "CD" },
            -- Taunt
            { spellID = 355, filter = "CD" },
            -- Colossus Smash
            { spellID = 167105, filter = "CD" },
            -- Charge
            { spellID = 100, filter = "CD" },
            -- Spell Reflection
            { spellID = 23920, filter = "CD" },
            -- Intervene
            { spellID = 3411, filter = "CD" },
            -- Berserker Rage
            { spellID = 18499, filter = "CD" },
            -- Heroic Leap
            { spellID = 6544, filter = "CD" },
            -- Demoralizing Shout
            { spellID = 1160, filter = "CD" },
            -- Enraged Regeneration
            { spellID = 184364, filter = "CD" },
            -- Ravager
            { spellID = 152277, filter = "CD" },
            -- Intimidating Shout
            { spellID = 5246, filter = "CD" },
            -- Last Stand
            { spellID = 12975, filter = "CD" },
            -- Rallying Cry
            { spellID = 97462, filter = "CD" },
            -- Shield Wall
            { spellID = 871, filter = "CD" },
            -- Odyn's Fury
            { spellID = 205545, filter = "CD" },
            -- Battle Cry
            { spellID = 1719, filter = "CD" },
            -- Avatar
            { spellID = 107574, filter = "CD" },

            -- PvP
            -- Honorable Medallion
            { spellID = 195710, filter = "CD" },

            -- Racial
            -- Arcane Torrent (Blood Elf)
            { spellID = 69179, filter = "CD" },
            -- Berserking (Troll)
            { spellID = 26297, filter = "CD" },
            -- Blood Fury (Orc)
            { spellID = 20572, filter = "CD" },
            -- Cannibalize (Forsaken)
            { spellID = 20577, filter = "CD" },
            -- Darkflight (Worgen)
            { spellID = 68992, filter = "CD" },
            -- Escape Artist (Gnome)
            { spellID = 20589, filter = "CD" },
            -- Every Man for Himself (Human)
            { spellID = 59752, filter = "CD" },
            -- Gift of the Naaru (Draenei)
            { spellID = 28880, filter = "CD" },
            -- Quaking Palm (Pandaren)
            { spellID = 107079, filter = "CD" },
            -- Rocket Jump (Goblin)
            { spellID = 69070, filter = "CD" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, filter = "CD" },
            -- Stoneform (Dwarf)
            { spellID = 20594, filter = "CD" },
            -- War Stomp (Tauren)
            { spellID = 20549, filter = "CD" },
            -- Will of the Forsaken (Forsaken)
            { spellID = 7744, filter = "CD" },

            -- Items
            -- Back
            { slotID = 15, filter = "CD" },
            -- Belt
            { slotID = 6, filter = "CD" },
            -- Gloves
            { slotID = 10, filter = "CD" },
            -- Neck
            { slotID = 2, filter = "CD" },
            -- Rings
            { slotID = 11, filter = "CD" },
            { slotID = 12, filter = "CD" },
            -- Trinkets
            { slotID = 13, filter = "CD" },
            { slotID = 14, filter = "CD" },
        },
    },
    ["ALL"] = {
        --[通用]
        {
            Name = "SPECIAL_P_BUFF_ICON",
            Direction = "LEFT",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.IconSize,
            Position = { unpack(FilgerPositions.special_proc_icon) },

            { spellID = 215294, unitID = "player", caster = "player", filter = "BUFF" }, -- 召气雾云
            { spellID = 215632, unitID = "player", caster = "player", filter = "BUFF" }, -- 专注闪电
            { spellID = 215956, unitID = "player", caster = "player", filter = "BUFF" }, -- 号角

            -- Ashran 阿什兰
            { spellID = 168506, unitID = "player", caster = "all", filter = "BUFF" }, -- Ancient Artifact
            { spellID = 169373, unitID = "player", caster = "all", filter = "BUFF" }, -- Boulder Shield
            { spellID = 171250, unitID = "player", caster = "all", filter = "BUFF" }, -- Scroll of Speed
            { spellID = 171249, unitID = "player", caster = "all", filter = "BUFF" }, -- Scroll of Protection
            { spellID = 161495, unitID = "player", caster = "all", filter = "BUFF" }, -- Star Root Tuber
            { spellID = 171725, unitID = "player", caster = "all", filter = "BUFF" }, -- Wand of Lightning Shield

            -- Potions: Legion
            -- 抗魔联军（力）
            { spellID = 242583, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- 抗魔联军（敏）
            { spellID = 242584, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- 抗魔联军（智）
            { spellID = 242586, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- 抗魔联军（临机）
            { spellID = 243096, unitID = "player", caster = "player", filter = "BUFF", absID = true },

            { spellID = 188029, unitID = "player", caster = "player", filter = "BUFF" }, -- Unbending Potion 不屈药水
            { spellID = 188330, unitID = "player", caster = "player", filter = "BUFF" }, -- Potion of the Old War 上古战神药水
            { spellID = 127843, unitID = "player", caster = "player", filter = "BUFF" }, -- Potion of the Deadly GRrace 致命优雅药水
            { spellID = 229206, unitID = "player", caster = "player", filter = "BUFF" }, -- 延时之力
            -- Potions: Draenor
            { spellID = 156423, unitID = "player", caster = "player", filter = "BUFF" }, -- Draenic Agility Potion
            { spellID = 156426, unitID = "player", caster = "player", filter = "BUFF" }, -- Draenic Intellect Potion
            { spellID = 156428, unitID = "player", caster = "player", filter = "BUFF" }, -- Draenic Strength Potion
            { spellID = 156430, unitID = "player", caster = "player", filter = "BUFF" }, -- Draenic Armor Potion
            -- Potions: Pandaria
            { spellID = 105697, unitID = "player", caster = "player", filter = "BUFF" }, -- Virmen's Bite (Agility)
            { spellID = 105706, unitID = "player", caster = "player", filter = "BUFF" }, -- Potion of Mogu Power (Strength)
            { spellID = 105702, unitID = "player", caster = "player", filter = "BUFF" }, -- Potion of the Jade Serpent (Intellect)
            { spellID = 125282, unitID = "player", caster = "player", filter = "BUFF" }, -- Kafa Press (Haste)
            -- Potions: Miscellaneous
            { spellID = 11392, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Invisibility Potion
            { spellID = 105707, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Darkwater Potion
            { spellID = 175833, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Draenic Invisibility Potion
            { spellID = 175790, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Draenic Swiftness Potion
            { spellID = 135855, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Potion of Luck
            { spellID = 80263, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Potion of Treasure Finding
            { spellID = 2379, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Swiftness Potion
            -- Potions: Brawler's Guild
            { spellID = 176107, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Brawler's Draenic Agility Potion
            { spellID = 176108, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Brawler's Draenic Intellect Potion
            { spellID = 176109, unitID = "player", caster = "player", filter = "BUFF", absID = true }, -- Brawler's Draenic Strength Potion

            -- Raid Amplifiers: General
            { spellID = 90355, unitID = "player", caster = "all", filter = "BUFF" }, -- Ancient Hysteria 远古狂乱
            { spellID = 176030, unitID = "player", caster = "all", filter = "BUFF" }, -- Void Zephyr  虚空之风
            { spellID = 178207, unitID = "player", caster = "all", filter = "BUFF" }, -- Drums of Fury 狂怒战鼓
            { spellID = 2825, unitID = "player", caster = "all", filter = "BUFF" }, -- Bloodlust 嗜血
            { spellID = 32182, unitID = "player", caster = "all", filter = "BUFF" }, -- Heroism 英勇
            { spellID = 80353, unitID = "player", caster = "all", filter = "BUFF" }, -- Time Warp 时间扭曲

            -- Legendaries
            -- Norgannon's Foresight [Boots]
            { spellID = 236380, unitID = "player", caster = "all", filter = "BUFF" },
            -- Zann'esu Journey [Waist]
            { spellID = 226852, unitID = "player", caster = "all", filter = "BUFF" },

            -- Professions
            { spellID = 126389, unitID = "player", caster = "all", filter = "BUFF", absID = true }, -- Goblin Glider [Goblin Glider Kit] 降落伞
            { spellID = 54861, unitID = "player", caster = "player", filter = "BUFF" }, -- Nitro Boosts 火箭靴
            { spellID = 55001, unitID = "player", caster = "player", filter = "BUFF" }, -- Parachute 降落伞
            { spellID = 173260, unitID = "player", caster = "all", filter = "BUFF", absID = true }, -- Shieldtronic Shield
            { spellID = 156136, unitID = "player", caster = "all", filter = "BUFF", absID = true }, -- Stealth Field [Stealthman 54]

            -- Racial
            -- Berserking (Troll)
            { spellID = 26297, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Blood Fury (Orc)
            { spellID = 20572, unitID = "player", caster = "player", filter = "BUFF" },
            -- Darkflight (Worgen)
            { spellID = 68992, unitID = "player", caster = "player", filter = "BUFF" },
            -- Gift of the Naaru (Draenei)
            { spellID = 28880, unitID = "player", caster = "all", filter = "BUFF" },
            -- Shadowmeld (Night Elf)
            { spellID = 58984, unitID = "player", caster = "player", filter = "BUFF" },
            -- Stoneform (Dwarf)
            { spellID = 65116, unitID = "player", caster = "player", filter = "BUFF" },

            -- Zone Buffs
            -- Inactive (Battlegrounds)
            { spellID = 43681, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- Speed (Battlegrounds)
            { spellID = 23451, unitID = "player", caster = "all", filter = "BUFF", absID = true },
            -- Fel Sludge (Tanaan Jungle)
            { spellID = 188520, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- Strange Feeling (Brawler's Guild)
            { spellID = 134851, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },

            -- Damage Reduction
            -- Life Cocoon
            { spellID = 116849, unitID = "player", caster = "all", filter = "BUFF" },
            -- Guardian Spirit
            { spellID = 47788, unitID = "player", caster = "all", filter = "BUFF" },
            -- Pain Suppression
            { spellID = 33206, unitID = "player", caster = "all", filter = "BUFF" },
            -- Ironbark
            { spellID = 102342, unitID = "player", caster = "all", filter = "BUFF" },
            -- Aura Mastery
            { spellID = 31821, unitID = "player", caster = "all", filter = "BUFF" },
            -- Blessing of Protection
            { spellID = 1022, unitID = "player", caster = "all", filter = "BUFF" },
            -- Blessing of Sacrifice
            { spellID = 6940, unitID = "player", caster = "all", filter = "BUFF" },
            -- Blessing of Spellwarding
            { spellID = 204018, unitID = "player", caster = "all", filter = "BUFF" },
            -- Vigilance
            { spellID = 114030, unitID = "player", caster = "all", filter = "BUFF" },
            -- Rallying Cry
            { spellID = 97463, unitID = "player", caster = "all", filter = "BUFF" },

            -- Other
            -- Symbol of Hope
            { spellID = 64901, unitID = "player", caster = "all", filter = "BUFF" },
            -- Innervate
            { spellID = 29166, unitID = "player", caster = "all", filter = "BUFF" },
            -- Grounding Totem
            { spellID = 8178, unitID = "player", caster = "all", filter = "BUFF" },
            -- Tiger's Lust
            { spellID = 116841, unitID = "player", caster = "all", filter = "BUFF" },
            -- Body and Soul
            { spellID = 65081, unitID = "player", caster = "all", filter = "BUFF" },
            -- Angelic Feather
            { spellID = 121557, unitID = "player", caster = "all", filter = "BUFF" },
            -- Stampeding Roar
            { spellID = 77764, unitID = "player", caster = "all", filter = "BUFF" },
            -- Blessing of Freedom
            { spellID = 1044, unitID = "player", caster = "all", filter = "BUFF" },
            -- Tricks of the Trade
            { spellID = 57934, unitID = "player", caster = "all", filter = "BUFF" },
            -- Slow Fall
            { spellID = 130, unitID = "player", caster = "all", filter = "BUFF" },
            -- Levitate
            { spellID = 1706, unitID = "player", caster = "all", filter = "BUFF" },

            -- Trinkets
            -- Alchemy Stones
            -- Strength
            { spellID = 60229, unitID = "player", caster = "player", filter = "BUFF" },
            -- Agility
            { spellID = 60233, unitID = "player", caster = "player", filter = "BUFF" },
            -- Intellect
            { spellID = 60234, unitID = "player", caster = "player", filter = "BUFF" },
            -- Hallow's End
            -- Drunken Evasiveness (Bonus Armor, Use) [Brawler's Statue]
            { spellID = 127967, unitID = "player", caster = "player", filter = "BUFF" },
            -- Reflection of Torment (Attack Power, Proc) [Coren's Cold Chromium]
            { spellID = 127928, unitID = "player", caster = "player", filter = "BUFF" },
            -- Now is the time! (Spell Power, Proc) [Mithril Wristwatch]
            { spellID = 127923, unitID = "player", caster = "player", filter = "BUFF" },
            -- Essence of Life (Haste, Proc) [Thousand-Year Pickled Egg]
            { spellID = 127915, unitID = "player", caster = "player", filter = "BUFF" },
            -- 贾辛的诡计
            { spellID = 224149, unitID = "player", caster = "player", filter = "BUFF" },
            -- PvP Trinkets
            -- Savage Fortitude (Health, Use) [Battlemaster]
            { spellID = 181706, unitID = "player", caster = "player", filter = "BUFF" },
            -- Surge of Victory (Strength, Proc)
            { spellID = 190025, unitID = "player", caster = "player", filter = "BUFF" },
            -- Rapid Adaptation (Versatility, Use)
            { spellID = 170397, unitID = "player", caster = "player", filter = "BUFF" },
            -- Tanking
            -- Cunning of the Deceiver (Special, Proc) [Shifting Cosmic Sliver]
            { spellID = 242628, unitID = "player", caster = "player", filter = "BUFF" },
            -- Living Carapace (Damage Reduction, Use) [Animated Exoskeleton]
            { spellID = 225033, unitID = "player", caster = "player", filter = "BUFF" },
            -- Vampiric Aura (Leech, Use) [Fang of Tichcondrius]
            { spellID = 225130, unitID = "player", caster = "player", filter = "BUFF" },
            -- Infernal Contract (Damage Reduction, Use) [Infernal Contract]
            { spellID = 225140, unitID = "player", caster = "player", filter = "BUFF" },
            -- Sands of Time (DoT, Proc) [Royal Dagger Haft]
            { spellID = 225720, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shadowy Reflection (Damage Reduction, Proc) [Phantasmal Echo]
            { spellID = 222479, unitID = "player", caster = "player", filter = "BUFF" },
            -- Nightmarish Ichor (Versatility, Proc) [Goblet of Nightmarish Ichor]
            { spellID = 222027, unitID = "player", caster = "player", filter = "BUFF" },
            -- Wild God's Fury (Health, Use) [Unbridled Fury]
            { spellID = 221695, unitID = "player", caster = "player", filter = "BUFF" },
            -- Darkening Soul (Damage Reduction, Proc) [Grotesque Statuette]
            { spellID = 222209, unitID = "player", caster = "player", filter = "BUFF" },
            -- Crystalline Body (Damage Reduction, Use) [Shard of Rokmora]
            { spellID = 214366, unitID = "player", caster = "player", filter = "BUFF" },
            -- Stance of the Mountain (Damage Reduction, Use) [Talisman of the Cragshaper]
            { spellID = 214423, unitID = "player", caster = "player", filter = "BUFF" },
            -- Warlord's Fortitude (Health and Mastery, Proc) [Parjesh's Medallion]
            { spellID = 214622, unitID = "player", caster = "player", filter = "BUFF" },
            -- Nerubian Chitin (Armor, Proc) [Impenetrable Nerubian Husk]
            { spellID = 214494, unitID = "player", caster = "player", filter = "BUFF" },
            -- Damage [Strength]
            -- Fiery Enchant (Crit, Proc) [Entwined Elemental Foci]
            { spellID = 225726, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Frost Enchant (Mastery, Proc) [Entwined Elemental Foci]
            { spellID = 225729, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Arcane Enchant (Haste, Proc) [Entwined Elemental Foci]
            { spellID = 225730, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Cleansed Ancient's Blessing (Crit, Proc) [Nature's Call]
            { spellID = 222517, unitID = "player", caster = "player", filter = "BUFF" },
            -- Cleansed Wisp's Blessing (Mastery, Proc) [Nature's Call]
            { spellID = 222518, unitID = "player", caster = "player", filter = "BUFF" },
            -- Cleansed Sister's Blessing (Haste, Proc) [Nature's Call]
            { spellID = 222519, unitID = "player", caster = "player", filter = "BUFF" },
            -- Howl of Ingvar (Crit, Proc) [Memento of Angerboda]
            { spellID = 214802, unitID = "player", caster = "player", filter = "BUFF" },
            -- Wail of Svala (Haste, Proc) [Memento of Angerboda]
            { spellID = 214803, unitID = "player", caster = "player", filter = "BUFF" },
            -- Dirge of Angerboda (Mastery, Proc) [Memento of Angerboda]
            { spellID = 214807, unitID = "player", caster = "player", filter = "BUFF" },
            -- Down Draft (Haste, Proc) [Nightmare Egg Shell]
            { spellID = 214342, unitID = "player", caster = "player", filter = "BUFF" },
            -- Valarjar's Path (Primary stat, Use) [Horn of Valor]
            { spellID = 215956, unitID = "player", caster = "player", filter = "BUFF" },
            -- Damage [Agility]
            -- Blood Frenzy (Haste, Proc) [Bloodthirsty Instinct]
            { spellID = 221796, unitID = "player", caster = "player", filter = "BUFF" },
            -- Fiery Enchant (Crit, Proc) [Entwined Elemental Foci]
            { spellID = 225726, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Frost Enchant (Mastery, Proc) [Entwined Elemental Foci]
            { spellID = 225729, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Arcane Enchant (Haste, Proc) [Entwined Elemental Foci]
            { spellID = 225730, unitID = "player", caster = "player", filter = "BUFF", absID = true },
            -- Cleansed Ancient's Blessing (Crit, Proc) [Nature's Call]
            { spellID = 222517, unitID = "player", caster = "player", filter = "BUFF" },
            -- Cleansed Wisp's Blessing (Mastery, Proc) [Nature's Call]
            { spellID = 222518, unitID = "player", caster = "player", filter = "BUFF" },
            -- Cleansed Sister's Blessing (Haste, Proc) [Nature's Call]
            { spellID = 222519, unitID = "player", caster = "player", filter = "BUFF" },
            -- Howl of Ingvar (Crit, Proc) [Memento of Angerboda]
            { spellID = 214802, unitID = "player", caster = "player", filter = "BUFF" },
            -- Wail of Svala (Haste, Proc) [Memento of Angerboda]
            { spellID = 214803, unitID = "player", caster = "player", filter = "BUFF" },
            -- Dirge of Angerboda (Mastery, Proc) [Memento of Angerboda]
            { spellID = 214807, unitID = "player", caster = "player", filter = "BUFF" },
            -- Down Draft (Haste, Proc) [Nightmare Egg Shell]
            { spellID = 214342, unitID = "player", caster = "player", filter = "BUFF" },
            -- Valarjar's Path (Primary stat, Use) [Horn of Valor]
            { spellID = 215956, unitID = "player", caster = "player", filter = "BUFF" },
            -- Damage [Intellect]
            -- Nefarious Pact (Cast speed, Proc) [Whispers in the Dark]
            { spellID = 225774, unitID = "player", caster = "player", filter = "BUFF" },
            -- Valarjar's Path (Primary stat, Use) [Horn of Valor]
            { spellID = 215956, unitID = "player", caster = "player", filter = "BUFF" },
            -- Focused Lightning (Mastery, Proc) [Stormsinger Fulmination Charge]
            { spellID = 215632, unitID = "player", caster = "player", filter = "BUFF" },
            -- Collapsing Shadow (Agility, Use) [Obelisk of the Void]
            { spellID = 215476, unitID = "player", caster = "player", filter = "BUFF" },
            -- Elune's Light (Agility, Use) [Moonlit Prism]
            { spellID = 215648, unitID = "player", caster = "player", filter = "BUFF" },
            -- Burning Intensity (Crit, Proc) [Infernal Writ]
            { spellID = 215816, unitID = "player", caster = "player", filter = "BUFF" },
            -- Maddening Whispers (Damage, Proc) [Wriggling Sinew]
            { spellID = 222046, unitID = "player", caster = "player", filter = "BUFF" },
            -- Healing
            -- Constellations (Mastery, Haste, or Critical Strike, Proc) [Etraeus' Celestial Map]
            { spellID = 225136, unitID = "player", caster = "player", filter = "BUFF" },
            -- Heightened Senses (Haste and Intellect, Proc) [Heightened Senses]
            { spellID = 221752, unitID = "player", caster = "player", filter = "BUFF" },
            -- Phased Webbing (Mastery, Proc) [Thrumming Gossamer]
            { spellID = 215198, unitID = "player", caster = "player", filter = "BUFF" },
            -- Solemnity (Haste, Proc) [Flask of the Solemn Night]
            { spellID = 224347, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ocean's Embrace (Healing, Proc) [Sea Star of the Depthmother]
            { spellID = 242467, unitID = "player", caster = "player", filter = "BUFF" },

            -- 注射器
            { spellID = 253260, unitID = "player", caster = "player", filter = "BUFF" },

            -- Enchants
            -- Mark of the Claw (Crit and Haste)
            { spellID = 190909, unitID = "player", caster = "all", filter = "BUFF" },
            -- Mark of the Heavy Hide (Armor)
            { spellID = 228399, unitID = "player", caster = "all", filter = "BUFF" },
            -- Gyroscopic Stabilization
            { spellID = 235712, unitID = "player", caster = "player", filter = "BUFF" },
            -- The Shadow Hunter's Regeneration
            { spellID = 208888, unitID = "player", caster = "player", filter = "BUFF" },
            -- Sentinel's Sight
            { spellID = 208913, unitID = "player", caster = "player", filter = "BUFF" },
        },
        {
            Name = "PVE/PVP_DEBUFF",
            Direction = "UP",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.BigIconSize,
            Position = { unpack(FilgerPositions.pve_debuff) },

            -- Crowd Controls
            -- Death Knight
            -- Asphyxiate
            { spellID = 108194, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Monstrous Blow (Mutated Ghoul)
            { spellID = 91797, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Gnaw (Ghoul)
            { spellID = 91800, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Druid
            -- Cyclone
            { spellID = 33786, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Incapacitating Roar
            { spellID = 99, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Mighty Bash
            { spellID = 5211, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Maim
            { spellID = 22570, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Rake
            { spellID = 163505, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },

            -- Hunter
            -- Freezing Trap
            { spellID = 3355, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Wyvern Sting
            { spellID = 19386, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Binding Shot
            { spellID = 117526, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Intimidation
            { spellID = 24394, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Mage
            -- Polymorph
            { spellID = 118, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Ring of Frost
            { spellID = 82691, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Dragon's Breath
            { spellID = 31661, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Monk
            -- Paralysis
            { spellID = 115078, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Leg Sweep
            { spellID = 119381, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Fists of Fury
            { spellID = 120086, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Paladin
            -- Repentance
            { spellID = 20066, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Hammer of Justice
            { spellID = 853, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Blinding Light
            { spellID = 105421, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 灰烬使者(昏迷)
            { spellID = 205290, unitID = "target", caster = "player", filter = "DEBUFF" },

            -- Priest
            -- Dominate Mind
            { spellID = 605, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Psychic Horror
            { spellID = 64044, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Psychic Scream
            { spellID = 8122, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Sin and Punishment
            { spellID = 87204, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Rogue
            -- Sap
            { spellID = 6770, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Blind
            { spellID = 2094, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Cheap Shot
            { spellID = 1833, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Kidney Shot
            { spellID = 408, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Between the Eyes
            { spellID = 199804, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Gouge
            { spellID = 1776, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Shaman
            -- Hex
            { spellID = 51514, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Static Charge
            { spellID = 118905, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Pulverize (Earth Elemental)
            { spellID = 118345, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Warlock
            -- Fear
            { spellID = 118699, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Seduction (Succubus)
            { spellID = 6358, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Mesmerize (Shivarra)
            { spellID = 115268, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Howl of Terror
            { spellID = 5484, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Axe Toss (Felguard)
            { spellID = 89766, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shadowfury
            { spellID = 30283, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Mortal Coil
            { spellID = 6789, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Meteor Strike (Abyssal)
            { spellID = 171156, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Warrior
            -- Intimidating Shout
            { spellID = 5246, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Storm Bolt
            { spellID = 132169, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- Shockwave
            { spellID = 132168, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Racial
            -- Quaking Palm
            { spellID = 107079, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- War Stomp
            { spellID = 20549, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Silences
            -- Strangulate
            { spellID = 47476, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Solar Beam
            { spellID = 78675, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Avenger's Shield
            { spellID = 31935, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Silence
            { spellID = 15487, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Garrote
            { spellID = 1330, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Unstable Affliction
            { spellID = 31117, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- Arcane Torrent
            { spellID = 28730, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Roots
            -- Chains of Ice
            { spellID = 45524, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Entangling Roots
            { spellID = 339, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Mass Entanglement
            { spellID = 102359, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Immobilized
            { spellID = 45334, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Entrapment
            { spellID = 135373, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Narrow Escape
            { spellID = 136634, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Frostbite
            { spellID = 198121, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Frost Nova
            { spellID = 122, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Ice Nova
            { spellID = 157997, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Freeze (Water Elemental)
            { spellID = 33395, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Disable
            { spellID = 116706, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- Void Tendril's Grasp
            { spellID = 114404, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Earthgrab
            { spellID = 64695, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Debilitate (Terrorguard)
            { spellID = 170996, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Slows
            -- Infected Wounds
            { spellID = 58180, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Typhoon
            { spellID = 61391, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Concussive Shot
            { spellID = 5116, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Frost Breath (Chimaera)
            { spellID = 54644, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Ice Trap
            { spellID = 135299, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Frozen Ammo
            { spellID = 162546, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Caltrops
            { spellID = 194279, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Warp Time (Warp Stalker)
            { spellID = 35346, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Ankle Crack (Crocolisk)
            { spellID = 50433, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Blast Wave
            { spellID = 157981, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Cone of Cold
            { spellID = 120, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Flurry
            { spellID = 228671, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- Slow
            { spellID = 31589, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Frostbolt
            { spellID = 116, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Frostfire Bolt
            { spellID = 44614, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Mind Flay
            { spellID = 15407, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Hand of Hindrance
            { spellID = 183218, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Deadly Throw
            { spellID = 26679, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Crippling Poison
            { spellID = 3409, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Earthbind
            { spellID = 3600, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Earthquake
            { spellID = 77505, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Frost Shock
            { spellID = 196840, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Thunderstorm
            { spellID = 51490, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Cripple (Doomguard)
            { spellID = 170995, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- Conflagrate
            { spellID = 17962, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Hamstring
            { spellID = 1715, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Piercing Howl
            { spellID = 12323, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Warbringer
            { spellID = 7922, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Other
            -- Dark Simulacrum
            { spellID = 77606, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shroud of Purgatory
            { spellID = 116888, unitID = "player", caster = "player", filter = "DEBUFF" },
            -- Cauterize
            { spellID = 87023, unitID = "player", caster = "player", filter = "DEBUFF" },
            -- Nemesis
            { spellID = 206491, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Touch of Karma
            { spellID = 125174, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Smoke Bomb
            { spellID = 76577, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Rocket Fuel Leak
            { spellID = 94794, unitID = "player", caster = "player", filter = "DEBUFF" },

            -- Legion Dungeon
            -- Mythic+ Affixes
            -- Overflowing
            { spellID = 221772, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Necrotic
            { spellID = 209858, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Sanguine
            { spellID = 226512, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Grievous Wound
            { spellID = 240559, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Burst
            { spellID = 240443, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Quake
            { spellID = 240447, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Raids: Legion
            -- Antorus, the Burning Throne
            -- Garothi Worldbreaker
            -- Annihilation
            { spellID = 244761, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Searing Barrage
            { spellID = 246369, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Luring Destruction
            { spellID = 246848, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Fel Bombardment
            { spellID = 246220, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Luring Destruction
            { spellID = 247159, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Carnage
            { spellID = 244122, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Felhounds of Sargeras
            -- Burning Remnant
            { spellID = 245022, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Smouldering
            { spellID = 251445, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Burning Maw
            { spellID = 251448, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Molten Touch
            { spellID = 244086, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Singed
            { spellID = 244091, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Desolate Gaze
            { spellID = 244768, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Desolate Path
            { spellID = 244767, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Enflame Corruption
            { spellID = 244471, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Enflamed
            { spellID = 248815, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Lingering Flames
            { spellID = 244517, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Decay
            { spellID = 245098, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Corrupting Maw
            { spellID = 251447, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Consuming Sphere
            { spellID = 244131, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Consumed
            { spellID = 245024, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Weight of Darkness
            { spellID = 244071, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Siphon Corruption
            { spellID = 244578, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Siphoned
            { spellID = 248819, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Antoran High Command
            -- Entropic Blast
            { spellID = 245121, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shocked
            { spellID = 244748, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Warp Field
            { spellID = 244824, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Exploit Weakness
            { spellID = 244892, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Psychic Assault
            { spellID = 244172, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Psychic Scarring
            { spellID = 244388, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Chaos Pulse
            { spellID = 244420, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Portal Keeper Hasabel
            -- Reality Tear
            { spellID = 244016, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Everburning Light
            { spellID = 245157, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Hungering Gloom
            { spellID = 245075, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Oppressive Gloom
            { spellID = 245240, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Fiery Detonation
            { spellID = 244709, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Acidic Web
            { spellID = 246208, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Catastrophic Implosion
            { spellID = 246075, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Fel Miasma
            { spellID = 244826, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Poison Essence
            { spellID = 246316, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Caustic Slime
            { spellID = 244849, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Cloying Shadows
            { spellID = 245118, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Delusions
            { spellID = 245050, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Corrupt
            { spellID = 245040, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Felsilk Wrap
            { spellID = 244926, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Flames of Xoroth
            { spellID = 244607, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Eonar the Life-Binder
            -- Rain of Fel
            { spellID = 248326, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Spear of Doom
            { spellID = 248861, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Feedback - Targeted
            { spellID = 249016, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Feedback - Burning Embers
            { spellID = 249015, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Feedback - Foul Steps
            { spellID = 249014, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Feedback - Arcane Singularity
            { spellID = 249017, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Imonar the Soulhunter
            -- Gathering Power
            { spellID = 248424, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Sleep Canister
            { spellID = 247552, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Slumber Gas
            { spellID = 247565, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shocked
            { spellID = 250224, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Infernal Rockets
            { spellID = 248252, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Sever
            { spellID = 247687, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Charged Blasts
            { spellID = 247716, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Empowered Shock Lance
            { spellID = 250255, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Stasis Trap
            { spellID = 247641, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Kin'garoth
            -- Infernal Burning
            { spellID = 233062, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Crashing Comet
            { spellID = 230345, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Forging Strike
            { spellID = 244312, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Ruiner
            { spellID = 246840, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Purging Protocol
            { spellID = 248061, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Demolish
            { spellID = 246706, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Varimathras
            -- Marked Prey
            { spellID = 244042, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Misery
            { spellID = 243961, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Echoes of Doom
            { spellID = 248732, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Necrotic Embrace
            { spellID = 244093, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- The Coven of Shivarra
            -- Fiery Strike
            { spellID = 244899, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Flashfreeze
            { spellID = 245518, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Chilled Blood
            { spellID = 245586, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Fury of Golganneth
            { spellID = 246763, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Flames of Khaz'goroth
            { spellID = 245674, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Spectral Army of Norgannon
            { spellID = 245910, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Aggramar
            -- Foe Breaker
            { spellID = 244291, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Scorching Blaze
            { spellID = 245995, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Searing Tempest
            { spellID = 246014, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Blazing Eruption
            { spellID = 244912, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Scorched Earth
            { spellID = 247135, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Catalyzed
            { spellID = 247091, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Unchecked Flame
            { spellID = 245631, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Molten Remnants
            { spellID = 245916, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- Tomb of Sargeras
            -- Goroth
            -- Shattering Star
            { spellID = 233279, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Crashing Comet
            { spellID = 230345, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Burning Armor
            { spellID = 231363, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Demonic Inquistion
            -- Unbearable Torment
            { spellID = 233430, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Soul Corruption
            { spellID = 248713, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Calcified Quills
            { spellID = 233431, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Echoing Anguish
            { spellID = 233983, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Harjatan
            -- Aqueous Burst
            { spellID = 231729, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Driven Assault
            { spellID = 234128, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Dripping Wet
            { spellID = 241573, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Drenched
            { spellID = 231770, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Sickly Fixate
            { spellID = 241600, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Mistress Sassz'ine
            -- Hydra Shot
            { spellID = 230139, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Befouling Ink
            { spellID = 232913, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Sister of the Moon
            -- Lunar Suffusion
            { spellID = 234995, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Umbra Suffusion
            { spellID = 234996, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Discorporate
            { spellID = 236550, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Moon Burn
            { spellID = 236519, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Incorporeal Shot
            { spellID = 236304, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Lunar Beacon
            { spellID = 236712, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Rapid Shot
            { spellID = 236596, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- The Desolate Host
            -- Spear of Anguish
            { spellID = 235933, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Tormented Cries
            { spellID = 235989, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Wither
            { spellID = 236135, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Soulbind
            { spellID = 236449, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shattering Scream
            { spellID = 236515, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Maiden of Vigilance
            -- Unstable Soul
            { spellID = 240209, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Light Infusion
            { spellID = 235213, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Fel Infusion
            { spellID = 235240, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Creator's Grace
            { spellID = 235534, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Demon's Vigor
            { spellID = 235538, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Fallen Avatar
            -- Dark Mark
            { spellID = 239739, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shadowy Blades
            { spellID = 236604, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Kil'jaeden
            -- Bursting Dreadflame
            { spellID = 238429, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shadow Reflection: Erupting
            { spellID = 236710, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shadow Reflection: Wailing
            { spellID = 236378, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Flaming Orb
            { spellID = 239253, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Focused Dreadflame
            { spellID = 238505, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Illidan's Sightless Gaze
            { spellID = 241721, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- The Emerald Nightmare
            -- Unstable Decay
            { spellID = 221028, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Nythendra
            -- Infested
            { spellID = 204504, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Rot
            { spellID = 203096, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Il'gynoth, Heart of Corruption
            -- Fixate
            { spellID = 210099, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Spew Corruption
            { spellID = 208929, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Cursed Blood
            { spellID = 215128, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Erethe Renferal
            -- Raking Talons
            { spellID = 215582, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Wind Burn
            { spellID = 218519, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Web of Pain
            { spellID = 215307, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Necrotic Venom
            { spellID = 215449, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Twisting Shadows
            { spellID = 210850, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Shimmering Feather
            { spellID = 212993, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Ursoc
            -- Focused Gaze
            { spellID = 198006, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Momentum
            { spellID = 198108, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Dragons of Nightmare
            -- Mark of Ysondre
            { spellID = 203102, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Mark of Taerar
            { spellID = 203121, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Mark of Emeriss
            { spellID = 203125, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Mark of Lethon
            { spellID = 203124, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Nightmare Bloom
            { spellID = 207681, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Defiled Vines
            { spellID = 203770, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Volatile Infection
            { spellID = 203787, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Cenarius
            -- Creeping Nightmares
            { spellID = 210279, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Nightmare Javelin
            { spellID = 211507, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Nightmare Brambles
            { spellID = 210315, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Scorned Touch
            { spellID = 211471, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Replenishing Roots
            { spellID = 211612, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Xavius
            -- Nightmare Blades
            { spellID = 211802, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Dream Simulacrum
            { spellID = 206005, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Tormenting Fixation
            { spellID = 205771, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Corruption Meteor
            { spellID = 224508, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Bonds of Terror
            { spellID = 210451, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Corruption: Descent into Madness
            { spellID = 208431, unitID = "player", caster = "all", filter = "DEBUFF" },

            --[[--勇气试炼--]]
            -- 奧丁
            -- 雷铸之矛
            { spellID = 228932, unitID = "player", caster = "all", filter = "DEBUFF" },
            { spellID = 228918, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 烙印
            { spellID = 227491, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 227490, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 227500, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 227498, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 227499, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- P1P2烙印
            { spellID = 229580, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 229579, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 229583, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 229581, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 229582, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- P3烙印
            { spellID = 231342, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 231311, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 231346, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 231344, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            { spellID = 231345, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- 正义风暴
            { spellID = 227807, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 光耀碎片
            { spellID = 227781, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 净化火焰
            { spellID = 227475, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 驱逐之光
            { spellID = 228029, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 舞动之刃
            { spellID = 228007, unitID = "player", caster = "all", filter = "DEBUFF" },

            -- 奥丁的考验
            { spellID = 227626, unitID = "target", caster = "all", filter = "BUFF" },
            -- 弧光风暴
            { spellID = 229256, unitID = "target", caster = "all", filter = "BUFF" },

            -- 高姆
            -- 黑暗宣泄
            { spellID = 228769, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 烈火黏质
            { spellID = 228758, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 盐水唾沫
            { spellID = 228768, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 影舌舔舐
            { spellID = 228253, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 火舌舔舐
            { spellID = 228228, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 冰舌舔舐
            { spellID = 228248, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 吐沫狂怒
            { spellID = 228174, unitID = "target", caster = "all", filter = "BUFF" },
            -- 莽撞冲锋
            { spellID = 227833, unitID = "target", caster = "all", filter = "BUFF" },
            -- 海拉
            -- 毒水氧化
            { spellID = 227982, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 海洋污染
            { spellID = 228054, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 恶臭溃烂
            { spellID = 193367, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 腐蚀宝珠
            { spellID = 229119, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 腐化物
            { spellID = 228127, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 巨喉之怒
            { spellID = 228055, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 铁锚猛击
            { spellID = 228519, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 黑暗水域
            { spellID = 230197, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 毒水腐蚀
            { spellID = 227998, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 腐化宝珠
            { spellID = 230267, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 黑暗仇恨
            { spellID = 232488, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 腐化脊髓
            { spellID = 232450, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- 酝酿风暴
            { spellID = 228803, unitID = "target", caster = "all", filter = "BUFF" },
            -- 暴怒的风暴元素
            { spellID = 201119, unitID = "target", caster = "all", filter = "BUFF" },
            -- 巨喉之怒
            { spellID = 228300, unitID = "target", caster = "all", filter = "BUFF" },
            -- 精力
            { spellID = 203816, unitID = "target", caster = "all", filter = "BUFF" },
            -- 幽灵怒火
            { spellID = 228611, unitID = "target", caster = "all", filter = "BUFF" },

            -- BETA:The Nighthold
            -- Skorpyron
            -- Broken Shard
            { spellID = 204284, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Chronomatic Anomaly
            -- Time Bomb
            { spellID = 206617, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Trilliax
            -- Succulent Feast
            { spellID = 206838, unitID = "player", caster = "all", filter = "BUFF" },
            -- Stuffed
            { spellID = 214573, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Sterilize
            { spellID = 208499, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Arcing Bonds
            { spellID = 208910, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Spellblade Aluriel
            -- Mark of Frost
            { spellID = 212531, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Searing Brand
            { spellID = 213148, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Tichondrius
            -- Carrion Plague
            { spellID = 206480, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Brand of Argus
            { spellID = 212794, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Essence of Night
            { spellID = 206466, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Burning Soul
            { spellID = 216040, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Krosus
            -- Orb of Destruction
            { spellID = 205344, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- High Botanist Tel'arn
            -- Parasitic Fixate
            { spellID = 218342, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Call of Night
            { spellID = 218809, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Star Augur Etraeus
            -- Star Sign: Wolf
            { spellID = 205445, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Star Sign: Crab
            { spellID = 205429, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Star Sign: Hunter
            { spellID = 216345, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Star Sign: Dragon
            { spellID = 216344, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Icy Ejection
            { spellID = 206936, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Fel Ejection
            { spellID = 205649, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Elisande
            -- Fast Time
            { spellID = 209166, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Slow Time
            { spellID = 209165, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Conflexive Burst
            { spellID = 209598, unitID = "player", caster = "all", filter = "DEBUFF" },
            -- Gul'dan
            -- Flames of Sargeras
            { spellID = 221606, unitID = "player", caster = "all", filter = "DEBUFF" },
        },
        {
            Name = "T_BUFF",
            Direction = "UP",
            Mode = "ICON",
            Interval = Misc.Interval,
            Alpha = 1,
            IconSize = Misc.BigIconSize,
            Position = { unpack(FilgerPositions.target_buff_icon) },

            -- Death Knight
            -- Anti-Magic Shell
            { spellID = 48707, unitID = "target", caster = "all", filter = "BUFF" },
            -- Desecrated Ground
            { spellID = 115018, unitID = "target", caster = "all", filter = "BUFF" },
            -- Icebound Fortitude
            { spellID = 48792, unitID = "target", caster = "all", filter = "BUFF" },
            -- Pillar of Frost
            { spellID = 51271, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Asphyxiate
            { spellID = 108194, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Gnaw (Ghoul)
            { spellID = 91800, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Monstrous Blow (Mutated Ghoul)
            { spellID = 91797, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Strangulate
            { spellID = 47476, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Demon Hunter
            -- Metamorphosis
            { spellID = 162264, unitID = "target", caster = "all", filter = "BUFF", absID = true },
            -- Spectral Sight
            { spellID = 188501, unitID = "target", caster = "all", filter = "BUFF" },
            -- Netherwalk
            { spellID = 196555, unitID = "target", caster = "all", filter = "BUFF" },
            -- Nether Bond
            { spellID = 207810, unitID = "target", caster = "all", filter = "BUFF" },
            -- Soul Barrier
            { spellID = 227225, unitID = "target", caster = "all", filter = "BUFF" },

            -- Druid
            -- Survival Instincts
            { spellID = 61336, unitID = "target", caster = "all", filter = "BUFF" },
            -- Barkskin
            { spellID = 22812, unitID = "target", caster = "all", filter = "BUFF" },
            -- Ironbark
            { spellID = 102342, unitID = "target", caster = "all", filter = "BUFF" },
            -- Nature's Grasp
            { spellID = 170856, unitID = "target", caster = "all", filter = "BUFF" },
            -- Stampeding Roar
            { spellID = 77764, unitID = "target", caster = "all", filter = "BUFF" },
            -- Incarnation: Tree of Life
            { spellID = 117679, unitID = "target", caster = "all", filter = "BUFF" },
            -- Berserk
            { spellID = 106951, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Cyclone
            { spellID = 33786, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Mighty Bash
            { spellID = 5211, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Rake
            { spellID = 163505, unitID = "target", caster = "all", filter = "DEBUFF", absID = true },
            -- Maim
            { spellID = 22570, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Incapacitating Roar
            { spellID = 99, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Solar Beam
            { spellID = 78675, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Entangling Roots
            { spellID = 339, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Hunter
            -- Aspect of the Turtle
            { spellID = 186265, unitID = "target", caster = "all", filter = "BUFF" },
            -- Feign Death
            { spellID = 5384, unitID = "target", caster = "all", filter = "BUFF" },
            -- Posthaste
            { spellID = 118922, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Freezing Trap
            { spellID = 3355, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Wyvern Sting
            { spellID = 19386, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Binding Shot
            { spellID = 117526, unitID = "target", caster = "all", filter = "DEBUFF", absID = true },
            -- Intimidation
            { spellID = 24394, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Mage
            -- Ice Block
            { spellID = 45438, unitID = "target", caster = "all", filter = "BUFF" },
            -- Invisibility
            { spellID = 66, unitID = "target", caster = "all", filter = "BUFF" },
            -- Greater Invisibility
            { spellID = 113862, unitID = "target", caster = "all", filter = "BUFF" },
            -- Temporal Shield
            { spellID = 198111, unitID = "target", caster = "all", filter = "BUFF" },
            -- Evanesce
            { spellID = 157913, unitID = "target", caster = "all", filter = "BUFF" },
            -- Evocation
            { spellID = 12051, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Cauterize
            { spellID = 87023, unitID = "target", caster = "target", filter = "DEBUFF" },
            -- Polymorph
            { spellID = 118, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Ring of Frost
            { spellID = 82691, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Dragon's Breath
            { spellID = 31661, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Monk
            -- Diffuse Magic
            { spellID = 122783, unitID = "target", caster = "all", filter = "BUFF" },
            -- Touch of Karma
            { spellID = 125174, unitID = "target", caster = "all", filter = "BUFF" },
            -- Ring of Peace
            { spellID = 116844, unitID = "target", caster = "all", filter = "BUFF" },
            -- Dampen Harm
            { spellID = 122278, unitID = "target", caster = "all", filter = "BUFF" },
            -- Nimble Brew
            { spellID = 213664, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Paralysis
            { spellID = 115078, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Leg Sweep
            { spellID = 119381, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Fists of Fury
            { spellID = 120086, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Paladin
            -- Divine Shield
            { spellID = 642, unitID = "target", caster = "all", filter = "BUFF" },
            -- Guardian of Ancient Kings
            { spellID = 86659, unitID = "target", caster = "all", filter = "BUFF" },
            -- Blessing of Protection
            { spellID = 1022, unitID = "target", caster = "all", filter = "BUFF" },
            -- Divine Protection
            { spellID = 498, unitID = "target", caster = "all", filter = "BUFF" },
            -- Ardent Defender
            { spellID = 31850, unitID = "target", caster = "all", filter = "BUFF" },
            -- Aura Mastery
            { spellID = 31821, unitID = "target", caster = "all", filter = "BUFF" },
            -- Blessing of Spellwarding
            { spellID = 204018, unitID = "target", caster = "all", filter = "BUFF" },
            -- Blessing of Sacrifice
            { spellID = 6940, unitID = "target", caster = "all", filter = "BUFF" },
            -- Blessing of Freedom
            { spellID = 1044, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Repentance
            { spellID = 20066, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Hammer of Justice
            { spellID = 853, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Blinding Light
            { spellID = 105421, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Avenger's Shield
            { spellID = 31935, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Priest
            -- Dispersion
            { spellID = 47585, unitID = "target", caster = "all", filter = "BUFF" },
            -- Pain Suppression
            { spellID = 33206, unitID = "target", caster = "all", filter = "BUFF" },
            -- Guardian Spirit
            { spellID = 47788, unitID = "target", caster = "all", filter = "BUFF" },
            -- Spectral Guise
            { spellID = 119030, unitID = "target", caster = "all", filter = "BUFF" },
            -- Phantasm
            { spellID = 114239, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Dominate Mind
            { spellID = 605, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Psychic Horror
            { spellID = 64044, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Psychic Scream
            { spellID = 8122, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Silence
            { spellID = 15487, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Rogue
            -- Cloak of Shadows
            { spellID = 31224, unitID = "target", caster = "all", filter = "BUFF" },
            -- Cheating Death
            { spellID = 45182, unitID = "target", caster = "all", filter = "BUFF" },
            -- Evasion
            { spellID = 5277, unitID = "target", caster = "all", filter = "BUFF" },
            -- Combat Insight
            { spellID = 74002, unitID = "target", caster = "all", filter = "BUFF" },
            -- Shadow Dance
            { spellID = 185313, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Sap
            { spellID = 6770, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Blind
            { spellID = 2094, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Cheap Shot
            { spellID = 1833, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Kidney Shot
            { spellID = 408, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Between the Eyes
            { spellID = 199804, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Garrote
            { spellID = 1330, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Smoke Bomb
            { spellID = 76577, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Shaman
            -- Grounding Totem
            { spellID = 8178, unitID = "target", caster = "all", filter = "BUFF" },
            -- Spiritwalker's Grace
            { spellID = 79206, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Hex
            { spellID = 51514, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Static Charge
            { spellID = 118905, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Pulverize (Earth Elemental)
            { spellID = 118345, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Warlock
            -- Soulstone
            { spellID = 20707, unitID = "target", caster = "all", filter = "BUFF" },
            -- Unending Resolve
            { spellID = 104773, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Banish
            { spellID = 710, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Axe Toss (Felguard)
            { spellID = 89766, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Fear
            { spellID = 118699, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Seduction (Succubus)
            { spellID = 6358, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Mesmerize (Shivarra)
            { spellID = 115268, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Howl of Terror
            { spellID = 5484, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Mortal Coil
            { spellID = 6789, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Shadowfury
            { spellID = 30283, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Meteor Strike (Abyssal)
            { spellID = 171156, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Debilitate (Terrorguard)
            { spellID = 170996, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Unstable Affliction
            { spellID = 31117, unitID = "target", caster = "all", filter = "DEBUFF", absID = true },

            -- Warrior
            -- Bladestorm
            { spellID = 46924, unitID = "target", caster = "all", filter = "BUFF" },
            -- Spell Reflection
            { spellID = 23920, unitID = "target", caster = "all", filter = "BUFF" },
            -- Shield Wall
            { spellID = 871, unitID = "target", caster = "all", filter = "BUFF" },
            -- Die by the Sword
            { spellID = 118038, unitID = "target", caster = "all", filter = "BUFF" },
            -- Last Stand
            { spellID = 12975, unitID = "target", caster = "all", filter = "BUFF" },
            -- Berserker Rage
            { spellID = 18499, unitID = "target", caster = "all", filter = "BUFF" },
            -- Debuffs
            -- Intimidating Shout
            { spellID = 5246, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Storm Bolt
            { spellID = 132169, unitID = "target", caster = "all", filter = "DEBUFF", absID = true },
            -- Shockwave
            { spellID = 132168, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Racial
            -- Arcane Torrent
            { spellID = 28730, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Quaking Palm
            { spellID = 107079, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- War Stomp
            { spellID = 20549, unitID = "target", caster = "all", filter = "DEBUFF" },

            -- Professions
            -- Shieldtronic Shield
            { spellID = 173260, unitID = "target", caster = "all", filter = "BUFF" },

            -- Player vs. Player
            -- Ashran
            -- Ancient Artifact
            { spellID = 168506, unitID = "target", caster = "all", filter = "BUFF" },
            -- Boulder Shield
            { spellID = 169373, unitID = "target", caster = "all", filter = "BUFF" },
            -- Scroll of Protection
            { spellID = 171249, unitID = "target", caster = "all", filter = "BUFF" },
            -- Star Root Tuber
            { spellID = 161495, unitID = "target", caster = "all", filter = "BUFF" },
            -- Battlegrounds
            -- Netherstorm Flag
            { spellID = 34976, unitID = "target", caster = "all", filter = "BUFF" },
            -- Orb of Power
            { spellID = 121175, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Warsong Flag
            { spellID = 23333, unitID = "target", caster = "all", filter = "BUFF" },
            { spellID = 23335, unitID = "target", caster = "all", filter = "BUFF" },
            -- Seaforium Bombs
            { spellID = 66271, unitID = "target", caster = "all", filter = "DEBUFF" },
            -- Drinking in Arena
            -- Ba'ruun's Bountiful Bloom
            { spellID = 167268, unitID = "target", caster = "all", filter = "BUFF" },
            -- Drinking
            { spellID = 80167, unitID = "target", caster = "all", filter = "BUFF" },
            -- Mage Food
            { spellID = 167152, unitID = "target", caster = "all", filter = "BUFF" },

            -- Mythic
            -- Sanguine Ichor
            { spellID = 226510, unitID = "target", caster = "all", filter = "BUFF" },
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