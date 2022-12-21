
IncludeFile("Lib\\SDK.lua")

local BOTAIO = { "Xayah", "Rakan"}
local ScriptXan = 0.4
local NameCreat = "Jace Nicky"

function OnLoad()    
    if table.contains(BOTAIO, myHero.CharName) then 
        __PrintTextGame("<b><font color=\"#00FF00\">XaKanAIO</font></b> " ..myHero.CharName.. "<b><font color=\"#FF0000\"> Good Game!</font></b>")
        __PrintTextGame("<b><font color=\"#00FF00\">XaKanAIO, v</font></b> " ..ScriptXan)
        __PrintTextGame("<b><font color=\"#00FF00\">By: </font></b> " ..NameCreat)
        _G[myHero.CharName]()
    end
end

class "Xayah"

function Xayah:__init()
    self:Load()
end

function Xayah:Load()

    self.spells = 
    {
        {Name = "Warwick",      MenuName = "R | Infinite Duress",           SpellName = "WarwickR", ValueSpell = true},
        {Name = "Jinx",         MenuName = "R | BOOM!",           SpellName = "JinxR", ValueSpell = true},
        {Name = "Urgot",        MenuName = "E | Disdain",                   SpellName = "UrgotE", ValueSpell = true},
        {Name = "Vayne",        MenuName = "Q | Tumble",                    SpellName = "VayneTumble", ValueSpell = true},
        {Name = "Kayn",         MenuName = "Q | Reaping Slash",             SpellName = "KaynQ", ValueSpell = true},
        {Name = "Nidalee",      MenuName = "W | Pounce",                    SpellName = "Pounce", ValueSpell = true},
        {Name = "Ornn",         MenuName = "E | Searing Charge",            SpellName = "OrnnE", ValueSpell = true},
        {Name = "Ekko",         MenuName = "E | Phase Dive Attack",         SpellName = "EkkoEAttack", ValueSpell = true},
        {Name = "Ekko",         MenuName = "E | Phase Dive",                SpellName = "EkkoE", ValueSpell = true},       
        {Name = "Zac",          MenuName = "E | Elastic Slingshot",         SpellName = "ZacE", ValueSpell = true},
        {Name = "Galio",        MenuName = "E | Justice Punch",             SpellName = "GalioE", ValueSpell = true},
        {Name = "Shyvana",      MenuName = "R | Dragon's Descent",          SpellName = "ShyvanaTransformLeap", ValueSpell = true},
        {Name = "Rakan",        MenuName = "W | Grand Entrance",            SpellName = "RakanW", ValueSpell = true},
        {Name = "Kindred",      MenuName = "Q | Dance of Arrows",           SpellName = "KindredQ", ValueSpell = true},
        {Name = "Ezreal",       MenuName = "E | ArcaneShift",               SpellName = "EzrealArcaneShift", ValueSpell = true},
        {Name = "Camille",      MenuName = "E | Hookshot",                  SpellName = "CamilleE", ValueSpell = true},
        {Name = "Camille",      MenuName = "E | Hookshot Dash",             SpellName = "CamilleEDash2", ValueSpell = true},
        {Name = "Aatrox",       MenuName = "Q | Dark Flight",               SpellName = "AatroxQ", ValueSpell = true},
        {Name = "Ahri",         MenuName = "R | Spirit Rush",               SpellName = "AhriTumble", ValueSpell = true},
        {Name = "Akali",        MenuName = "R | Shadow Dance",              SpellName = "AkaliShadowDance", ValueSpell = true},
        {Name = "MasterYi",     MenuName = "Q | Alpha Strike",              SpellName = "AlphaStrike", ValueSpell = true},
        {Name = "Amumu",        MenuName = "Q | Bandage Toss",              SpellName = "BandageToss", ValueSpell = true},
        {Name = "FiddleSticks", MenuName = "R | Crowstorm ",                SpellName = "Crowstorm", ValueSpell = true},
        {Name = "Diana",        MenuName = "R | Lunar Rush",                SpellName = "DianaTeleport", ValueSpell = true},
        {Name = "Elise",        MenuName = "E | Rappel",                    SpellName = "EliseSpiderEDescent", ValueSpell = true},
        {Name = "Elise",        MenuName = "Q | Venomous Bite",             SpellName = "EliseSpiderQCast", ValueSpell = true},
        {Name = "Fiora",        MenuName = "Q | Lunge",                     SpellName = "FioraQ", ValueSpell = true},
        {Name = "Fizz",         MenuName = "E | Trickster",                 SpellName = "FizzETwo", ValueSpell = true},
        {Name = "Fizz",         MenuName = "Q | Urchin Strike",             SpellName = "FizzQ", ValueSpell = true},
        {Name = "Garen",        MenuName = "Q | Decisive Strike",           SpellName = "GarenQ", ValueSpell = true},
        {Name = "Gnar",         MenuName = "E | Crunch",                    SpellName = "GnarBigE", ValueSpell = true},
        {Name = "Gnar",         MenuName = "E | Hop",                       SpellName = "GnarE", ValueSpell = true},
        {Name = "Gragas",       MenuName = "E | Body Slam",                 SpellName = "GragasE", ValueSpell = true},
        {Name = "Graves",       MenuName = "E | Quickdraw",                 SpellName = "GravesMove", ValueSpell = true},
        {Name = "Alistar",      MenuName = "W | Headbutt",                  SpellName = "Headbutt", ValueSpell = true},
        {Name = "Hecarim",      MenuName = "R | Onslaught of Shadows",      SpellName = "HecarimUlt", ValueSpell = true},
        {Name = "Irelia",       MenuName = "Q | Bladesurge",                SpellName = "IreliaGatotsu", ValueSpell = true},
        {Name = "JarvanIV",     MenuName = "R | Cataclysm",                 SpellName = "JarvanIVCataclysm", ValueSpell = true},  
        {Name = "JarvanIV",     MenuName = "Q | Dragon Strike",             SpellName = "JarvanIVDragonStrike", ValueSpell = true},
        {Name = "LeeSin",       MenuName = "Q | Resonating Strike",         SpellName = "BlindMonkQTwo", ValueSpell = true},
        {Name = "LeeSin",       MenuName = "W | Safeguard",                 SpellName = "BlindMonkWOne", ValueSpell = true},
        {Name = "Jax",          MenuName = "Q | Leap Strike",               SpellName = "JaxLeapStrike", ValueSpell = true},
        {Name = "Jayce",        MenuName = "W | To The Skies!",             SpellName = "JayceToTheSkies", ValueSpell = true},
        {Name = "Katarina",     MenuName = "E | Shunpo",                    SpellName = "KatarinaE", ValueSpell = true},
        {Name = "Kennen",       MenuName = "E | Lightning Rush",            SpellName = "KennenLightningRush", ValueSpell = true},
        {Name = "Khazix",       MenuName = "E | Leap",                      SpellName = "KhazixE", ValueSpell = true},
        {Name = "Leblanc",      MenuName = "W | Distortion",                SpellName = "LeblancW", ValueSpell = true},
        {Name = "Leblanc",      MenuName = "R | Distortion",                SpellName = "LeblancSlideM", ValueSpell = true},
        {Name = "Leona",        MenuName = "E | Zenith Blade",              SpellName = "LeonaZenithBlade", ValueSpell = true},
        {Name = "Lissandra",    MenuName = "E | Glacial Path",              SpellName = "LissandraE", ValueSpell = true},
        {Name = "Lucian",       MenuName = "E | Relentless Pursuit",        SpellName = "LucianE", ValueSpell = true},
        {Name = "Maokai",       MenuName = "W | Twisted Advance",           SpellName = "MaokaiW", ValueSpell = true},
        {Name = "MonkeyKing",   MenuName = "E | Nimbus Strike",             SpellName = "MonkeyKingNimbus", ValueSpell = true},
        {Name = "Missfortune",  MenuName = "R | Miss Strike",               SpellName = "MissFortuneBulletTime", ValueSpell = true},
        {Name = "Morgana",      MenuName = "Q | Dark Binding",               SpellName = "DarkBindingMissile", ValueSpell = true},
        {Name = "Nautilus",     MenuName = "Q | Dredge Line",               SpellName = "NautilusAnchorDrag", ValueSpell = true},
        {Name = "Pantheon",     MenuName = "W | Aegis of Zeonia",           SpellName = "PantheonW", ValueSpell = true},
        {Name = "Poppy",        MenuName = "E | Heroic Charge",             SpellName = "PoppyE", ValueSpell = true},
        {Name = "Quinn",        MenuName = "E | Vault",                     SpellName = "QuinnE", ValueSpell = true},
        {Name = "Renekton",     MenuName = "E | Slice",                     SpellName = "RenektonSliceAndDice", ValueSpell = true},
        {Name = "Renekton",     MenuName = "E | Slice 2",                   SpellName = "RenektonDice", ValueSpell = true},
        {Name = "Kassadin",     MenuName = "R | Riftwalk",                  SpellName = "RiftWalk", ValueSpell = true},
        {Name = "Riven",        MenuName = "Q | Broken Wings",              SpellName = "RivenTriCleave", ValueSpell = true},
        {Name = "Riven",        MenuName = "E | RivenFeint",                SpellName = "RivenFeint", ValueSpell = true},
        {Name = "Tristana",     MenuName = "W | Rocket Jump",               SpellName = "TristanaW", ValueSpell = true},
        {Name = "Sejuani",      MenuName = "Q | Arctic Assault",            SpellName = "SejuaniQ", ValueSpell = true},
        {Name = "Shen",         MenuName = "E | Shadow Dash",               SpellName = "ShenE", ValueSpell = true},
        {Name = "Talon",        MenuName = "Q | Noxian Diplomacy",          SpellName = "TalonQ", ValueSpell = true},
        {Name = "Malphite",     MenuName = "R | Unstoppable Force",         SpellName = "UFSlash", ValueSpell = true},
        {Name = "Udyr",         MenuName = "E | Bear Stance",               SpellName = "UdyrBearStance", ValueSpell = true}, 
        {Name = "Corki",        MenuName = "W | Valkyrie",                  SpellName = "CarpetBomb", ValueSpell = true},
        {Name = "Vi",           MenuName = "Q | Vault Breaker",             SpellName = "ViQ", ValueSpell = true},
        {Name = "Volibear",     MenuName = "Q | Rolling Thunder",           SpellName = "VolibearQ", ValueSpell = true},
        {Name = "XinZhao",      MenuName = "E | Crescent Sweep",            SpellName = "XinZhaoE", ValueSpell = true},
        {Name = "Yasuo",        MenuName = "E | Sweeping Blade",            SpellName = "YasuoDashWrapper", ValueSpell = true},    
        {Name = "Khazix",       MenuName = "E | Leap",                      SpellName = "KhazixELong", ValueSpell = true},
        {Name = "RekSai",       MenuName = "E | Tunnel",                    SpellName = "reksaieburrowed", ValueSpell = true},
        {Name = "Tryndamere",   MenuName = "E | Spinning Slash",            SpellName = "TryndamereE", ValueSpell = true}
    }

    myHero = GetMyHero()

    self.Inter = {["KatarinaR"] = true, ["AlZaharNetherGrasp"] = true, ["TwistedFateR"] = true, ["VelkozR"] = true, ["InfiniteDuress"] = true, ["JhinR"] = true, ["CaitlynAceintheHole"] = true, ["UrgotSwap2"] = true, ["LucianR"] = true, ["GalioIdolOfDurand"] = true, ["MissFortuneBulletTime"] = true, ["XerathLocusPulse"] = true,}
  
    self.Q = Spell({Slot = 0, SpellType = Enum.SpellType.SkillShot, Range = 1075, SkillShotType = Enum.SkillShotType.Line, Collision = false, Width = 160, Delay = 400, Speed = 2000})
    self.W = Spell({Slot = 1, SpellType = Enum.SpellType.Active, Range = 0})
    self.E = Spell({Slot = 2, SpellType = Enum.SpellType.Active, Range = 1075})
    self.R = Spell({Slot = 3, SpellType = Enum.SpellType.SkillShot, Range = 1040, SkillShotType = Enum.SkillShotType.Line, Collision = false, Width = 160, Delay = 400, Speed = 2000})

    self.Pull = { }
    self.CountPull = 0
    self.Pac = false
    self.Ally = {}
    --self.enemyHeros = GetEnemyHeroes()

    --XayahPassiveActive

    AddEvent(Enum.Event.OnTick, function(...) self:OnTick(...) end)
    AddEvent(Enum.Event.OnUpdateBuff, function(...) self:OnUpdateBuff(...) end)
    AddEvent(Enum.Event.OnRemoveBuff, function(...) self:OnRemoveBuff(...) end)
    AddEvent(Enum.Event.OnCreateObject, function(...) self:OnCreateObject(...) end)
    AddEvent(Enum.Event.OnDeleteObject, function(...) self:OnDeleteObject(...) end)
    AddEvent(Enum.Event.OnProcessSpell, function(...) self:OnProcessSpell(...) end) 
    AddEvent(Enum.Event.OnDraw, function(...) self:OnDraw(...) end)
    AddEvent(Enum.Event.OnDrawMenu, function(...) self:OnDrawMenu(...) end)

    self:MenuXayah()
