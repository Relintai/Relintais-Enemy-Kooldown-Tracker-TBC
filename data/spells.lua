
-- [42292] ={120, nil,   120,     120,     120,     0,    "", "anticc", false, false, false}, --PvP Trinket
-- spellid   cd  reset spec1cd, spec2cd, spec3cd, spec, class,  type, ispetspell interrupt warn --comment

--!IMPORTANT type, has to match one from the list below, nor can it be empty, you will get Lua errors from Sorters!

--spellid -> the spell's id
--cd -> base cooldown for the spell, this will be used until the spec is detected (if its on, else this will be used)
--		NOTE: cds are in seconds, and if the tooltip shows like 2.1M then you convert it like this: 2.1 * 60 = 126
--reset -> lua array, when the spell is cast these will be removed from the caster's spells (check Cold Snap or Preparation for an example)
--spec1cd, spec2cd, spec3cd ->cds on different specs, its in talent tree order e.g. Mage spec1 = Arcane, spec2 = Fire, spec3 = Arcane
--spec -> the addon detects the spec based on this, 0 to ignore, 3 switch to spec 1, 4 switch to spec2, 5 switch to spec 5
--class -> Used in "Pet CD Guessing", if everybody can cast it use "", else the calss name, with the first letter capitalized e.g. "Warrior"
--Type -> used for the colors, and type based sorting
--			values: silence,gapcloser,defensive,potion,nuke,anticc,cc,stun,disarm,cdreset,shield,uncategorized
--ispetspell -> if its a pet spell true, else false
--interrupt -> show it on the interruptbar?
--warn -> Show it on the warn frame?

