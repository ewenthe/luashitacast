local profile = {}

local fastCastValue = 0.02 -- 0% from gear

local parade_gorget = true

local hercules_ring = true
local hercules_ring_slot = 'Ring1'

-- Replace these with '' if you do not have them
local gallant_leggings = 'Glt. Leggings +1'
local valor_coronet = 'Valor Coronet'
local valor_surcoat = 'Valor Surcoat'
local valor_gauntlets = 'Vlr. Gauntlets +1'
local valor_leggings = 'Valor Leggings'

        -- Sub = 'Nms. Shield +1',
        -- Ear1 = 'Hades Earring',
        -- Back = 'Shadow Mantle',
        -- Ear1 = 'Cassie Earring',
        -- Ear1 = 'Buckler Earring',

local sets = {
    Idle = {
        Main = 'Durandal',
        -- Sub = 'Master Shield',
        Sub = 'Koenig Shield',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'displaced',
        Body = 'Royal Cloak',
        Neck = 'Shield Torque',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Bloodbead Earring',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Sattva Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1',
        Feet = 'Glt. Leggings +1',
    },
    IdleALT = {
        Main = 'Terra\'s Staff', -- 20
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'displaced',
        Body = 'Royal Cloak',
        Neck = 'Jeweled Collar',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Bloodbead Earring',
        Hands = 'Dst. Mittens +1', -- 2
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Sattva Ring', -- 5
        Back = 'Valor Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1', -- 3
        Feet = 'Dst. Leggings +1', -- 2
    },
    IdleDT = {
        Main = 'Durandal',
        -- Sub = 'Master Shield',
        Sub = 'Koenig Shield',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Darksteel Cap +1',
        Body = 'Dst. Harness +1',
        Neck = 'Shield Torque',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Bloodbead Earring',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Jelly Ring',
        Ring2 = 'Sattva Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1',
        Feet = 'Glt. Leggings +1',
    },
    IdleALTDT = {
        Main = 'Terra\'s Staff', -- 20
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Darksteel Cap +1', -- 2
        Body = 'Dst. Harness +1', -- 4
        Neck = 'Jeweled Collar',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Bloodbead Earring',
        Hands = 'Dst. Mittens +1', -- 2
        Ring1 = 'Jelly Ring', -- 5
        Ring2 = 'Sattva Ring', -- 5
        Back = 'Valor Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1', -- 3
        Feet = 'Dst. Leggings +1', -- 2
    },
    Resting = {
        Main = 'Pluto\'s Staff',
        Sub = '',
        Ear1 = 'Relaxing Earring',
        Ear2 = 'Magnetic Earring',
    },
    Town = {
        Main = 'Durandal',
        Sub = 'Koenig Shield',
        Head = 'Darksteel Cap +1',
        Body = 'Ducal Aketon',
        Hands = 'Vlr. Gauntlets +1',
        Legs = 'Valor Breeches',
        Feet = 'Valor Leggings',
    },
    Movement = {
        Legs = 'Blood Cuisses',
    },

    DT = {
        Main = 'Terra\'s Staff', -- 20
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Darksteel Cap +1', -- 2
        Body = 'Dst. Harness +1', -- 4
        Neck = 'Jeweled Collar',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Bloodbead Earring',
        Hands = 'Dst. Mittens +1', -- 2
        Ring1 = 'Jelly Ring', -- 5
        Ring2 = 'Sattva Ring', -- 5
        Back = 'Valor Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1', -- 3
        Feet = 'Dst. Leggings +1', -- 2
    },
    MDT = { -- Shell IV provides 23% MDT
        Main = 'Terra\'s Staff',
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Darksteel Cap +1',
        Neck = 'Jeweled Collar',
        Ear1 = 'Merman\'s Earring', -- 2
        Ear2 = 'Merman\'s Earring', -- 2
        Body = 'Cor. Scale Mail +1', -- 4
        Hands = 'Coral Fng. Gnt. +1', -- 2
        Ring1 = 'Merman\'s Ring', -- 4
        Ring2 = 'Sattva Ring', -- 5
        Back = 'Valor Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Coral Cuisses +1', -- 3
        Feet = 'Coral Greaves +1', -- 2
    },
    FireRes = {
        Main = 'Neptune\'s Staff', -- 20
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Green Ribbon +1', -- 10
        Neck = 'Jeweled Collar', -- 10
        Ear1 = 'Cmn. Earring', -- 11
        Ear2 = 'Cmn. Earring', -- 11
        -- Body = 'Assault Brstplate', -- 15
        Hands = 'Tarasque Mitts', -- 5
        Ring1 = 'Ruby Ring', -- 9
        Ring2 = 'Malflame Ring', -- 10
        Back = 'Dino Mantle',
        Waist = 'Water Belt', -- 20
        Legs = 'Blood Cuisses', -- 21
        Feet = 'Power Sandals', -- 7
    },
    IceRes = {
        Main = 'Vulcan\'s Staff', -- 20
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Green Ribbon +1', -- 10
        Neck = 'Jeweled Collar', -- 10
        Ear1 = 'Diamond Earring', -- 10
        Ear2 = 'Diamond Earring', -- 10
        -- Body = 'Assault Brstplate', -- 15
        Hands = 'Feral Gloves', -- 4
        Ring1 = 'Diamond Ring', -- 9
        Ring2 = 'Malfrost Ring', -- 10
        Back = 'Ram Mantle +1', -- 6
        Waist = 'Fire Belt', -- 20
        Legs = 'Feral Trousers', -- 6
        Feet = 'Blood Greaves', -- 21
    },
    LightningRes = {
        Main = 'Terra\'s Staff', -- 20
        Sub = '',
        Range = 'Lightning Bow +1', -- 7
        Ammo = '',
        Head = 'Green Ribbon +1', -- 10
        Neck = 'Jeweled Collar', -- 10
        Ear1 = 'Robust Earring', -- 11
        Ear2 = 'Topaz Earring', -- 10
        -- Body = 'Assault Brstplate', -- 15
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Spinel Ring', -- 9
        Ring2 = 'Malflash Ring', -- 10
        Back = 'Gaia Mantle', -- 10
        Waist = 'Earth Belt', -- 20
        Legs = 'Blood Cuisses', -- 21
        Feet = 'Dst. Leggings +1',
    },
    EarthRes = {
        Main = 'Auster\'s Staff', -- 20
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Green Ribbon +1', -- 10
        Neck = 'Jeweled Collar', -- 10
        Ear1 = 'Robust Earring', -- 11
        Ear2 = 'Topaz Earring', -- 10
        -- Body = 'Assault Brstplate', -- 15
        Hands = 'Coral Fng. Gnt. +1',
        Ring1 = 'Topaz Ring', -- 9
        Ring2 = 'Maldust Ring', -- 10
        Back = 'Gaia Mantle', -- 10
        Waist = 'Wind Belt', -- 20
        Legs = 'Beak Trousers +1', -- 7
        Feet = 'Blood Greaves', -- 21
    },
    WindRes = {
        Main = 'Aquilo\'s Staff', -- 20
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Green Ribbon +1', -- 10
        Neck = 'Jeweled Collar', -- 10
        Ear1 = 'Diamond Earring', -- 10
        Ear2 = 'Diamond Earring', -- 10
        -- Body = 'Assault Brstplate', -- 15
        Hands = 'Coral Fng. Gnt. +1',
        Ring1 = 'Emerald Ring', -- 9
        Ring2 = 'Malgust Ring', -- 10
        Back = 'Valor Cape',
        Waist = 'Ice Belt', -- 20
        Legs = 'Coral Cuisses +1',
        Feet = 'Blood Greaves', -- 21
    },
    WaterRes = {
        Main = 'Jupiter\'s Staff', -- 20
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Green Ribbon +1', -- 10
        Neck = 'Jeweled Collar', -- 10
        Ear1 = 'Cmn. Earring', -- 11
        Ear2 = 'Cmn. Earring', -- 11
        -- Body = 'Assault Brstplate', -- 15
        Hands = 'Coral Fng. Gnt. +1', -- 4
        Ring1 = 'Sapphire Ring', -- 9
        Ring2 = 'Malflood Ring', -- 10
        Back = 'Valor Cape',
        Waist = 'Lightning Belt', -- 20
        Legs = 'Blood Cuisses', -- 21
        Feet = 'Coral Greaves +1', -- 4
    },
    Evasion = {},

    Precast = {
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Bloodbead Earring',
        -- Legs = 'Homam Cosciales',
    },
    SIRD = { -- 102% to Cap
        Main = 'Durandal',
        -- Sub = 'Master Shield',
        Sub = 'Koenig Shield',
        Head = 'Koenig Schaller',
        Neck = 'Willpower Torque', -- 5
        Ear1 = 'Magnetic Earring', -- 8
        -- Ear2 = 'Knightly Earring', -- 9
        Ear2 = 'Bloodbead Earring',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Sattva Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Silver Obi +1', -- 8
        Legs = 'Valor Breeches', -- 10
        Feet = 'Mountain Gaiters', -- 5
    },
    Haste = {
        Main = 'Durandal',
        Sub = 'Koenig Shield',
        Head = 'Homam Zucchetto', -- 3
        Neck = 'Willpower Torque',
        Ear1 = 'Loquac. Earring', -- FC
        Ear2 = 'Magnetic Earring',
        Body = 'Dst. Harness +1',
        -- Hands = 'Homam Manopolas', -- 3
        Hands = 'Dusk Gloves', -- 3
        -- Ring1 = 'Blitz Ring', -- 1
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Sattva Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Swift Belt', -- 4
        -- Legs = 'Homam Cosciales', -- 3
        -- Feet = 'Homam Gambieras', -- 3
        Feet = 'Dusk Ledelsens', -- 2
    },
    Haste_Ichi = { -- Optional, provided here only if you wish to mix in SIRD or other stats over max haste
    },

    Hate = {
        Main = 'Durandal',
        Sub = 'Koenig Shield',
        Head = 'Aegishjalmr',
        -- Head = 'Bahamut\'s Mask',
        Neck = 'Harmonia\'s Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Valor Surcoat',
        Hands = 'Vlr. Gauntlets +1',
        Ring1 = 'Hercules\' Ring',
        Ring2 = 'Sattva Ring',
        Back = 'Valor Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Valor Breeches',
        Feet = 'Valor Leggings',
    },
    Hate_Flash = { -- Optional, provided here only if you wish to mix in haste or other stats over max +enmity
        Main = 'Durandal',
        Sub = 'Koenig Shield',
        Head = 'Homam Zucchetto',
        Neck = 'Harmonia\'s Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Valor Surcoat',
        -- Hands = 'Homam Manopolas',
        Hands = 'Dusk Gloves',
        Ring1 = 'Hercules\' Ring',
        Ring2 = 'Sattva Ring',
        Back = 'Valor Cape',
        Waist = 'Swift Belt',
        -- Legs = 'Homam Cosciales',
        -- Feet = 'Homam Gambieras',
        Feet = 'Dusk Ledelsens',
    },
    Cheat_C3HPDown = {
        Main = 'Durandal',
        -- Sub = 'Master Shield',
        Sub = 'Koenig Shield',
        Range = 'Lightning Bow +1',
        Ammo = '',
        Head = 'Darksteel Cap +1',
        Neck = 'Willpower Torque', -- 5
        Ear1 = 'Magnetic Earring', -- 8
        -- Ear2 = 'Knightly Earring', -- 9
        Ear2 = 'Merman\'s Earring',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Sattva Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Silver Obi +1', -- 8
        Legs = 'Valor Breeches', -- 10
        Feet = 'Mountain Gaiters', -- 5
    },
    Cheat_C4HPDown = {
        Main = 'Durandal',
        -- Sub = 'Master Shield',
        Sub = 'Koenig Shield',
        Range = 'Lightning Bow +1',
        Ammo = '',
        Head = 'Faerie Hairpin',
        Neck = 'Star Necklace',
        Ear1 = 'Magnetic Earring',
        -- Ear2 = 'Knightly Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Ether Ring',
        Ring2 = 'Serket Ring',
        Back = 'Settler\'s Cape',
        Waist = 'Quick Belt',
        Legs = 'Valor Breeches',
        Feet = 'Mountain Gaiters',
    },
    Cheat_HPUp = {
        Main = 'Apollo\'s Staff',
        Sub = '',
        Range = 'Rosenbogen',
        Ammo = '',
        Head = 'Aegishjalmr',
        Neck = 'Harmonia\'s Torque',
        Ear1 = 'Hospitaler Earring',
        Ear2 = 'Bloodbead Earring',
        Body = 'Valor Surcoat',
        Hands = 'Vlr. Gauntlets +1',
        Ring1 = 'Bomb Queen Ring',
        Ring2 = 'Sattva Ring',
        Back = 'Valor Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Valor Breeches',
        Feet = 'Valor Leggings',
    },

    LockSet1 = {
        Main = 'Durandal',
        Sub = 'Koenig Shield',
        Head = 'Darksteel Cap +1',
        Body = 'Ducal Aketon',
        Hands = 'Vlr. Gauntlets +1',
        Legs = 'Valor Breeches',
        Feet = 'Valor Leggings',
    },
    LockSet2 = {},
    LockSet3 = {},

    TP_LowAcc = {},
    TP_HighAcc = {},

    WS = {},
    WS_Spirits = {},

    Cover = {
        Head = 'Gallant Coronet',
        Body = 'Dst. Harness +1'
    },
    Cure = {
        Main = 'Apollo\'s Staff',
        Ear1 = 'Hospitaler Earring',
    },
}
profile.Sets = sets