end 

function Xayah:MenuXayah()
    self.menu = "Xayah - AIO"
    self.SpellAdded = false
    --Combo [[ Xayah ]]
    self.CQ = self:MenuBool("Combo Q", true)
    self.CW = self:MenuBool("Combo W", true)
    self.CE = self:MenuBool("Combo E", true)
    self.CR = self:MenuBool("Combo R", true)
    self.PE = self:MenuSliderInt("Min number of feathers to hit", 3)
    self.LOR = self:MenuSliderInt("Min number of feathers to hit", 3)
    self.ML = self:MenuSliderInt("Mana Clear", 40)
    self.BuffPassive = self:MenuBool("Active Buff (Rakan)", true)
    self.Rmode = self:MenuComboBox("Mode [R] Spell", 2)
    --self.EvadeR = self:MenuBool("Evade [R]", true)

    self.EvadeLife = self:MenuSliderInt("Life [Evade]", 100)

    --Stomp Hitchance
    self.HitQ = self:MenuSliderInt("HitChance ", 5)
    self.HitE = self:MenuSliderInt("HitChance ", 5)
    self.HitR = self:MenuSliderInt("HitChance ", 5)

     --Lane
    self.LQ = self:MenuBool("Lane Q", true)
    self.LE = self:MenuBool("Lane E", true)

    --KillSteal [[ Xayah ]]
    self.KQ = self:MenuBool("KillSteal > Q", true)
    self.KR = self:MenuBool("KillSteal > R", true)
    self.KE = self:MenuBool("KillSteal > E", true)

    self.AutoEStun = self:MenuBool("Auto E (Stun)", true)

    self.LW = self:MenuBool("Lane W", true)
    -- Misc [[Xayah]]
    self.EInter = self:MenuBool("Interrupt Spells > E", true)

    --[[self.AH = Menu_SliderInt("Ally Hit", self.PE, 0, 5, self.menu)
                self.EH = Menu_SliderInt("Enemy Hit", self.PE, 0, 5, self.menu)
                self.MI = Menu_SliderInt("My living", self.PE, 0, 100, self.menu)
                self.LE = Menu_SliderInt("Living Enemy", self.PE, 0, 100, self.menu)]]

    for _, enemy in pairs(self:GetEnemies()) do
    for i = 1, #self.spells do
        if GetAIHero(enemy).CharName == self.spells[i].Name then
        self.spells[i].ValueSpell = self:MenuBool(self.spells[i].Name.." | "..self.spells[i].MenuName, true)
        end
        end
    end

    self.AH = self:MenuSliderInt("Ally Hit ", 1)
    self.EH = self:MenuSliderInt("Enemy Hit ", 1)
    self.MI = self:MenuSliderInt("My Living ", 30)
    self.LE = self:MenuSliderInt("Living Enemy ", 50)
            

    --Draws [[ Xayah ]]
    self.DQWER = self:MenuBool("Draw On/Off", false)
    self.DrawFeather = self:MenuBool("Draw Feather", true)
    self.DQ = self:MenuBool("Draw Q", true)
    self.DW = self:MenuBool("Draw W", true)
    self.DE = self:MenuBool("Draw E", true)
    self.DR = self:MenuBool("Draw R", true)

    self.Combo = self:MenuKeyBinding("Combo", 32)
    self.LaneClear = self:MenuKeyBinding("Lane Clear", 86)
    self.Last_Hit = self:MenuKeyBinding("Last Hit", 88)
    self.Flee_Xa = self:MenuKeyBinding("Flee", 90)