Rekt.spells = {
	--Trinkets
	--This (Doesn't work, because there is no combatlog event)
	[42292] = {120, nil, 120, 120, 120, 0, "", "anticc", false, false, true}, --PvP Trinket 
	[44055] = {180, nil, 180, 180, 180, 0, "", "defensive", false, false, true}, --Battlemaster Trinket

	--Other Stuff
	[51582] = {300, nil, 300, 300, 300, 0, "", "gapcloser", false, false, true}, --Rocket Boots Extreme + Lite
	[30456] = {300, nil, 300, 300, 300, 0, "", "shield", false, false, true}, --Nigh Invulnerability Belt
	[30501] = {300, nil, 300, 300, 300, 0, "", "cc", false, false, false}, --Gnomish Poultryizer

	--Racials (War Stomp no combatlog entry)
	[20600] = {180, nil, 120, 120, 120, 0, "", "anticc", false, false, true}, --Perception
	[7744] = {120, nil, 120, 120, 120, 0, "", "defensive", false, false, false}, --Will of the Forsaken
	[25046] = {120, nil, 120, 120, 120, 0, "", "silence", false, false, false}, --Arcane Torrent (Energy Version)
	[28730] = {120, nil, 120, 120, 120, 0, "", "silence", false, false, false}, --Arcane Torrent (Mana version)
	[50613] = {120, nil, 120, 120, 120, 0, "", "silence", false, false, false}, --Arcane Torrent (Runic Power version)
	[28730] = {120, nil, 120, 120, 120, 0, "", "silence", false, false, false}, --Arcane Torrent (Heroes Warrior)
	[65116] = {120, nil, 120, 120, 120, 0, "", "defensive", false, false, true}, --Stoneform
	[20589] = {105, nil, 105, 105, 105, 0, "", "defensive", false, false, false}, --Escape Artist
	[28880] = {180, nil, 180, 180, 180, 0, "", "defensive", false, false, false}, --Gift of the Naaru
	--Potions
	[6615] = {60, nil, 60, 60, 60, 0, "", "potion", false, false, true}, --Free Action Potion
	
	--Warrior
	--Arms
	[100] = {15, nil, 20, 15, 15, 0, "Warrior", "gapcloser", false, false, false}, --Charge rank 1
	[6178] = {15, nil, 20, 15, 15, 0, "Warrior", "gapcloser", false, false, false}, --Charge rank 2
	[11578] = {15, nil, 20, 15, 15, 0, "Warrior", "gapcloser", false, false, false}, --Charge rank 3
	[20230] = {1800, nil, 1800, 1800, 1800, 0, "Warrior", "nuke", false, false, true}, --Retaliation
	[12292] = {180, nil, 180, 180, 180, 3, "Warrior", "nuke", false, false, true}, --Death Wish
	--Detection
	[12294] = {0, nil, 0, 0, 0, 3, "Warrior", "uncategorized", false, false, false}, --Mortal Strike r1
	[21551] = {0, nil, 0, 0, 0, 3, "Warrior", "uncategorized", false, false, false}, --Mortal Strike r2
	[21552] = {0, nil, 0, 0, 0, 3, "Warrior", "uncategorized", false, false, false}, --Mortal Strike r3
	[21553] = {0, nil, 0, 0, 0, 3, "Warrior", "uncategorized", false, false, false}, --Mortal Strike r4
	[25248] = {0, nil, 0, 0, 0, 3, "Warrior", "uncategorized", false, false, false}, --Mortal Strike r5
	[30330] = {0, nil, 0, 0, 0, 3, "Warrior", "uncategorized", false, false, false}, --Mortal Strike r6
	--Fury
	[18499] = {30, nil, 30, 30, 30, 0, "Warrior", "anticc", false, false, true}, --Berserker Rage
	[20252] = {30, nil, 20, 30, 30, 0, "Warrior", "gapcloser", false, false, false}, --Intercept r1
	[20616] = {30, nil, 20, 30, 30, 0, "Warrior", "gapcloser", false, false, false}, --Intercept r2
	[20617] = {30, nil, 20, 30, 30, 0, "Warrior", "gapcloser", false, false, false}, --Intercept r3
	[25272] = {30, nil, 20, 30, 30, 0, "Warrior", "gapcloser", false, false, false}, --Intercept r4
	[25275] = {30, nil, 20, 30, 30, 0, "Warrior", "gapcloser", false, false, false}, --Intercept r5
	[5246] = {180, nil, 180, 180, 180, 0, "Warrior", "cc", false, false, false}, --Intimidating Shout
	[6552] = {10, nil, 10, 10, 10, 0, "Warrior", "silence", false, true, true}, --Pummel r1
	[6554] = {10, nil, 10, 10, 10, 0, "Warrior", "silence", false, true, true}, --Pummel r2
	[1719] = {1800, nil, 1800, 1800, 1800, 0, "Warrior", "nuke", false, false, true}, --Recklessness
	[12328] = {30, nil, 30, 30, 30, 4, "Warrior", "uncategorized", false, false, false}, --Sweeping Strikes
	--Detection
	[23881] = {0, nil, 0, 0, 0, 4, "Warrior", "uncategorized", false, false, false}, --Bloodthirst r1
	[23892] = {0, nil, 0, 0, 0, 4, "Warrior", "uncategorized", false, false, false}, --Bloodthirst r2
	[23893] = {0, nil, 0, 0, 0, 4, "Warrior", "uncategorized", false, false, false}, --Bloodthirst r3
	[23894] = {0, nil, 0, 0, 0, 4, "Warrior", "uncategorized", false, false, false}, --Bloodthirst r4
	[25251] = {0, nil, 0, 0, 0, 4, "Warrior", "uncategorized", false, false, false}, --Bloodthirst r5
	[30335] = {0, nil, 0, 0, 0, 4, "Warrior", "uncategorized", false, false, false}, --Bloodthirst r6
	[29801] = {0, nil, 0, 0, 0, 4, "Warrior", "uncategorized", false, false, false}, --Rampage r1
	[30030] = {0, nil, 0, 0, 0, 4, "Warrior", "uncategorized", false, false, false}, --Rampage r2
	[30033] = {0, nil, 0, 0, 0, 4, "Warrior", "uncategorized", false, false, false}, --Rampage r3
	--Protection
	[12809] = {45, nil, 45, 45, 45, 5, "Warrior", "stun", false, false, false}, --Concussion Blow
	[676] = {60, nil, 60, 60, 60, 0, "Warrior", "disarm", false, false, false}, --Disarm
	[3411] = {30, nil, 30, 30, 30, 0, "Warrior", "gapcloser", false, false, false}, --Intervene
	[12975] = {480, nil, 480, 480, 480, 0, "Warrior", "defensive", false, false, true}, --Last Stand
	[871] = {1800, nil, 1800, 1800, 1800, 0, "Warrior", "defensive", false, false, true}, --Shield Wall
	[23920] = {10, nil, 10, 10, 10, 0, "Warrior", "silence", false, true, true}, --Spell Reflection
	[72] = {12, nil, 12, 12, 12, 0, "Warrior", "silence", false, true, false}, --Shield Bash r1
	[1671] = {12, nil, 12, 12, 12, 0, "Warrior", "silence", false, true, false}, --Shield Bash r2
	[1672] = {12, nil, 12, 12, 12, 0, "Warrior", "silence", false, true, false}, --Shield Bash r3
	[29704] = {12, nil, 12, 12, 12, 0, "Warrior", "silence", false, true, false}, --Shield Bash r4
	--Detection
	[20243] = {0, nil, 0, 0, 0, 5, "Warrior", "uncategorized", false, false, false}, --Devastate r1
	[30016] = {0, nil, 0, 0, 0, 5, "Warrior", "uncategorized", false, false, false}, --Devastate r2
	[30022] = {0, nil, 0, 0, 0, 5, "Warrior", "uncategorized", false, false, false}, --Devastate r3
	[23922] = {0, nil, 0, 0, 0, 5, "Warrior", "uncategorized", false, false, false}, --Shield Slam r1
	[23923] = {0, nil, 0, 0, 0, 5, "Warrior", "uncategorized", false, false, false}, --Shield Slam r2
	[23924] = {0, nil, 0, 0, 0, 5, "Warrior", "uncategorized", false, false, false}, --Shield Slam r3
	[23925] = {0, nil, 0, 0, 0, 5, "Warrior", "uncategorized", false, false, false}, --Shield Slam r4
	[25258] = {0, nil, 0, 0, 0, 5, "Warrior", "uncategorized", false, false, false}, --Shield Slam r5
	[30356] = {0, nil, 0, 0, 0, 5, "Warrior", "uncategorized", false, false, false}, --Shield Slam r6

	--Paladin
	--Holy
	[20216] = {120, nil, 120, 120, 120, 3, "Paladin", "uncategorized", false, false, false}, --Divine Favor
	[31842] = {180, nil, 180, 180, 180, 3, "Paladin", "uncategorized", false, false, false}, --Divine Illumination
	[2812] = {20, nil, 20, 20, 20, 0, "Paladin", "uncategorized", false, false, false}, --Holy Wrath r1
	[10318] = {20, nil, 20, 20, 20, 0, "Paladin", "uncategorized", false, false, false}, --Holy Wrath r2
	[27139] = {20, nil, 20, 20, 20, 0, "Paladin", "uncategorized", false, false, false}, --Holy Wrath r3
	[633] = {3600, nil, 3600, 3600, 3600, 0, "Paladin", "uncategorized", false, false, true}, --Lay on Hands r1
	[2800] = {3600, nil, 3600, 3600, 3600, 0, "Paladin", "uncategorized", false, false, true}, --Lay on Hands r2
	[10310] = {3600, nil, 3600, 3600, 3600, 0, "Paladin", "uncategorized", false, false, true}, --Lay on Hands r3
	[27154] = {3600, nil, 3600, 3600, 3600, 0, "Paladin", "uncategorized", false, false, true}, --Lay on Hands r4
	[20473] = {15, nil, 15, 15, 15, 3, "Paladin", "uncategorized", false, false, false}, --Holy Shock r1
	[20929] = {15, nil, 15, 15, 15, 3, "Paladin", "uncategorized", false, false, false}, --Holy Shock r2
	[20930] = {15, nil, 15, 15, 15, 3, "Paladin", "uncategorized", false, false, false}, --Holy Shock r3
	[27174] = {15, nil, 15, 15, 15, 3, "Paladin", "uncategorized", false, false, false}, --Holy Shock r4
	[33072] = {15, nil, 15, 15, 15, 3, "Paladin", "uncategorized", false, false, false}, --Holy Shock r5
	[10326] = {30, nil, 30, 30, 30, 0, "Paladin", "uncategorized", false, false, false}, --Turn Evil r1
	[2878] = {30, nil, 30, 30, 30, 0, "Paladin", "uncategorized", false, false, false}, --Turn Undead r1
	[5627] = {30, nil, 30, 30, 30, 0, "Paladin", "uncategorized", false, false, false}, --Turn Undead r2
	--Protection
	[31935] = {30, nil, 30, 30, 30, 4, "Paladin", "uncategorized", false, false, false}, --Avenger's Shield r1
	[32699] = {30, nil, 30, 30, 30, 4, "Paladin", "uncategorized", false, false, false}, --Avenger's Shield r2
	[32700] = {30, nil, 30, 30, 30, 4, "Paladin", "uncategorized", false, false, false}, --Avenger's Shield r3
	[498] = {300, nil, 300, 300, 300, 0, "Paladin", "defensive", false, false, false}, --Divine Protection r1
	[5573] = {300, nil, 300, 300, 300, 0, "Paladin", "defensive", false, false, false}, --Divine Protection r2
	[642] = {300, nil, 300, 300, 300, 0, "Paladin", "defensive", false, false, false}, --Divine Shield r1
	[1020] = {300, nil, 300, 300, 300, 0, "Paladin", "defensive", false, false, false}, --Divine Shield r2
	[853] = {45, nil, 45, 45, 45, 0, "Paladin", "stun", false, false, true}, --Hammer of justice r1
	[5588] = {45, nil, 45, 45, 45, 0, "Paladin", "stun", false, false, true}, --Hammer of justice r2
	[5589] = {45, nil, 45, 45, 45, 0, "Paladin", "stun", false, false, true}, --Hammer of justice r3
	[10308] = {45, nil, 45, 45, 45, 0, "Paladin", "stun", false, false, true}, --Hammer of justice r4
	[1044] = {25, nil, 25, 25, 25, 0, "Paladin", "anticc", false, false, true}, --Blessing of Freedom
	[1022] = {180, nil, 180, 180, 180, 0, "Paladin", "defensive", false, false, true}, --Blessing of Protection r1
	[5599] = {180, nil, 180, 180, 180, 0, "Paladin", "defensive", false, false, true}, --Blessing of Protection r2
	[10278] = {180, nil, 180, 180, 180, 0, "Paladin", "defensive", false, false, true}, --Blessing of Protection r3
	[6940] = {30, nil, 30, 30, 30, 0, "Paladin", "defensive", false, false, false}, --Blessing of Sacrifice r1
	[20729] = {30, nil, 30, 30, 30, 0, "Paladin", "defensive", false, false, false}, --Blessing of Sacrifice r2
	[27147] = {30, nil, 30, 30, 30, 0, "Paladin", "defensive", false, false, false}, --Blessing of Sacrifice r3
	[27148] = {30, nil, 30, 30, 30, 0, "Paladin", "defensive", false, false, false}, --Blessing of Sacrifice r4
	--Detection
	[20925] = {0, nil, 0, 0, 0, 4, "Paladin", "uncategorized", false, false, false}, --Holy Shield r1
	[20927] = {0, nil, 0, 0, 0, 4, "Paladin", "uncategorized", false, false, false}, --Holy Shield r2
	[20928] = {0, nil, 0, 0, 0, 4, "Paladin", "uncategorized", false, false, false}, --Holy Shield r3
	[27179] = {0, nil, 0, 0, 0, 4, "Paladin", "uncategorized", false, false, false}, --Holy Shield r4
	--Retribution
	[31884] = {180, nil, 180, 180, 180, 0, "Paladin", "nuke", false, false, false}, --Avenging Wrath
	[20066] = {60, nil, 60, 60, 60, 5, "Paladin", "cc", false, false, false}, --Repentance
	--Detection
	[35395] = {0, nil, 0, 0, 0, 5, "Paladin", "", false, false, false}, --Crusader Strike
	
	--Hunter
	--Feign Death No Combat log entry
	--Beast Mastery
	[19574] = {84, nil, 84, 84, 84, 3, "Hunter", "nuke", false, false, true}, --Bestial Wrath
	[19577] = {42, nil, 42, 42, 42, 3, "Hunter", "stun", false, false, false}, --Intimidation
	[14327] = {30, nil, 30, 30, 30, 0, "Hunter", "cc", false, false, false}, --Scare Beast
	--Marksman
	[1543] = {20, nil, 20, 20, 20, 0, "Hunter", "uncategorized", false, false, false}, --Flare
	[3045] = {180, nil, 300, 180, 300, 0, "Hunter", "nuke", false, false, false}, --Rapid Fire
	[19503] = {30, nil, 30, 30, 30, 4, "Hunter", "cc", false, false, false}, --Scatter Shot
	[34490] = {20, nil, 20, 20, 20, 4, "Hunter", "silence", false, true, true}, --Silencing Shot
	[19801] = {20, nil, 20, 20, 20, 0, "Hunter", "uncategorized", false, false, false}, --Tranquilizing Shot
	--Detection
	[19506] = {0, nil, 0, 0, 0, 4, "Hunter", "uncategorized", false, false, false}, --Trueshot Aura
	--Survival (trap cds default to 30, as survival hunters are rare in TBC)
	--Readiness -> it will have all the cooldowns, there might be servers with more talents given
	[23989] = {180, 
		{
			19574, --Betial Wrath
			19577, --Intimidation
			14327, --Scare Beast
			1543, --Flare
			3045, --Rapid Fire
			19503, --Scatter Shot
			34490, --Silencing Shot
			19801, --Tranquilizing Shot
			19263, --Deterrence
			13813, 14316, 14317, 27025, --Explosive Trap
			1499, 14310, 14311, --Freezing Trap
			13809, --Frost Trap
			13795, 14302, 14303, 14304, 14305, 27023, --Immolation Trap
			34600, --Snake Trap
			19386, 24132, 24133, 27068 --Wyvern Sting
		}, 180, 180, 180, 5, "Hunter", "cdreset", false, false, false}, --Readiness

	[19263] = {300, nil, 300, 300, 300, 0, "Hunter", "defensive", false, false, true}, --Deterrence
	[13813] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Explosive Trap r1
	[14316] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Explosive Trap r2
	[14317] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Explosive Trap r3
	[27025] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Explosive Trap r4
	--Feign Death
	[1499] = {30, nil, 30, 30, 24, 0, "Hunter", "cc", false, false, false}, --Freezing Trap r1
	[14310] = {30, nil, 30, 30, 24, 0, "Hunter", "cc", false, false, false}, --Freezing Trap r2
	[14311] = {30, nil, 30, 30, 24, 0, "Hunter", "cc", false, false, false}, --Freezing Trap r3
	[13809] = {30, nil, 30, 30, 24, 0, "Hunter", "cc", false, false, false}, --Frost Trap
	[13795] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Immolation Trap r1
	[14302] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Immolation Trap r2
	[14303] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Immolation Trap r3
	[14304] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Immolation Trap r4
	[14305] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Immolation Trap r5
	[27023] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Immolation Trap r6
	[34600] = {30, nil, 30, 30, 24, 0, "Hunter", "uncategorized", false, false, false}, --Snake Trap
	[19386] = {60, nil, 60, 60, 60, 5, "Hunter", "cc", false, false, false}, --Wyvern Sting r1
	[24132] = {60, nil, 60, 60, 60, 5, "Hunter", "cc", false, false, false}, --Wyvern Sting r2
	[24133] = {60, nil, 60, 60, 60, 5, "Hunter", "cc", false, false, false}, --Wyvern Sting r3
	[27068] = {60, nil, 60, 60, 60, 5, "Hunter", "cc", false, false, false}, --Wyvern Sting r4
	--Detection
	[19306] = {0, nil, 0, 0, 0, 5, "Hunter", "uncategorized", false, false, false}, --Counterattack r1
	[20909] = {0, nil, 0, 0, 0, 5, "Hunter", "uncategorized", false, false, false}, --Counterattack r2
	[20910] = {0, nil, 0, 0, 0, 5, "Hunter", "uncategorized", false, false, false}, --Counterattack r3
	[27067] = {0, nil, 0, 0, 0, 5, "Hunter", "uncategorized", false, false, false}, --Counterattack r4
	
	--Rogue
	--Assassination
	[14177] = {180, nil, 180, 180, 180, 3, "Rogue", "nuke", false, false, false}, --Cold Blood
	[408] = {20, nil, 20, 20, 20, 0, "Rogue", "stun", false, false, false}, --Kidney Shot r1
	[8643] = {20, nil, 20, 20, 20, 0, "Rogue", "stun", false, false, false}, --Kidney Shot r2
	--detect
	[1329] = {0, nil, 0, 0, 0, 3, "Rogue", "uncategorized", false, false, false}, --Mutilate r1
	[34411] = {0, nil, 0, 0, 0, 3, "Rogue", "uncategorized", false, false, false}, --Mutilate r2
	[34412] = {0, nil, 0, 0, 0, 3, "Rogue", "uncategorized", false, false, false}, --Mutilate r3
	[34413] = {0, nil, 0, 0, 0, 3, "Rogue", "uncategorized", false, false, false}, --Mutilate r4
	--Combat
	[13750] = {300, nil, 300, 300, 300, 4, "Rogue", "nuke", false, false, true}, --Adrenaline Rush
	[13877] = {120, nil, 120, 120, 120, 4, "Rogue", "nuke", false, false, false}, --Blade Flurry
	[5277] = {210, nil, 300, 210, 300, 0, "Rogue", "defensive", false, false, true}, --Evasion r1
	[26669] = {210, nil, 300, 210, 300, 0, "Rogue", "defensive", false, false, true}, --Evasion r2
	[1766] = {10, nil, 10, 10, 10, 0, "Rogue", "silence", false, true, true}, --Kick
	[2983] = {210, nil, 300, 210, 300, 0, "Rogue", "defensive", false, false, true}, --Sprint r1
	[8696] = {210, nil, 300, 210, 300, 0, "Rogue", "defensive", false, false, true}, --Sprint r2
	[11305] = {210, nil, 300, 210, 300, 0, "Rogue", "defensive", false, false, true}, --Sprint r3
	--Subtlety
	[2094] = {90, nil, 180, 180, 90, 0, "Rogue", "cc", false, false, true}, --Blind
	[31224] = {60, nil, 60, 60, 60, 0, "Rogue", "defensive", false, false, true}, --Cloak of Shadows
	[14185] = {600, 
		{
			5277, 26669, --Evasion
			2983, 8696, 11305, --Sprint
			1856, 1857, 26889, --Vanish
			14177, --Cold Blood
			36554 --Shadowstep
		}, 600, 600, 600, 0, "Rogue", "cdreset", false, false, true}, --Preparation

	[36554] = {30, nil, 30, 30, 30, 5, "Rogue", "gapcloser", false, false, false}, --Shadowstep
	[1856] = {210, nil, 300, 300, 210, 0, "Rogue", "defensive", false, false, false}, --Vanish r1
	[1857] = {210, nil, 300, 300, 210, 0, "Rogue", "defensive", false, false, false}, --Vanish r2
	[26889] = {210, nil, 300, 300, 210, 0, "Rogue", "defensive", false, false, false}, --Vanish r3
	[45182] = {60, nil, 60, 60, 60, 5, "Rogue", "defensive", false, false, true}, --Cheating Death (all ranks cast this)

	--Priest
	--Racials
	--Human
	[25441] = {180, nil, 180, 180, 180, 0, "Priest", "silence", false, false, true}, --Feedback
	--Dwarf, Human
	[19203] = {120, nil, 120, 120, 120, 0, "Priest", "defensive", false, false, false}, --Desperate Prayer r1
	[19238] = {120, nil, 120, 120, 120, 0, "Priest", "defensive", false, false, false}, --Desperate Prayer r2
	[19240] = {120, nil, 120, 120, 120, 0, "Priest", "defensive", false, false, false}, --Desperate Prayer r3
	[19241] = {120, nil, 120, 120, 120, 0, "Priest", "defensive", false, false, false}, --Desperate Prayer r4
	[19242] = {120, nil, 120, 120, 120, 0, "Priest", "defensive", false, false, false}, --Desperate Prayer r5
	[19243] = {120, nil, 120, 120, 120, 0, "Priest", "defensive", false, false, false}, --Desperate Prayer r6
	[25437] = {120, nil, 120, 120, 120, 0, "Priest", "defensive", false, false, false}, --Desperate Prayer r7
	[48172] = {120, nil, 120, 120, 120, 0, "Priest", "defensive", false, false, false}, --Desperate Prayer r8
	--Undead
	[2944] = {180, nil, 180, 180, 180, 0, "Priest", "nuke", false, false, false}, --Devouring Plague r1
	[19276] = {180, nil, 180, 180, 180, 0, "Priest", "nuke", false, false, false}, --Devouring Plague r2
	[19277] = {180, nil, 180, 180, 180, 0, "Priest", "nuke", false, false, false}, --Devouring Plague r3
	[19278] = {180, nil, 180, 180, 180, 0, "Priest", "nuke", false, false, false}, --Devouring Plague r4
	[19279] = {180, nil, 180, 180, 180, 0, "Priest", "nuke", false, false, false}, --Devouring Plague r5
	[19280] = {180, nil, 180, 180, 180, 0, "Priest", "nuke", false, false, false}, --Devouring Plague r6
	[25467] = {180, nil, 180, 180, 180, 0, "Priest", "nuke", false, false, false}, --Devouring Plague r7
	--Discipline
	[6346] = {180, nil, 180, 180, 180, 0, "Priest", "anticc", false, false, false}, --Fear Ward
	[14751] = {180, nil, 180, 180, 180, 0, "Priest", "uncategorized", false, false, false}, --Inner Focus
	[33206] = {120, nil, 120, 120, 120, 3, "Priest", "defensive", false, false, false}, --Pain Supression
	[10060] = {180, nil, 180, 180, 180, 3, "Priest", "uncategorized", false, false, false}, --Power infusion
	[17] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r1
	[592] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r2
	[600] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r3
	[3747] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r4
	[6065] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r5
	[6066] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r6
	[10898] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r7
	[10899] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r8
	[10900] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r9
	[10901] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r10
	[25217] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r11
	[25218] = {15, nil, 15, 15, 15, 0, "Priest", "shield", false, false, false}, --Power Word: Shield r12
	--Holy
	--Detection
	--Lightwell it uses a different event, I think it's unnecessary to implement
	[34861] = {0, nil, 0, 0, 0, 4, "Priest", "uncategorized", false, false, false}, --Circle of Healing r1
	[34863] = {0, nil, 0, 0, 0, 4, "Priest", "uncategorized", false, false, false}, --Circle of Healing r2
	[34864] = {0, nil, 0, 0, 0, 4, "Priest", "uncategorized", false, false, false}, --Circle of Healing r3
	[34865] = {0, nil, 0, 0, 0, 4, "Priest", "uncategorized", false, false, false}, --Circle of Healing r4
	[34866] = {0, nil, 0, 0, 0, 4, "Priest", "uncategorized", false, false, false}, --Circle of Healing r5
	--Shadow
	--I think fade is unnecessary even in pve
	[8122] = {26, nil, 30, 30, 26, 0, "Priest", "cc", false, false, true}, --Psychic Scream r1
	[8124] = {26, nil, 30, 30, 26, 0, "Priest", "cc", false, false, true}, --Psychic Scream r2
	[10888] = {26, nil, 30, 30, 26, 0, "Priest", "cc", false, false, true}, --Psychic Scream r3
	[10890] = {26, nil, 30, 30, 26, 0, "Priest", "cc", false, false, true}, --Psychic Scream r4
	[34433] = {300, nil, 300, 300, 300, 0, "Priest", "nuke", false, false, false}, --Shadowfiend
	[15487] = {45, nil, 45, 45, 45, 5, "Priest", "silence", false, true, true}, --Silence
	[32379] = {12, nil, 12, 12, 12, 0, "Priest", "nuke", false, false, false}, --Shadow Word: Death r1
	[32996] = {12, nil, 12, 12, 12, 0, "Priest", "nuke", false, false, false}, --Shadow Word: Death r2
	--Detection
	[15473] = {0, nil, 0, 0, 0, 5, "Priest", "uncategorized", false, false, false}, --Shadowform
	[15286] = {0, nil, 0, 0, 0, 5, "Priest", "uncategorized", false, false, false}, --Vampiric Embrace
	[34914] = {0, nil, 0, 0, 0, 5, "Priest", "uncategorized", false, false, false}, --Vampiric Touch r1
	[34916] = {0, nil, 0, 0, 0, 5, "Priest", "uncategorized", false, false, false}, --Vampiric Touch r2
	[34917] = {0, nil, 0, 0, 0, 5, "Priest", "uncategorized", false, false, false}, --Vampiric Touch r3
	
	--Shaman
	--Elemental
	[8042] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Earth Shock r1
	[8044] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Earth Shock r2
	[8045] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Earth Shock r3
	[8046] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Earth Shock r4
	[10412] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Earth Shock r5
	[10413] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Earth Shock r6
	[10414] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Earth Shock r7
	[25454] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Earth Shock r8
	[8050] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Flame Shock r1
	[8052] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Flame Shock r2
	[8053] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Flame Shock r3
	[10447] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Flame Shock r4
	[10448] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Flame Shock r5
	[29228] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Flame Shock r6
	[25457] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Flame Shock r7
	[8056] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Frost Shock r1
	[8058] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Frost Shock r2
	[10472] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Frost Shock r3
	[10473] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Frost Shock r4
	[25464] = {5, nil, 5, 5, 6, 0, "Shaman", "silence", false, true, false}, --Frost Shock r5
	[2484] = {15, nil, 15, 15, 15, 0, "Shaman", "uncategorized", false, false, false}, --Earthbind Totem
	[16166] = {180, nil, 180, 180, 180, 3, "Shaman", "nuke", false, false, true}, --Elemental Mastery
	[2894] = {1200, nil, 1200, 1200, 1200, 0, "Shaman", "nuke", false, false, false}, --Fire Elemental Totem
	--Detection:
	[30706] = {0, nil, 0, 0, 0, 3, "Shaman", "uncategorized", false, false, false}, --Totem of Wrath
	--Enhancement
	[2825] = {600, nil, 600, 600, 600, 0, "Shaman", "nuke", false, false, true}, --Bloodlust
	[32182] = {600, nil, 600, 600, 600, 0, "Shaman", "nuke", false, false, true}, --Heroism
	[2062] = {1200, nil, 1200, 1200, 1200, 0, "Shaman", "nuke", false, false, false}, --Earth Elemental Totem
	[8177] = {13, nil, 15, 15, 13, 0, "Shaman", "silence", false, true, true}, --Grounding Totem
	[30823] = {120, nil, 120, 120, 120, 4, "Shaman", "defensive", false, false, false}, --Shamanistic Rage
	--Detection
	[17364] = {0, nil, 0, 0, 0, 4, "Shaman", "uncategorized", false, false, false}, --Stormstrike
	--Restoration
	[16190] = {300, nil, 300, 300, 300, 0, "Shaman", "uncategorized", false, false, false}, --Mana Tide Totem
	[16188] = {300, nil, 300, 300, 300, 0, "Shaman", "defensive", false, false, false}, --Nature's Swiftness
	--Detection
	[974] = {0, nil, 0, 0, 0, 5, "Shaman", "uncategorized", false, false, false}, --Earth Shield r1
	[32593] = {0, nil, 0, 0, 0, 5, "Shaman", "uncategorized", false, false, false}, --Earth Shield r2
	[32594] = {0, nil, 0, 0, 0, 5, "Shaman", "uncategorized", false, false, false}, --Earth Shield r3

	---Mage
	--Freeze triggers no combatlog event
	--Arcane
	[12042] = {180, nil, 180, 180, 180, 3, "Mage", "nuke", false, false, true}, --Arcane Power
	[1953] = {15, nil, 15, 15, 15, 0, "Mage", "gapcloser", false, false, false}, --Blink
	[2139] = {24, nil, 24, 24, 24, 0, "Mage", "silence", false, true, false}, --Counterspell
	[12051] = {480, nil, 480, 480, 480, 0, "Mage", "defensive", false, false, false}, --Evocation
	[66] = {300, nil, 300, 300, 300, 0, "Mage", "defensive", false, false, false}, --Invisibility
	[12043] = {180, nil, 180, 180, 180, 3, "Mage", "nuke", false, false, false}, --Presence of Mind
	[5405] = {120, nil, 120, 120, 120, 0, "Mage", "uncategorized", false, false, false}, --Mana Gem r1
	[10052] = {120, nil, 120, 120, 120, 0, "Mage", "uncategorized", false, false, false}, --Mana Gem r2
	[10057] = {120, nil, 120, 120, 120, 0, "Mage", "uncategorized", false, false, false}, --Mana Gem r3
	[10058] = {120, nil, 120, 120, 120, 0, "Mage", "uncategorized", false, false, false}, --Mana Gem r4
	[27103] = {120, nil, 120, 120, 120, 0, "Mage", "uncategorized", false, false, false}, --Mana Gem r5
	--detection:
	[31589] = {0, nil, 0, 0, 0, 3, "Mage", "", false, false, false}, --Slow
	--Fire
	[11113] = {30, nil, 30, 30, 30, 4, "Mage", "uncategorized", false, false, false}, --Blast Wave r1
	[13018] = {30, nil, 30, 30, 30, 4, "Mage", "uncategorized", false, false, false}, --Blast Wave r2
	[13019] = {30, nil, 30, 30, 30, 4, "Mage", "uncategorized", false, false, false}, --Blast Wave r3
	[13020] = {30, nil, 30, 30, 30, 4, "Mage", "uncategorized", false, false, false}, --Blast Wave r4
	[13021] = {30, nil, 30, 30, 30, 4, "Mage", "uncategorized", false, false, false}, --Blast Wave r5
	[27133] = {30, nil, 30, 30, 30, 4, "Mage", "uncategorized", false, false, false}, --Blast Wave r6
	[33933] = {30, nil, 30, 30, 30, 4, "Mage", "uncategorized", false, false, false}, --Blast Wave r7
	[28682] = {180, nil, 180, 180, 180, 4, "Mage", "nuke", false, false, false}, --Combustion
	[31661] = {20, nil, 30, 30, 30, 4, "Mage", "cc", false, false, false}, --Dragon's Breath r1
	[33041] = {20, nil, 30, 30, 30, 4, "Mage", "cc", false, false, false}, --Dragon's Breath r2
	[33042] = {20, nil, 30, 30, 30, 4, "Mage", "cc", false, false, false}, --Dragon's Breath r3
	[33043] = {20, nil, 30, 30, 30, 4, "Mage", "cc", false, false, false}, --Dragon's Breath r4
	[543] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Fire Ward r1
	[8457] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Fire Ward r2
	[8458] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Fire Ward r3
	[10223] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Fire Ward r4
	[10225] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Fire Ward r5
	[27128] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Fire Ward r6

	--Frost
	[11958] = {384, 
		{
			122, 865, 6131, 10230, 27088, --Frost Nova
			543, 8457, 8458, 10223, 10225, 27128, --Fire Ward
			6143, 8461, 8462, 10177, 28609, 32796, --Frost Ward
			11426, 13031, 13032, 13033, 27134, 33405, --Ice Barrier
			45438, --Ice Block
			12472, --Icy Veins
			31687 --Summon Water Elemental
		}, 384, 384, 384, 5, "Mage", "cdreset", false, false, false}, --Cold Snap

	[122] = {21, nil, 21, 21, 21, 0, "Mage", "cc", false, false, false}, --Frost Nova r1
	[865] = {21, nil, 21, 21, 21, 0, "Mage", "cc", false, false, false}, --Frost Nova r2
	[6131] = {21, nil, 21, 21, 21, 0, "Mage", "cc", false, false, false}, --Frost Nova r3
	[10230] = {21, nil, 21, 21, 21, 0, "Mage", "cc", false, false, false}, --Frost Nova r4
	[27088] = {21, nil, 21, 21, 21, 0, "Mage", "cc", false, false, false}, --Frost Nova r5
	[6143] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Frost Ward r1
	[8461] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Frost Ward r2
	[8462] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Frost Ward r3
	[10177] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Frost Ward r4
	[28609] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Frost Ward r5
	[32796] = {30, nil, 30, 30, 30, 0, "Mage", "shield", false, false, false}, --Frost Ward r6
	[11426] = {24, nil, 24, 24, 24, 5, "Mage", "shield", false, false, false}, --Ice Barrier r1
	[13031] = {24, nil, 24, 24, 24, 5, "Mage", "shield", false, false, false}, --Ice Barrier r2
	[13032] = {24, nil, 24, 24, 24, 5, "Mage", "shield", false, false, false}, --Ice Barrier r3
	[13033] = {24, nil, 24, 24, 24, 5, "Mage", "shield", false, false, false}, --Ice Barrier r4
	[27134] = {24, nil, 24, 24, 24, 5, "Mage", "shield", false, false, false}, --Ice Barrier r5
	[33405] = {24, nil, 24, 24, 24, 5, "Mage", "shield", false, false, false}, --Ice Barrier r6
	[45438] = {240, nil, 300, 300, 240, 0, "Mage", "anticc", false, false, false}, --Ice Block
	[12472] = {180, nil, 180, 180, 180, 0, "Mage", "nuke", false, false, false}, --Icy Veins
	[31687] = {180, nil, 180, 180, 180, 5, "Mage", "nuke", false, false, false}, --Summon Water Elemental
	
	--Warlock
	--Pets
	[19647] = {24, nil, 0, 0, 0, 0, "Warlock", "silence", true, true, false}, --Spell Lock
	[47986] = {60, nil, 0, 0, 0, 0, "Warlock", "defensive", true, false, false}, --Sacrifice
	--Affliction
	[6789] = {120, nil, 120, 120, 120, 0, "Warlock", "cc", false, false, false}, --Death Coil r1
	[17925] = {120, nil, 120, 120, 120, 0, "Warlock", "cc", false, false, false}, --Death Coil r2
	[17962] = {120, nil, 120, 120, 120, 0, "Warlock", "cc", false, false, false}, --Death Coil r3
	[27223] = {120, nil, 120, 120, 120, 0, "Warlock", "cc", false, false, false}, --Death Coil r4
	[5484] = {40, nil, 40, 40, 40, 0, "Warlock", "cc", false, false, false}, --Howl of Terror r1
	[17928] = {40, nil, 40, 40, 40, 0, "Warlock", "cc", false, false, false}, --Howl of Terror r2
	[18288] = {180, nil, 180, 180, 180, 0, "Warlock", "nuke", false, false, false}, --Amplify Curse
	--Detection
	[30108] = {0, nil, 0, 0, 0, 3, "Warlock", "uncategorized", false, false, false}, --Unstable Affliction r1
	[30404] = {0, nil, 0, 0, 0, 3, "Warlock", "uncategorized", false, false, false}, --Unstable Affliction r2
	[30405] = {0, nil, 0, 0, 0, 3, "Warlock", "uncategorized", false, false, false}, --Unstable Affliction r3
	[18223] = {0, nil, 0, 0, 0, 3, "Warlock", "uncategorized", false, false, false}, --Curse of Exhaustion
	--Demonology
	[23469] = {120, nil, 120, 120, 120, 0, "", "defensive", false, false, false}, --Healthstone r1
	[23471] = {120, nil, 120, 120, 120, 0, "", "defensive", false, false, false}, --Healthstone r2
	[23473] = {120, nil, 120, 120, 120, 0, "", "defensive", false, false, false}, --Healthstone r3
	[23475] = {120, nil, 120, 120, 120, 0, "", "defensive", false, false, false}, --Healthstone r4
	[23477] = {120, nil, 120, 120, 120, 0, "", "defensive", false, false, false}, --Healthstone r5
	[27237] = {120, nil, 120, 120, 120, 0, "", "defensive", false, false, false}, --Healthstone r6
	[18708] = {900, nil, 900, 900, 900, 0, "Warlock", "defensive", false, false, false}, --Fel Domination
	[6229] = {30, nil, 30, 30, 30, 0, "Warlock", "shield", false, false, false}, --Shadow Ward r1
	[11739] = {30, nil, 30, 30, 30, 0, "Warlock", "shield", false, false, false}, --Shadow Ward r2
	[11740] = {30, nil, 30, 30, 30, 0, "Warlock", "shield", false, false, false}, --Shadow Ward r3
	[28610] = {30, nil, 30, 30, 30, 0, "Warlock", "shield", false, false, false}, --Shadow Ward r4
	--Destruction
	[30283] = {20, nil, 20, 20, 20, 5, "Warlock", "stun", false, false, false}, --Shadowfury r1
	[30413] = {20, nil, 20, 20, 20, 5, "Warlock", "stun", false, false, false}, --Shadowfury r2
	[30414] = {20, nil, 20, 20, 20, 5, "Warlock", "stun", false, false, false}, --Shadowfury r3

	--Druid
	--Balance
	[22812] = {60, nil, 60, 60, 60, 0, "Druid", "defensive", false, false, false}, --Barkskin
	[33831] = {180, nil, 180, 180, 180, 3, "Druid", "nuke", false, false, false}, --Force of Nature
	[29166] = {360, nil, 360, 360, 360, 0, "Druid", "defensive", false, false, false}, --Innervate
	[16689] = {60, nil, 60, 60, 60, 0, "Druid", "cc", false, false, false}, --Nature's Grasp r1
	[16810] = {60, nil, 60, 60, 60, 0, "Druid", "cc", false, false, false}, --Nature's Grasp r2
	[16811] = {60, nil, 60, 60, 60, 0, "Druid", "cc", false, false, false}, --Nature's Grasp r3
	[16812] = {60, nil, 60, 60, 60, 0, "Druid", "cc", false, false, false}, --Nature's Grasp r4
	[16813] = {60, nil, 60, 60, 60, 0, "Druid", "cc", false, false, false}, --Nature's Grasp r5
	[17329] = {60, nil, 60, 60, 60, 0, "Druid", "cc", false, false, false}, --Nature's Grasp r6
	[27009] = {60, nil, 60, 60, 60, 0, "Druid", "cc", false, false, false}, --Nature's Grasp r7
	--Feral
	[5211] = {60, nil, 60, 60, 60, 0, "Druid", "stun", false, false, false}, --Bash r1
	[6798] = {60, nil, 60, 60, 60, 0, "Druid", "stun", false, false, false}, --Bash r2
	[8983] = {60, nil, 60, 60, 60, 0, "Druid", "stun", false, false, false}, --Bash r3
	[1850] = {300, nil, 300, 300, 300, 0, "Druid", "defensive", false, false, false}, --Dash r1
	[9821] = {300, nil, 300, 300, 300, 0, "Druid", "defensive", false, false, false}, --Dash r2
	[33357] = {300, nil, 300, 300, 300, 0, "Druid", "defensive", false, false, false}, --Dash r3
	[5229] = {60, nil, 60, 60, 60, 0, "Druid", "uncategorized", false, false, false}, --Enrage
	[16979] = {15, nil, 15, 15, 15, 0, "Druid", "silence", false, false, false}, --Feral Charge - Bear
	[22842] = {180, nil, 180, 180, 180, 0, "Druid", "defensive", false, false, false}, --Frenzied Regeneration
	--Restoration
	[17116] = {180, nil, 180, 180, 180, 5, "Druid", "defensive", false, false, false}, --Nature's Swiftness
	[18562] = {15, nil, 15, 15, 15, 5, "Druid", "defensive", false, false, false}, --Swiftmend
	[740] = {600, nil, 480, 480, 600, 0, "Druid", "defensive", false, false, false}, --Tranquility r1
	[8918] = {600, nil, 600, 480, 600, 0, "Druid", "defensive", false, false, false}, --Tranquility r2
	[9862] = {600, nil, 600, 480, 600, 0, "Druid", "defensive", false, false, false}, --Tranquility r3
	[9863] = {600, nil, 600, 480, 600, 0, "Druid", "defensive", false, false, false}, --Tranquility r4
	[26983] = {600, nil, 600, 480, 600, 0, "Druid", "defensive", false, false, false}, --Tranquility r5
}