profile.SetMacroBook = function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 3')
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1')

    AshitaCore:GetChatManager():QueueCommand(-1, '/bind F9 //shieldbash')
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind F10 //holy')
end

--[[
--------------------------------
Everything below can be ignored.
--------------------------------
]]

gcmelee = gFunc.LoadFile('common\\gcmelee.lua')

profile.HandleAbility = function()
    gFunc.EquipSet(sets.Hate)

    local action = gData.GetAction()
    if (action.Name == 'Holy Circle' and gallant_leggings ~= '') then
        gFunc.Equip('Legs', gallant_leggings)
    elseif (action.Name == 'Rampart' and valor_coronet ~= '') then
        gFunc.Equip('Head', valor_coronet)
    elseif (action.Name == 'Shield Bash' and valor_gauntlets ~= '') then
        gFunc.Equip('Hands', valor_gauntlets)
    elseif (action.Name == 'Sentinel' and valor_leggings ~= '') then
        gFunc.Equip('Legs', valor_leggings)
    elseif (action.Name == 'Cover') then
        gFunc.EquipSet(sets.Cover)
        if (valor_surcoat ~= '') then
            gFunc.Equip('Body', valor_surcoat)
        end
    end
end

profile.HandleItem = function()
    gcinclude.DoItem()