end

function Xayah:OnDrawMenu()
    if not Menu_Begin(self.menu) then return end
		if (Menu_Begin("Combo")) then
            self.CQ = Menu_Bool("Combo Q", self.CQ, self.menu)
            self.CW = Menu_Bool("Combo W", self.CW, self.menu)
            self.BuffPassive = Menu_Bool("Active Buff (Rakan)", self.BuffPassive, self.menu)
            self.CE = Menu_Bool("Combo E", self.CE, self.menu)
            self.AutoEStun = Menu_Bool("Auto E (Stun)", self.AutoEStun, self.menu)
            self.CR = Menu_Bool("Combo R", self.CR, self.menu)
            --self.EvadeR = Menu_Bool("Evade [R]", self.EvadeR, self.menu)
            self.PE = Menu_SliderInt("Min number of feathers to hit", self.PE, 0, 10, self.menu)
            self.Rmode = Menu_ComboBox("Mode [R] Spell", self.Rmode, "Stun [R]\0My Hero Position\0Can Kill\0", self.menu)
            if self.Rmode == 2 then
                self.EH = Menu_SliderInt("Enemy Hit", self.EH, 0, 5, self.menu)
                self.MI = Menu_SliderInt("My living", self.MI, 0, 100, self.menu)
                self.LE = Menu_SliderInt("Living Enemy", self.LE, 0, 100, self.menu)
            end
            if self.Rmode == 1 then
                self.EH = Menu_SliderInt("Enemy Hit", self.EH, 0, 5, self.menu)
                self.LE = Menu_SliderInt("Living Enemy", self.LE, 0, 100, self.menu)
            end
            if self.Rmode == 0 then
                self.EH = Menu_SliderInt("Enemy Hit", self.EH, 0, 5, self.menu)
                self.LE = Menu_SliderInt("Living Enemy", self.LE, 0, 100, self.menu)
                self.LOR = Menu_SliderInt("Feathers to hit", self.PE, 0, 5, self.menu)
            end
			Menu_End()
        end
        if (Menu_Begin("Spells Evade [R]")) then
            self.EvadeLife = Menu_SliderInt("Life [Evade]", self.EvadeLife, 0, 10, self.menu)
            for _, enemy in pairs(self:GetEnemies()) do
                for i = 1, #self.spells do
                    if GetAIHero(enemy).CharName == self.spells[i].Name then
                        self.spells[i].ValueSpell = Menu_Bool(self.spells[i].Name.." | "..self.spells[i].MenuName, self.spells[i].ValueSpell, self.menu)
                        self.SpellAdded = true
                    end
                end 
            end
            Menu_End()
        end 
        if (Menu_Begin("Lane")) then
            self.LQ = Menu_Bool("Lane Q", self.LQ, self.menu)
            self.LW = Menu_Bool("Lane W", self.LW, self.menu)
            self.ML = Menu_SliderInt("Mana Clear", self.ML, 0, 100, self.menu)
			Menu_End()
        end
        if (Menu_Begin("Draws")) then
            self.DQWER = Menu_Bool("Draw On/Off", self.DQWER, self.menu)
            self.DrawFeather = Menu_Bool("Draw Feather", self.DrawFeather, self.menu)
            self.DQ = Menu_Bool("Draw Q", self.DQ, self.menu)
            self.DE = Menu_Bool("Draw E", self.DE, self.menu)
			self.DR = Menu_Bool("Draw R", self.DR, self.menu)
			Menu_End()
        end
        if (Menu_Begin("KillSteal")) then
            self.KQ = Menu_Bool("KillSteal > Q", self.KQ, self.menu)
            self.KR = Menu_Bool("KillSteal > R", self.KR, self.menu)
			Menu_End()
        end
        if (Menu_Begin("Misc")) then
            self.EInter = Menu_Bool("Interrupt Spells > E", self.EInter, self.menu)
			Menu_End()
        end
        if (Menu_Begin("HitChance")) then
            self.HitQ = Menu_SliderInt("HitChance > Q", self.HitQ, 0, 5, self.menu)
            self.HitE = Menu_SliderInt("HitChance > E", self.HitE, 0, 5, self.menu)
            self.HitR = Menu_SliderInt("HitChance > R", self.HitR, 0, 5, self.menu)
			Menu_End()
        end
        if (Menu_Begin("Keys")) then
            self.Combo = Menu_KeyBinding("Combo", self.Combo, self.menu)
            self.LaneClear = Menu_KeyBinding("Lane Clear", self.LaneClear, self.menu)
            self.Flee_Xa = Menu_KeyBinding("Flee", self.Flee_Xa, self.menu)
			Menu_End()
        end
	Menu_End()
