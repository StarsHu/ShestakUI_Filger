local _, ns = ...
local Misc = ns.Misc

Filger_Spells = {
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

            -- Potions: BFA
            { spellID = 279151, unitID = "player", caster = "player", filter = "BUFF" }, -- battle-potion-of-intellect
            { spellID = 279152, unitID = "player", caster = "player", filter = "BUFF" }, -- battle-potion-of-agility
            { spellID = 279153, unitID = "player", caster = "player", filter = "BUFF" }, -- battle-potion-of-strength
            { spellID = 279154, unitID = "player", caster = "player", filter = "BUFF" }, -- battle-potion-of-stamina

            { spellID = 269853, unitID = "player", caster = "player", filter = "BUFF" }, -- potion-of-rising-death
            { spellID = 251231, unitID = "player", caster = "player", filter = "BUFF" }, -- steelskin-potion
            { spellID = 251316, unitID = "player", caster = "player", filter = "BUFF" }, -- potion-of-bursting-blood

            -- Raid Amplifiers: General
            { spellID = 90355, unitID = "player", caster = "all", filter = "BUFF" }, -- Ancient Hysteria 远古狂乱
            { spellID = 176030, unitID = "player", caster = "all", filter = "BUFF" }, -- Void Zephyr  虚空之风
            { spellID = 178207, unitID = "player", caster = "all", filter = "BUFF" }, -- Drums of Fury 狂怒战鼓
            { spellID = 2825, unitID = "player", caster = "all", filter = "BUFF" }, -- Bloodlust 嗜血
            { spellID = 32182, unitID = "player", caster = "all", filter = "BUFF" }, -- Heroism 英勇
            { spellID = 80353, unitID = "player", caster = "all", filter = "BUFF" }, -- Time Warp 时间扭曲

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
            -- Fireblood (Dark Iron Dwarf)
            { spellID = 265221, unitID = "player", caster = "player", filter = "BUFF" },
            -- Ancestral Call (Mag'har Orcs)
            { spellID = 274738, unitID = "player", caster = "player", filter = "BUFF" },

            -- Zone Buffs
            -- Inactive (Battlegrounds)
            { spellID = 43681, unitID = "player", caster = "all", filter = "DEBUFF", absID = true },
            -- Speed (Battlegrounds)
            { spellID = 23451, unitID = "player", caster = "all", filter = "BUFF", absID = true },
            -- Standing On It (Archaeology)
            { spellID = 210837, unitID = "player", caster = "all", filter = "BUFF"},

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

            -- Hallow's End

            -- PvP Trinkets

            -- Tanking

            -- Damage [Strength]

            -- Damage [Agility]

            -- Damage [Intellect]

            -- Healing


            -- Enchants
            { spellID = 268887, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --quick navigation/迅捷远航
            { spellID = 268893, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --quick navigation/迅捷远航
            { spellID = 268854, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --versatile navigation/全能远航
            { spellID = 268856, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --versatile navigation/全能远航
            { spellID = 268910, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --stalwart navigation/坚韧远航
            { spellID = 268911, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --stalwart navigation/坚韧远航
            { spellID = 268899, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --masterful navigation/精湛远航
            { spellID = 268898, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --masterful navigation/精湛远航
            { spellID = 268905, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --deadly navigation/致命远航
            { spellID = 268904, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --deadly navigation/致命远航
            { spellID = 267685, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --torrent of elements/元素洪流
            { spellID = 267612, unitID = "player", caster = "all", filter = "BUFF", absID=true},  --gale force striking/迅击风暴
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

            -- Raids: BFA
            -- Uldir/奥迪尔 9389
            -- Taloc/塔洛克
            { spellID = 275270, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --fixate/锁定
            { spellID = 270290, unitID = "player", caster = "all", filter = "DEBUFF"},  --blood storm/鲜血风暴
            { spellID = 278889, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --plasma discharge/赤红迸发
            { spellID = 278888, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --plasma discharge/赤红迸发
            { spellID = 271225, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --plasma discharge/赤红迸发
            { spellID = 271224, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --plasma discharge/赤红迸发
            { spellID = 275189, unitID = "player", caster = "all", filter = "DEBUFF"},  --hardened arteries/硬化血脉
            { spellID = 275205, unitID = "player", caster = "all", filter = "DEBUFF"},  --enlarged heart/变大的心脏
            -- MOTHER/纯净圣母
            { spellID = 268253, unitID = "player", caster = "all", filter = "DEBUFF"},  --uldir defensive beam/奥迪尔防御射线
            { spellID = 267787, unitID = "player", caster = "all", filter = "DEBUFF"},  --sanitizing strike/消毒打击
            { spellID = 268277, unitID = "player", caster = "all", filter = "DEBUFF"},  --purifying flame/净化烈焰
            { spellID = 268095, unitID = "player", caster = "all", filter = "DEBUFF"},  --cleansing purge/净化荡涤
            { spellID = 268198, unitID = "player", caster = "all", filter = "DEBUFF"},  --clinging corruption/粘附腐化
            -- Fetid Devourer/腐臭吞噬者
            { spellID = 262313, unitID = "player", caster = "all", filter = "DEBUFF"},  --malodorous miasma/恶臭沼气
            { spellID = 262314, unitID = "player", caster = "all", filter = "DEBUFF"},  --putrid paroxysm/腐烂恶臭
            { spellID = 262256, unitID = "target", caster = "all", filter = "BUFF"},  --thrashing terror/痛击恐惧
            { spellID = 262378, unitID = "target", caster = "all", filter = "BUFF"},  --fetid frenzy/腐臭狂暴
            -- Zek'vozDE/泽克沃兹，恩佐斯的传令官
            { spellID = 265237, unitID = "player", caster = "all", filter = "DEBUFF"},  --shatter/粉碎
            { spellID = 265264, unitID = "player", caster = "all", filter = "DEBUFF"},  --void lash/虚空鞭笞
            { spellID = 265360, unitID = "player", caster = "all", filter = "DEBUFF"},  --roiling deceit/翻腾欺诈
            { spellID = 264210, unitID = "player", caster = "all", filter = "DEBUFF"},  --jagged mandible/锯齿咬颚
            { spellID = 265662, unitID = "player", caster = "all", filter = "DEBUFF"},  --corruptors pact/腐化者的契约
            { spellID = 265646, unitID = "player", caster = "all", filter = "DEBUFF"},  --will of the corruptor/腐化者的意志
            { spellID = 270620, unitID = "player", caster = "all", filter = "DEBUFF"},  --psionic blast/灵能冲击波
            { spellID = 270589, unitID = "player", caster = "all", filter = "DEBUFF"},  --void wail/虚空之嚎
            { spellID = 278218, unitID = "target", caster = "all", filter = "BUFF"},  --void calling/虚空召唤
            { spellID = 278220, unitID = "target", caster = "all", filter = "BUFF"},  --void trance/虚空超脱
            -- Vectis/维克提斯
            { spellID = 265129, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --omega vector/终极菌体
            { spellID = 267160, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --omega vector/终极菌体
            { spellID = 267161, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --omega vector/终极菌体
            { spellID = 265127, unitID = "player", caster = "all", filter = "DEBUFF"},  --lingering infection/持续感染
            { spellID = 265178, unitID = "player", caster = "all", filter = "DEBUFF"},  --evolving affliction/进化痛苦
            { spellID = 266948, unitID = "player", caster = "all", filter = "DEBUFF"},  --plague bomb/瘟疫炸弹
            { spellID = 265212, unitID = "player", caster = "all", filter = "DEBUFF"},  --gestate/育种
            { spellID = 265206, unitID = "player", caster = "all", filter = "DEBUFF"},  --immunosuppression/免疫力压制
            { spellID = 274990, unitID = "player", caster = "all", filter = "DEBUFF"},  --bursting lesions/破裂损伤
            -- Zul/祖尔，重生者
            { spellID = 273359, unitID = "player", caster = "all", filter = "DEBUFF"},  --shadow barrage/暗影弹幕
            { spellID = 272018, unitID = "player", caster = "all", filter = "DEBUFF"},  --absorbed in darkness/黑暗吸收
            { spellID = 274195, unitID = "player", caster = "all", filter = "DEBUFF"},  --corrupted blood/堕落之血
            { spellID = 274358, unitID = "player", caster = "all", filter = "DEBUFF"},  --rupturing blood/破裂之血
            { spellID = 273365, unitID = "player", caster = "all", filter = "DEBUFF"},  --dark revelation/黑暗启示
            { spellID = 273434, unitID = "player", caster = "all", filter = "DEBUFF"},  --pit of despair/绝望深渊
            { spellID = 276020, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --fixate/锁定
            { spellID = 269936, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --fixate/锁定
            { spellID = 274271, unitID = "player", caster = "all", filter = "DEBUFF"},  --deathwish/死亡之愿
            { spellID = 273432, unitID = "target", caster = "all", filter = "BUFF"},  --bound by shadow/暗影束缚
            { spellID = 278890, unitID = "player", caster = "all", filter = "DEBUFF"},  --violent hemorrhage/剧烈失血
            { spellID = 276299, unitID = "player", caster = "all", filter = "DEBUFF"},  --engorged burst/充血爆发
            { spellID = 273288, unitID = "target", caster = "all", filter = "BUFF"},  --thrumming pulse/婆娑脉动
            { spellID = 276659, unitID = "target", caster = "all", filter = "BUFF"},  --blood recall/鲜血回响
            { spellID = 276434, unitID = "target", caster = "all", filter = "BUFF"},  --decaying flesh/腐烂血肉
            -- Mythrax/拆解者米斯拉克斯
            { spellID = 274693, unitID = "player", caster = "all", filter = "DEBUFF"},  --essence shear/精华撕裂
            { spellID = 272146, unitID = "player", caster = "all", filter = "DEBUFF"},  --annihilation/毁灭
            { spellID = 272536, unitID = "player", caster = "all", filter = "DEBUFF"},  --imminent ruin/毁灭迫近
            { spellID = 272407, unitID = "player", caster = "all", filter = "DEBUFF"},  --oblivion sphere/湮灭之球
            { spellID = 273810, unitID = "target", caster = "all", filter = "BUFF"},  --xalzaixs awakening/夏尔扎克斯的觉醒
            { spellID = 274761, unitID = "target", caster = "all", filter = "BUFF"},  --oblivion veil/湮灭帷幕
            { spellID = 276900, unitID = "target", caster = "all", filter = "BUFF"},  --critical mass/临界炽焰
            { spellID = 274113, unitID = "player", caster = "all", filter = "DEBUFF"},  --obliteration beam/湮灭光束
            { spellID = 274019, unitID = "player", caster = "all", filter = "DEBUFF"},  --mind flay/精神鞭笞
            { spellID = 279013, unitID = "player", caster = "all", filter = "DEBUFF"},  --essence shatter/精华碎裂
            { spellID = 279157, unitID = "target", caster = "all", filter = "BUFF"},  --void echoes/虚空回响
            -- G'huun/戈霍恩
            { spellID = 272506, unitID = "player", caster = "all", filter = "DEBUFF"},  --explosive corruption/爆炸腐蚀
            { spellID = 270287, unitID = "player", caster = "all", filter = "DEBUFF"},  --blighted ground/疫病之地
            { spellID = 267427, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --torment/折磨
            { spellID = 267430, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},  --torment/折磨
            { spellID = 267409, unitID = "player", caster = "all", filter = "DEBUFF"},  --dark bargain/黑暗交易
            { spellID = 269691, unitID = "player", caster = "all", filter = "DEBUFF"},  --mind thrall/意志奴役
            { spellID = 263482, unitID = "target", caster = "all", filter = "DEBUFF"},  --reorigination blast/重组冲击
            { spellID = 263372, unitID = "player", caster = "all", filter = "DEBUFF"},  --power matrix/能量矩阵
            { spellID = 263436, unitID = "player", caster = "all", filter = "DEBUFF"},  --imperfect physiology/不完美的生理机制
            { spellID = 276834, unitID = "player", caster = "all", filter = "DEBUFF"},  --arcing discharge/弧形释放
            { spellID = 263321, unitID = "player", caster = "all", filter = "DEBUFF"},  --undulating mass/蠕行苔藓
            { spellID = 267659, unitID = "player", caster = "all", filter = "DEBUFF"},  --unclean contagion/不洁传染
            { spellID = 270447, unitID = "target", caster = "all", filter = "BUFF"},  --growing corruption/腐化滋长
            { spellID = 263227, unitID = "player", caster = "all", filter = "DEBUFF"},  --putrid blood/腐败之血
            { spellID = 263235, unitID = "player", caster = "all", filter = "DEBUFF"},  --blood feast/鲜血盛宴
            { spellID = 263284, unitID = "target", caster = "all", filter = "BUFF"},  --blood might/鲜血之力
            { spellID = 276839, unitID = "player", caster = "all", filter = "DEBUFF"},  --collapse/坍缩
            { spellID = 267700, unitID = "player", caster = "all", filter = "DEBUFF"},  --gaze of ghuun/戈霍恩的凝视
            { spellID = 274536, unitID = "player", caster = "all", filter = "DEBUFF"},  --matrix surge/矩阵电涌
            { spellID = 268174, unitID = "player", caster = "all", filter = "DEBUFF"},  --tendrils of corruption/腐化触须
            { spellID = 277007, unitID = "player", caster = "all", filter = "DEBUFF"},  --bursting boil/爆裂囊肿
            { spellID = 267813, unitID = "player", caster = "all", filter = "DEBUFF"},  --blood host/血之宿主
            { spellID = 267816, unitID = "player", caster = "all", filter = "DEBUFF"},  --dark purpose/黑暗意图
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