end

profile.HandlePreshot = function()
    -- You may add logic here
end

profile.HandleMidshot = function()
    -- You may add logic here
end

profile.HandleWeaponskill = function()
    gFunc.EquipSet(sets.WS)

    local action = gData.GetAction()
    if (action.Name == 'Spirits Within') then
        gFunc.EquipSet(sets.WS_Spirits)
    end
end

profile.OnLoad = function()
    gcmelee.Load()
    gcmelee.SetIsDPS(false)
    profile.SetMacroBook()
end

profile.OnUnload = function()
    gcmelee.Unload()
end

profile.HandleCommand = function(args)
    gcmelee.DoCommands(args)
end

local utsuBuffs = T{
    [66] = 1,
    [444] = 2,
    [445] = 3,
    [446] = 4,
}

profile.HandleDefault = function()
    gcmelee.DoDefault()

    local player = gData.GetPlayer()
    if (parade_gorget and player.HPP >= 85) then
        gFunc.Equip('Neck', 'Parade Gorget')
    end

    if (hercules_ring and player.HPP <= 50) then
        gFunc.Equip(hercules_ring_slot, 'Hercules\' Ring')
    end

    if (player.SubJob == 'NIN') then
        local function GetShadowCount()
            for buffId, shadowCount in pairs(utsuBuffs) do
                if (gData.GetBuffCount(buffId) > 0) then
                    return shadowCount
                end
            end

            return 0
        end
        if (GetShadowCount() == 0) then
            gFunc.EquipSet('IdleDT')
            if (gcdisplay.IdleSet == 'Alternate') then gFunc.EquipSet('IdleALTDT') end
        end
    end

    local cover = gData.GetBuffCount('Cover')
    if (cover >= 1) then
        gFunc.EquipSet(sets.Cover)
        if (valor_surcoat ~= '') then
            gFunc.Equip('Body', valor_surcoat)
        end
    end

    gcmelee.DoDefaultOverride()
    gFunc.EquipSet(gcinclude.BuildLockableSet(gData.GetEquipment()))