end

function Xayah:GetHeroes()
	SearchAllChamp()
	local t = pObjChamp
	return t
end

function Xayah:GetEnemies(range)
  local t = {}
  local h = self:GetHeroes()
  for k, v in pairs(h) do
    if v ~= 0 then
      local hero = GetAIHero(v)
      if hero.IsEnemy and hero.IsValid and hero.Type == 0 and (not range or range > GetDistance(hero)) then
        table.insert(t, hero)
      end
    end
  end
  return t
end

local function GetAllyHeroes(range)
    SearchAllChamp()
    local t = pObjChamp

    local result = {}

    for i, v in pairs(t) do
        if v ~= 0 then
            if IsAlly(v) and IsChampion(v) and not IsDead(v) and (not range or range > GetDistance(v)) then
                    table.insert(result, v)
            end
        end 
    end
    return result
end 

function Xayah:OnCreateObject(obj)
    if obj and obj.IsValid and obj.NetworkId and obj.NetworkId ~= 0 then
    if string.find(obj.Name, "Xayah_Base_Passive_Dagger_Mark") then
        self.Pull[obj.NetworkId] = obj
        end 
    end
end

function Xayah:OnDeleteObject(obj)
    if obj and obj.IsValid and obj.NetworkId and obj.NetworkId ~= 0 then
    if string.find(obj.Name, "Xayah_Base_Passive_Dagger_Mark") then
        self.Pull[obj.NetworkId] = nil
        end 
    end
end 

function Xayah:OnUpdateBuff(unit, buff)
    if unit.IsMe and buff.Name == "XayahPassiveActive" then
        self.Pac = true
    end
end

function Xayah:OnRemoveBuff(unit, buff)
	if unit.IsMe and buff.Name == "XayahPassiveActive" then
        self.Pac = false 
    end
end

function Xayah:OnProcessSpell(unit, spell)
    if unit and unit.IsEnemy and self.EInter and self.Inter[spell.Name] then
        if self.E:IsReady() then
            local featherHitCount = 0
            for i, feather in pairs(self.Pull) do
                if self:IsOnEPath(unit, feather) then
                    featherHitCount = featherHitCount + 1
                end
            end
            if featherHitCount >= 3 then
                self.E:Cast(unit)
            end
        end
    end
    if unit.IsEnemy and unit.Type == myHero.Type then
    spell.endPos = {x=spell.DestPos_x, y=spell.DestPos_y, z=spell.DestPos_z}
    for i = 1, #self.spells do
    if self.spells[i].ValueSpell then
    if spell.Name == self.spells[i].SpellName and not unit.IsMe and GetDistance(unit) <= GetDistance(unit, spell.endPos) and GetPercentHP(myHero) < self.EvadeLife then
        CastSpellToPos(unit.x, unit.z, _R)
     end 
    end 
     end 
	end
end


function Xayah:IsOnEPath(eney, feather)
    Target = GetAIHero(eney)
    local LineEnd = Vector(myHero) + (Vector(feather) - Vector(myHero)):Normalized() * GetDistance(feather)
    local pointSegment, pointLine, isOnSegment = VectorPointProjectionOnLineSegment(Vector(myHero), LineEnd, Vector(Target))
    if isOnSegment and GetDistance(Target, pointSegment) <= 85*1.25 then
        return true
    end
    return false
end

function Xayah:OnDraw()
    if self.DQWER then return end

    if self.Q:IsReady() and self.DQ then 
        local posQ = Vector(myHero)
        DrawCircleGame(posQ.x , posQ.y, posQ.z, 1000, Lua_ARGB(255,255,255,255))
    end
    if self.E:IsReady() and self.DE then 
        local posE = Vector(myHero)
        DrawCircleGame(posE.x , posE.y, posE.z, 3000, Lua_ARGB(255,255,255,255))
	end
    if self.R:IsReady() and self.DR then 
        local posR = Vector(myHero)
        DrawCircleGame(posR.x , posR.y, posR.z, 1040, Lua_ARGB(255,255,255,255))
    end 

    if self.DrawFeather then
        for i, teste in pairs(self.Pull) do
            if teste.IsValid and not IsDead(teste.Addr) then
            local pos = Vector(teste.x, teste.y, teste.z)
            DrawCircleGame(pos.x, pos.y, pos.z, 100, Lua_ARGB(255, 255, 0, 0))

            local x, y, z = pos.x, pos.y, pos.z
			local p1X, p1Y = WorldToScreen(x, y, z)
	        local p2X, p2Y = WorldToScreen(myHero.x, myHero.y, myHero.z)
	        DrawLineD3DX(p1X, p1Y, p2X, p2Y, 2, Lua_ARGB(255, 255, 0, 0))
            end 
        end 
    end
end 

function Xayah:LogicWandRakan()
            if self.BuffPassive then
                for i ,enemys in pairs(self:GetEnemies()) do
                local enemys = GetTargetSelector(GetTrueAttackRange())
                target = GetAIHero(enemys)
                if target ~= 0 then
                if GetDistanceSqr(target) < GetTrueAttackRange() then
                for i,hero in pairs(GetAllyHeroes()) do
                        ally = GetAIHero(hero)
                        if not ally.IsMe and not ally.IsDead and GetDistance(ally.Addr) < 1000 then
                        if ally.Name == "Rakan" then
                        CastSpellTarget(myHero.Addr, _W)
                        end 
                        end
                    end 
                end 
            end 
        end 
    end 
end

function Xayah:CastE()
    for i ,enemys in pairs(self:GetEnemies()) do
    target = GetAIHero(enemys)
    if self.E:IsReady() then
        local featherHitCount = 0
        for i, feather in pairs(self.Pull) do
            if self:IsOnEPath(target, feather) then
                featherHitCount = featherHitCount + 1
            end
        end

        if featherHitCount >= self.PE then
            self.E:Cast(target)
        end
    end
    end 
end

function Xayah:CastW()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(GetTrueAttackRange())
        target = GetAIHero(enemys)
        if target ~= 0 then
            if GetDistance(target) < GetTrueAttackRange() then
                CastSpellTarget(myHero.Addr, _W)
            end 
        end 
    end 
end 

function Xayah:CastQ()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.Q.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.KQ and self.Q:IsReady() and IsValidTarget(target, self.Q.Range) then
                local CPX, CPZ, UPX, UPZ, hc, AOETarget = GetPredictionCore(target.Addr, 0, self.Q.delay, self.Q.width, self.Q.Range, self.Q.speed, myHero.x, myHero.z, false, false, 10, 5, 5, 5, 5, 5)
                if hc >= 5 then
                    CastSpellToPos(CPX,CPZ, _Q)
                end   
            end 
        end 
    end 
end

function Xayah:LogicR2()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.R.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.Rmode == 2 then
            if self.CR and self.R:IsReady() and IsValidTarget(target, self.R.Range) and CountEnemyChampAroundObject(target, self.R.range) <= self.EH and GetPercentHP(myHero) < self.MI and GetPercentHP(target) < self.LE then
                local CPX, CPZ, UPX, UPZ, hc, AOETarget = GetPredictionCore(target.Addr, 0, self.R.delay, self.R.width, self.R.Range, self.R.speed, myHero.x, myHero.z, false, false, 10, 5, 5, 5, 5, 5)
                if hc >= 5 then
                    CastSpellToPos(CPX,CPZ, _R)
                end 
                end   
            end 
        end 
    end 
end 

function Xayah:LogicR1()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.R.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.Rmode == 1 then
            if self.CR and self.R:IsReady() and IsValidTarget(target, self.R.Range) and CountEnemyChampAroundObject(target, self.R.range) <= self.EH and GetPercentHP(target) < self.LE then
                local CPX, CPZ, UPX, UPZ, hc, AOETarget = GetPredictionCore(target.Addr, 0, self.R.delay, self.R.width, self.R.Range, self.R.speed, myHero.x, myHero.z, false, false, 10, 5, 5, 5, 5, 5)
                if hc >= 5 then
                    CastSpellToPos(CPX,CPZ, _R)
                end 
                end   
            end 
        end 
    end 
end 

function Xayah:LogicR0()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.R.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.Rmode == 0 then
            if self.CR and self.R:IsReady() and IsValidTarget(target, self.R.Range) and CountEnemyChampAroundObject(target, self.R.range) <= self.EH and GetPercentHP(target) < self.LE then
                local CPX, CPZ, UPX, UPZ, hc, AOETarget = GetPredictionCore(target.Addr, 0, self.R.delay, self.R.width, self.R.Range, self.R.speed, myHero.x, myHero.z, false, false, 10, 5, 5, 5, 5, 5)
                if hc >= 5 then
                    CastSpellToPos(CPX,CPZ, _R)
                end 
                end   
            end 
        end 
    end 
end 


function Xayah:ComboX()
    if self.BuffPassive then
        self:LogicWandRakan()
    end
    if self.CE then
        self:CastE()
    end 
    if self.CW then
        self:CastW()
    end 
    if self.CQ then
        self:CastQ()
    end 
    if self.CR then
        self:LogicR2()
        self:LogicR1()
        self:LogicR0()
    end 
end 

function Xayah:AutoE()
    for i ,enemys in pairs(self:GetEnemies()) do
        target = GetAIHero(enemys)
        if self.AutoEStun and self.E:IsReady() then
            local featherHitCount = 0
            for i, feather in pairs(self.Pull) do
                if self:IsOnEPath(target, feather) then
                    featherHitCount = featherHitCount + 1
                end
            end
            if featherHitCount >= self.PE then
                self.E:Cast(target)
            end
        end
    end 
end

function Xayah:KillPull()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.Q.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.KQ and self.Q:IsReady() and IsValidTarget(target, self.Q.Range) and self.Q:GetDamage(target) > target.HP then
                local CPX, CPZ, UPX, UPZ, hc, AOETarget = GetPredictionCore(target.Addr, 0, self.Q.delay, self.Q.width, self.Q.Range, self.Q.speed, myHero.x, myHero.z, false, false, 10, 5, 5, 5, 5, 5)
                if hc >= 5 then
                    CastSpellToPos(CPX,CPZ, _Q)
                end   
            end 
        end 
    end 
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.R.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.KR and self.R:IsReady() and IsValidTarget(target, self.R.Range) and self.R:GetDamage(target) > target.HP then
                local CPX, CPZ, UPX, UPZ, hc, AOETarget = GetPredictionCore(target.Addr, 0, self.R.delay, self.R.width, self.R.Range, self.R.speed, myHero.x, myHero.z, false, false, 10, 5, 5, 5, 5, 5)
                if hc >= 5 then
                    CastSpellToPos(CPX,CPZ, _R)
                end   
            end 
        end 
    end 
end