end

profile.HandlePrecast = function()
    gcmelee.DoPrecast(fastCastValue)
end

profile.HandleMidcast = function()
    gcmelee.DoMidcast(sets)

    local target = gData.GetActionTarget()
    local action = gData.GetAction()
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0)

    if (action.Skill ~= 'Ninjutsu') then
        local sentinel = gData.GetBuffCount('Sentinel')
        if (sentinel >= 1) then
            gFunc.EquipSet(sets.Haste)
        else
            gFunc.EquipSet(sets.Hate)
            if (action.Name == 'Flash') then
                gFunc.EquipSet(sets.Hate_Flash)
            end
        end

        if (action.Skill == 'Healing Magic') then
            gFunc.EquipSet(sets.Cure)
        end
    else
        if (action.Name == 'Utusemi: Ichi') then
            gFunc.EquipSet(sets.Haste_Ichi)
        end
    end

    if (target.Name == me) then
        if (action.Name == 'Cure III') then
            gFunc.InterimEquipSet(sets.Cheat_C3HPDown)
            gFunc.EquipSet(sets.Cheat_HPUp)
        elseif (action.Name == 'Cure IV') then
            gFunc.InterimEquipSet(sets.Cheat_C4HPDown)
            gFunc.EquipSet(sets.Cheat_HPUp)
        end
    end
end

return profile