function Xayah:EnemyMinionsTbl() --SDK Toir+
    GetAllUnitAroundAnObject(myHero.Addr, 2000)
    local result = {}
    for i, obj in pairs(pUnit) do
        if obj ~= 0  then
            local minions = GetUnit(obj)
            if IsEnemy(minions.Addr) and not IsDead(minions.Addr) and not IsInFog(minions.Addr) and GetType(minions.Addr) == 1 then
                table.insert(result, minions)
            end
        end
    end
    return result
end

function Xayah:CastQLane()
    for i ,minion in pairs(self:EnemyMinionsTbl()) do
        if minion ~= 0 then
        if GetPercentMP(myHero) >= self.ML and CanCast(_Q) and IsValidTarget(minion, self.Q.range) and self.LQ and minion.IsEnemy then
            local CPX, CPZ, UPX, UPZ, hc, AOETarget = GetPredictionCore(minion.Addr, 0, self.Q.delay, self.Q.width, self.Q.Range, self.Q.speed, myHero.x, myHero.z, false, false, 10, 5, 5, 5, 5, 5)
            if hc >= 5 then
                CastSpellToPos(CPX,CPZ, _Q)
                end 
            end 
        end 
    end 
end 

function Xayah:CastWLane()
    for i ,minion in pairs(self:EnemyMinionsTbl()) do
        if minion ~= 0 then
            if GetPercentMP(myHero) >= self.ML and GetDistance(minion) < GetTrueAttackRange() then
            CastSpellTarget(myHero.Addr, _W)
        end 
    end 
end 
end 

function Xayah:Lane()
    if self.LQ then
        self:CastQLane()
    end 
    if self.LW then
        self:CastWLane()
    end 
end 

function Xayah:Flee()
    local mousePos = Vector(GetMousePos())
    MoveToPos(GetMousePosX(), GetMousePosZ())
end 

function Xayah:OnTick()
    if (IsDead(myHero.Addr) or myHero.IsRecall or IsTyping() or IsDodging()) or not IsRiotOnTop() then return end

    self:AutoE()
    self:KillPull()

    --[[if self.BuffPassive then
        for i,hero in pairs(GetAllyHeroes()) do
			if hero ~= nil then
				ally = GetAIHero(hero)
				if not ally.IsMe and not ally.IsDead and GetDistance(ally.Addr) < 1000 then
                    if ally.Name == "Rakan" then
                        CastSpellTarget(myHero.Addr, _W)
                    end 
                end 
            end 
        end 
    end ]]

    if GetKeyPress(self.Combo) > 0 then	
        self:ComboX()
    end

    if GetKeyPress(self.LaneClear) > 0 then	
        self:Lane()
    end

    if GetKeyPress(self.Flee_Xa) > 0 then	
        self:Flee()
    end
end 


-- AIO Menu
--Xayah
function Xayah:MenuBool(stringKey, bool)
	return ReadIniBoolean(self.menu, stringKey, bool)
end

function Xayah:MenuSliderInt(stringKey, valueDefault)
	return ReadIniInteger(self.menu, stringKey, valueDefault)
end

function Xayah:MenuSliderFloat(stringKey, valueDefault)
	return ReadIniFloat(self.menu, stringKey, valueDefault)
end

function Xayah:MenuComboBox(stringKey, valueDefault)
	return ReadIniInteger(self.menu, stringKey, valueDefault)
end

function Xayah:MenuKeyBinding(stringKey, valueDefault)
	return ReadIniInteger(self.menu, stringKey, valueDefault)
end

--Rakan

class "Rakan"

function Rakan:__init()
    self:Load()
end

function Rakan:Load()

    myHero = GetMyHero()

    --rakanerecast

    self.Inter = {["KatarinaR"] = true, ["AlZaharNetherGrasp"] = true, ["TwistedFateR"] = true, ["VelkozR"] = true, ["InfiniteDuress"] = true, ["JhinR"] = true, ["CaitlynAceintheHole"] = true, ["UrgotSwap2"] = true, ["LucianR"] = true, ["GalioIdolOfDurand"] = true, ["MissFortuneBulletTime"] = true, ["XerathLocusPulse"] = true,}
  
    self.Q = Spell({Slot = 0, SpellType = Enum.SpellType.SkillShot, Range = 895, SkillShotType = Enum.SkillShotType.Line, Collision = true, Width = 160, Delay = 400, Speed = 2000})
    self.W = Spell({Slot = 1, SpellType = Enum.SpellType.SkillShot, Range = 600, SkillShotType = Enum.SkillShotType.Circle, Collision = false, Width = 160, Delay = 400, Speed = 2000})
    self.E = Spell({Slot = 2, SpellType = Enum.SpellType.Targetted, Range = 1100})
    self.R = Spell({Slot = 3, SpellType = Enum.SpellType.Active, Range = 1040})

    --self.enemyHeros = GetEnemyHeroes()
    self.CCType = { [5] = "Stun", [8] = "Taunt", [11] = "Snare", [21] = "Fear", [22] = "Charm", [24] = "Suppression", }

    self.Pac = false

    AddEvent(Enum.Event.OnTick, function(...) self:OnTick(...) end)
    AddEvent(Enum.Event.OnProcessSpell, function(...) self:OnProcessSpell(...) end) 
    AddEvent(Enum.Event.OnUpdateBuff, function(...) self:OnUpdateBuff(...) end)
    AddEvent(Enum.Event.OnRemoveBuff, function(...) self:OnRemoveBuff(...) end)
    AddEvent(Enum.Event.OnDraw, function(...) self:OnDraw(...) end)
    AddEvent(Enum.Event.OnDrawMenu, function(...) self:OnDrawMenu(...) end)

    self:MenuRakan()
end 

function Rakan:MenuBool(stringKey, bool)
	return ReadIniBoolean(self.menu, stringKey, bool)
end

function Rakan:MenuSliderInt(stringKey, valueDefault)
	return ReadIniInteger(self.menu, stringKey, valueDefault)
end

function Rakan:MenuSliderFloat(stringKey, valueDefault)
	return ReadIniFloat(self.menu, stringKey, valueDefault)
end

function Rakan:MenuComboBox(stringKey, valueDefault)
	return ReadIniInteger(self.menu, stringKey, valueDefault)
end

function Rakan:MenuKeyBinding(stringKey, valueDefault)
	return ReadIniInteger(self.menu, stringKey, valueDefault)
end

function Rakan:MenuRakan()
    self.menu = "Rakan - AIO"
    --Combo [[ Xayah ]]
    self.CQ = self:MenuBool("Combo Q", true)
    self.CW = self:MenuBool("Combo W", true)
    self.CE = self:MenuBool("Combo E", true)
    self.CR = self:MenuBool("Combo R", true)
    self.BuffPassive = self:MenuBool("Active Buff (Xayah)", true)
    self.Rmode = self:MenuComboBox("Mode [R] Spell", 2)
    self.AutoEMana = self:MenuSliderInt("Auto [E] Mana", 50)
    self.UseEally = self:MenuSliderInt("Min Life Ally", 80)
    --self.EvadeR = self:MenuBool("Evade [R]", true)

    --Stomp Hitchance
    self.HitQ = self:MenuSliderInt("HitChance ", 5)
    self.HitE = self:MenuSliderInt("HitChance ", 5)
    self.HitR = self:MenuSliderInt("HitChance ", 5)

     --Lane
    self.LQ = self:MenuBool("Lane Q", true)
    self.LE = self:MenuBool("Lane E", true)

    --KillSteal [[ Xayah ]]
    self.KQ = self:MenuBool("KillSteal > Q", true)
    self.KR = self:MenuBool("KillSteal > R", true)
    self.KW = self:MenuBool("KillSteal > W", true)

    self.AutoE = self:MenuBool("Auto E", true)
    self.AutoLeash = self:MenuBool("Auto Q (Leash)", true)

    self.LW = self:MenuBool("Lane W", true)
    -- Misc [[Xayah]]
    self.WInter = self:MenuBool("Interrupt Spells > W", true)   

    self.AH = self:MenuSliderInt("Ally Hit ", 1)
    self.EH = self:MenuSliderInt("Enemy Hit ", 1)
    self.MI = self:MenuSliderInt("My Living ", 30)
    self.LE = self:MenuSliderInt("Living Enemy ", 50)
            

    --Draws [[ Xayah ]]
    self.DQWER = self:MenuBool("Draw On/Off", false)
    self.DT = self:MenuBool("Draw Target", true)
    self.DQ = self:MenuBool("Draw Q", true)
    self.DW = self:MenuBool("Draw W", true)
    self.DE = self:MenuBool("Draw E", true)
    self.DR = self:MenuBool("Draw R", true)

    self.Comboisbad = self:MenuKeyBinding("Combo", 32)
    self.LaneClear = self:MenuKeyBinding("Lane Clear", 86)
    self.Last_Hit = self:MenuKeyBinding("Last Hit", 88)
    self.Flee_Ra = self:MenuKeyBinding("Passive", 90)
    self.MR = self:MenuKeyBinding("Manual [R]", 82)

end

function Rakan:OnDrawMenu()
    if not Menu_Begin(self.menu) then return end
    
		if (Menu_Begin("Combo")) then
            self.CQ = Menu_Bool("Combo Q", self.CQ, self.menu)
            self.CW = Menu_Bool("Combo W", self.CW, self.menu)
            self.BuffPassive = Menu_Bool("Active Buff (Xayah)", self.BuffPassive, self.menu)
            self.CE = Menu_Bool("Combo E", self.CE, self.menu)
            self.AutoE = Menu_Bool("Auto E", self.AutoE, self.menu)
            self.AutoEMana = Menu_SliderInt("Auto [E] Mana", self.AutoEMana, 0, 100, self.menu)
            self.UseEally = Menu_SliderInt("Min life ally", self.UseEally, 0, 100, self.menu)
            self.CR = Menu_Bool("Combo R", self.CR, self.menu)
            self.Rmode = Menu_ComboBox("Mode [R] Spell", self.Rmode, "Stun [R]\0Enemy Position\0Manual\0", self.menu)
            if self.Rmode == 2 then
                self.MR = Menu_KeyBinding("Guide [R]", self.MR, self.menu)
            end
            if self.Rmode == 1 then
                self.EH = Menu_SliderInt("Enemy Hit", self.EH, 0, 5, self.menu)
                self.LE = Menu_SliderInt("Living Enemy", self.LE, 0, 100, self.menu)
            end
            if self.Rmode == 0 then
                self.EH = Menu_SliderInt("Enemy Hit", self.EH, 0, 5, self.menu)
                self.LE = Menu_SliderInt("Living Enemy", self.LE, 0, 100, self.menu)
            end
			Menu_End()
        end
        if (Menu_Begin("Draws")) then
            self.DQWER = Menu_Bool("Draw On/Off", self.DQWER, self.menu)
            self.DT = Menu_Bool("Draw Target and Ally", self.DT, self.menu)
            self.DQ = Menu_Bool("Draw Q", self.DQ, self.menu)
            self.DW = Menu_Bool("Draw W", self.DW, self.menu)
            self.DE = Menu_Bool("Draw E", self.DE, self.menu)
			self.DR = Menu_Bool("Draw R", self.DR, self.menu)
			Menu_End()
        end
        if (Menu_Begin("Misc")) then
            self.WInter = Menu_Bool("Interrupt Spells > W", self.WInter, self.menu)
			Menu_End()
        end
        if (Menu_Begin("HitChance")) then
            self.HitQ = Menu_SliderInt("HitChance > Q", self.HitQ, 0, 5, self.menu)
            self.HitE = Menu_SliderInt("HitChance > E", self.HitE, 0, 5, self.menu)
            self.HitR = Menu_SliderInt("HitChance > R", self.HitR, 0, 5, self.menu)
			Menu_End()
        end
        if (Menu_Begin("Keys")) then
            self.Comboisbad = Menu_KeyBinding("Combo", self.Comboisbad, self.menu)
            self.Flee_Ra = Menu_KeyBinding("Passive", self.Flee_Ra, self.menu)
			Menu_End()
        end
	Menu_End()
end

function Rakan:GetHeroes()
	SearchAllChamp()
	local t = pObjChamp
	return t
end

function Rakan:GetEnemies(range)
  local t = {}
  local h = self:GetHeroes()
  for k, v in pairs(h) do
    if v ~= 0 then
      local hero = GetAIHero(v)
      if hero.IsEnemy and hero.IsValid and hero.Type == 0 and (not range or range > GetDistance(hero)) then
        table.insert(t, hero)
      end
    end
  end
  return t
end

local function GetAllyHeroes(range)
    SearchAllChamp()
    local t = pObjChamp

    local result = {}

    for i, v in pairs(t) do
        if v ~= 0 then
            if IsAlly(v) and IsChampion(v) and not IsDead(v) and (not range or range > GetDistance(v)) then
                table.insert(result, v)
            end 
        end
    end
    return result
end

function Rakan:OnDraw()
    if self.DQWER then return end

    if self.Q:IsReady() and self.DQ then 
        local posQ = Vector(myHero)
        DrawCircleGame(posQ.x , posQ.y, posQ.z, self.Q.Range, Lua_ARGB(255,255,255,255))
    end
    if self.W:IsReady() and self.DW then 
        local posW = Vector(myHero)
        DrawCircleGame(posW.x , posW.y, posW.z, self.W.Range, Lua_ARGB(255,255,255,255))
    end
    if self.E:IsReady() and self.DE then 
        local posE = Vector(myHero)
        DrawCircleGame(posE.x , posE.y, posE.z, self.E.Range, Lua_ARGB(255,255,255,255))
	end
    if self.R:IsReady() and self.DR then 
        local posR = Vector(myHero)
        DrawCircleGame(posR.x , posR.y, posR.z, self.R.Range, Lua_ARGB(255,255,255,255))
    end 
    for i ,enemys in pairs(self:GetEnemies()) do
        target = GetAIHero(enemys)
        if target ~= nil and self.DT then
        local TD = Vector(target)
        DrawCircleGame(TD.x , TD.y, TD.z, 100, Lua_ARGB(255,255,255,255))    
        end 
    end 
    for i ,heroAlly in pairs(GetAllyHeroes()) do
        target = GetAIHero(heroAlly)
        if target ~= nil and self.DT then
        local TD = Vector(target)
        DrawCircleGame(TD.x , TD.y, TD.z, 100, Lua_ARGB(255,255,255,255))    
        end 
    end 
end 

function Rakan:OnUpdateBuff(unit, buff)
    if unit and unit.IsEnemy and unit.TeamId ~= myHero.TeamId and self.CCType[buff.Type] then
	if self.W:IsReady() and GetDistance(unit) <= self.W.Range then CastSpellToPos(unit.x, unit.z, _W) end
    end
    if unit.IsMe and buff.Name == "rakanerecast" then
        self.Pac = true
    end
end

function Rakan:OnRemoveBuff(unit, buff)
	if unit.IsMe and buff.Name == "rakanerecast" then
        self.Pac = false 
    end
end


function Rakan:OnProcessSpell(unit, spell)
	if unit and unit.IsEnemy and self.WInter and self.Inter[spell.Name] and IsValidTarget(unit, self.W.Range) then
	CastSpellToPos(unit.x, unit.z, _W)
    end
    if self.AutoE and unit.IsEnemy and unit.Type == 0 then
		for i, heros in pairs(GetAllyHeroes()) do
		if heros ~= nil then
			local target  = GetAIHero(heros)
			if target and target.Id == spell.TargetId then
				if IsValidTarget(target , self.E.Range) and CanCast(_E) then
					CastSpellTarget(target.Addr, _E)
				end
			end
		end
    end
end
end

function Rakan:CastQ()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.Q.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.Q:IsReady() and IsValidTarget(target, self.Q.Range) then
                if CountObjectCollision(1, target.Addr, myHero.x, myHero.z, target.x, target.z, self.Q.width, self.Q.Range, 10) == 0 then
                    CastSpellToPos(target.x, target.z, _Q)
                end   
            end 
        end 
    end 
end

function Rakan:CastW()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.W.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.W:IsReady() and IsValidTarget(target, self.W.Range) then
                local CPX, CPZ, UPX, UPZ, hc, AOETarget = GetPredictionCore(target.Addr, 0, self.W.delay, self.W.width, self.W.Range, self.W.speed, myHero.x, myHero.z, false, false, 10, 5, 5, 5, 5, 5)
                if hc >= 5 then
                    CastSpellToPos(CPX,CPZ, _W)
                end   
            end 
        end 
    end 
end


function Rakan:LogicE()
    if self.AutoE then
        for i ,enemys in pairs(self:GetEnemies()) do
        Enemy = GetAIHero(enemys)
        if Enemy ~= nil then
		for i,hero in pairs(GetAllyHeroes()) do
			if hero ~= nil then
				ally = GetAIHero(hero)
				if not ally.IsMe and not IsDead(ally) and GetDistance(ally) < self.E.Range and GetDistance(Enemy, ally) < 600 then
					if self.AutoE then
						if CountBuffByType(ally.Addr, 5) > 0 or CountBuffByType(ally.Addr, 5) > 0 then
							CastSpellTarget(ally.Addr, _E)
						end
					end
					local nearEnemys = CountEnemyChampAroundObject(ally.Addr, 650)
					if nearEnemys >= 1000 then
						CastSpellTarget(ally.Addr, _E)
					end
					if self.UseEally >= ally.HP / ally.MaxHP * 100 then
                        CastSpellTarget(ally.Addr, _E)
                    end 
                    end 
					end
				end
			end
		end
    end  
end

function Rakan:LogicR1()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.R.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.Rmode == 1 then
            if self.CR and self.R:IsReady() and IsValidTarget(target, self.R.Range) and CountEnemyChampAroundObject(target, self.R.range) <= self.EH and GetPercentHP(target) < self.LE then
                CastSpellTarget(myHero.Addr, _R)
                end   
            end 
        end 
    end 
end 

function Rakan:LogicR0()
    for i ,enemys in pairs(self:GetEnemies()) do
        local enemys = GetTargetSelector(self.R.Range)
        target = GetAIHero(enemys)
        if target ~= 0 then
            if self.Rmode == 0 then
            if self.CR and self.R:IsReady() and IsValidTarget(target, self.R.Range) and CountEnemyChampAroundObject(target, self.R.range) <= self.EH and GetPercentHP(target) < self.LE then
                CastSpellTarget(myHero.Addr, _R)
                end   
            end 
        end 
    end 
end 

function Rakan:PassiveQ()
    MoveToPos(GetMousePosX(), GetMousePosZ())
    self:CastQ()
end 

function Rakan:ComboRakan()
    if self.CE then
        self:LogicE()
    end 
    if self.CQ then
        self:CastQ()
    end 
    if self.CW then
        self:CastW()
    end 
    if self.CR then
        self:LogicR1()
        self:LogicR0()
    end 
end 

function Rakan:OnTick()
    if (IsDead(myHero.Addr) or myHero.IsRecall or IsTyping() or IsDodging()) or not IsRiotOnTop() then return end

    if GetKeyPress(self.Comboisbad) > 0 then	
        self:ComboRakan()
    end

    if GetKeyPress(self.Flee_Ra) > 0 then	
        self:PassiveQ()
    end
end 





    

