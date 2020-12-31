--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    ico_customicons.lua
--  author:  Dave Rodgers and reworked by tovernaar123
--
--  Copyright (C) 2007.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
-- To add a unit simply add it in the units config table the format is: 
-- unit name = path_icon, size.
-- Every entry will auto add a _scav version with the metatable.
-- Tovernaar123 dec 31, 2020
--------------------------------------------------------------------------------

function gadget:GetInfo()
	return {
		name = "CustomIcons",
		desc = "Sets custom unit icons",
		author = "trepan,BrainDamage,TheFatController,Floris,tovernaar123",
		date = "dec 31, 2020", --Yes 1 day before 2021 :P
		license = "GNU GPL, v2 or later",
		layer = -100,
		enabled = true  --  loaded by default?
	}
end


--------------------------------------------------------------------------------

if gadgetHandler:IsSyncedCode() then
	return false
end

--------------------------------------------------------------------------------

local iconScale = 1
if Spring.GetConfigFloat then
	iconScale = Spring.GetConfigFloat("UnitIconScale", 1)
end

local spSetUnitDefIcon = Spring.SetUnitDefIcon
local spFreeUnitIcon = Spring.FreeUnitIcon

local units = {

	["corageo"] = { "icons/hazardous.png",1.88999987},
	["armcroc"] = { "icons/armcroc_1.6.png",1.67999995},
	["cormart"] = { "icons/cormart_1.3.png",1.36499989},
	["corah"] = { "icons/hover_aa.png",1.15499997},
	["corap"] = { "icons/factory_air.png",1.52250004},
	["freefusion"] = { "icons/fusion.png",1.46999991},
	["armfig"] = { "icons/air.png",0.86099994},
	["armawac"] = { "icons/air_t2_radar.png",1.39649999},
	["coraak"] = { "icons/amphib_t2_aa.png",1.67999995},
	["armmship"] = { "icons/ship_t2_missile.png",2.0999999},
	["corpun"] = { "icons/corpun_1.3.png",1.36499989},
	["armgate"] = { "icons/shield.png",1.57499993},
	["armsam"] = { "icons/vehicle_t1_missile.png",1.04999995},
	["armfark"] = { "icons/engineer_small.png",0.94499993},
	["armageo"] = { "icons/hazardous.png",1.88999987},
	["critter_gull"] = { "icons/blank.png",1.04999995},
	["armshltx"] = { "icons/factory_gantry.png",2.51999998},
	["armpship"] = { "icons/ship_pship.png",1.25999999},
	["scavmistxl"] = { "icons/blank.png",1.04999995},
	["lootboxgold"] = { "icons/lootboxt3.png",1.20749986},
	["armseer"] = { "icons/vehicle_t2_radar.png",1.36499989},
	["corgol"] = { "icons/corgol_1.75.png",1.83749986},
	["corfhlt"] = { "icons/defence_1_laser_1.05.png",1.10249984},
	["chickena1c"] = { "icons/chicken.png",1.57499993},
	["armack"] = { "icons/bot_t2_worker.png",1.39649999},
	["armjamt"] = { "icons/jammer_t1_0.9.png",0.94499993},
	["armthundt4"] = { "icons/armthundt4.png",3.3599999},
	["armpb"] = { "icons/armpb_1.4.png",1.46999991},
	["armap"] = { "icons/factory_air.png",1.52250004},
	["armham"] = { "icons/armham_1.05.png",1.10249984},
	["xmasball2"] = { "icons/blank.png",1.04999995},
	["chickens3"] = { "icons/chicken_air.png",1.36499989},
	["dice"] = { "icons/blank.png",1.04999995},
	["corarad"] = { "icons/radar_t2_1.2.png",1.25999999},
	["armuwfus"] = { "icons/fusion.png",1.46999991},
	["armptl"] = { "icons/aa.png",0.89249998},
	["armtl"] = { "icons/defence_1_naval.png",1.10249984},
	["cormine4"] = { "icons/mine.png",0.46199998},
	["corssubold"] = { "icons/sub.png",1.39649999},
	["armsaber"] = { "icons/air_hover.png",1.25999999},
	["cortoast"] = { "icons/cortoast_1.5.png",1.57499993},
	["scavengerdroppod"] = { "icons/mine.png",0.55649996},
	["nuketestcor"] = { "icons/aa.png",0.89249998},
	["lootboxnano_t2_var4"] = { "icons/scavnanotc_t2.png",1.96874988},
	["xmasball"] = { "icons/blank.png",1.04999995},
	["chip"] = { "icons/blank.png",1.04999995},
	["armdecom"] = { "icons/armcom.png",1.83749986},
	["vh_chickenq"] = { "icons/chicken_queen.png",4.19999981},
	["corhunt"] = { "icons/air_t2_radar.png",1.39649999},
	["chickenf2"] = { "icons/chicken_air.png",1.78499997},
	["ve_chickenq"] = { "icons/chicken_queen.png",4.19999981},
	["scavtacnukespawner"] = { "icons/aa.png",0.89249998},
	["armhawk"] = { "icons/air_t2.png",1.02899992},
	["h_chickenq"] = { "icons/chicken_queen.png",4.19999981},
	["chickenc2"] = { "icons/chicken.png",1.57499993},
	["armrl"] = { "icons/aa.png",0.89249998},
	["scavmist"] = { "icons/blank.png",1.04999995},
	["armassimilator"] = { "icons/bot_t3.png",1.99499989},
	["scavengerdroppodfriendly"] = { "icons/mine.png",0.55649996},
	["armsptkt4"] = { "icons/armsptkt4.png",2.30999994},
	["nuketestcororg"] = { "icons/aa.png",0.89249998},
	["scavengerdroppodbeacon"] = { "icons/beacon.png",1.74299991},
	["scavempspawner"] = { "icons/aa.png",0.89249998},
	["scavsafeareabeacon"] = { "icons/beacon.png",1.74299991},
	["chickena1b"] = { "icons/chicken.png",1.57499993},
	["corshad"] = { "icons/air_bomber.png",1.41750002},
	["corgplat"] = { "icons/defence_0_0.8.png",0.83999997},
	["corack"] = { "icons/bot_t2_worker.png",1.39649999},
	["resourcecheat"] = { "icons/building.png",1.36499989},
	["armdecade"] = { "icons/ship_raid.png",1.15499997},
	["nuketestorg"] = { "icons/aa.png",0.89249998},
	["armvadert4"] = { "icons/armvadert4.png",2.625},
	["armzeus"] = { "icons/armzeus_1.28.png",1.34399986},
	["corstone"] = { "icons/blank.png",1.04999995},
	["armfepocht4"] = { "icons/air_t4_flagship.png",3.3599999},
	["nuketest"] = { "icons/aa.png",0.89249998},
	["n_chickenq"] = { "icons/chicken_queen.png",4.19999981},
	["mission_command_tower"] = { "icons/mission_command_tower.png",2.46749973},
	["armconsul"] = { "icons/armconsul_1.35.png",1.41750002},
	["meteor"] = { "icons/blank.png",1.04999995},
	["corgant"] = { "icons/factory_gantry.png",2.51999998},
	["chicken1d"] = { "icons/chicken.png",0.94499993},
	["lootdroppod_printer"] = { "icons/mine.png",0.55649996},
	["lootdroppod_gold"] = { "icons/mine.png",0.55649996},
	["corint"] = { "icons/corint_2.3.png",2.41499972},
	["armmine3"] = { "icons/mine.png",0.55649996},
	["chicken1y"] = { "icons/chicken.png",0.94499993},
	["armacsub"] = { "icons/sub_t2_worker.png",1.74299991},
	["lootboxsilver"] = { "icons/lootboxt2.png",1.15499997},
	["coruwadvms"] = { "icons/metalstorage_t2.png",1.3125},
	["corsilo"] = { "icons/nuke.png",2.51999998},
	["lootboxplatinum"] = { "icons/lootboxt4.png",1.25999999},
	["armspy"] = { "icons/eye.png",1.23899984},
	["lootboxnano_t4_var4"] = { "icons/scavnanotc_t4.png",3.09749985},
	["chickenp1"] = { "icons/chicken.png",1.57499993},
	["corsfig"] = { "icons/air.png",0.86099994},
	["armwin"] = { "icons/wind.png",1.04999995},
	["chickenc3b"] = { "icons/chicken.png",1.25999999},
	["corgarp"] = { "icons/amphib_tank.png",1.25999999},
	["cortarg"] = { "icons/targetting.png",1.36499989},
	["lootboxnano_t3_var4"] = { "icons/scavnanotc_t3.png",2.46749973},
	["lootboxnano_t3_var3"] = { "icons/scavnanotc_t3.png",2.46749973},
	["lootboxnano_t4_var3"] = { "icons/scavnanotc_t4.png",3.09749985},
	["scavmistxxl"] = { "icons/blank.png",1.04999995},
	["armrecl"] = { "icons/sub_t2_worker.png",1.74299991},
	["lootboxnano_t3_var1"] = { "icons/scavnanotc_t3.png",2.46749973},
	["chickenw1d"] = { "icons/chicken_air.png",1.36499989},
	["armmanni"] = { "icons/armmanni_1.55.png",1.62749982},
	["corroach"] = { "icons/corroach_0.9.png",0.94499993},
	["coruwadves"] = { "icons/energystorage_t2.png",1.3125},
	["corsnap"] = { "icons/hover_gun.png",1.10249984},
	["lootboxnano_t2_var3"] = { "icons/scavnanotc_t2.png",1.96874988},
	["lootboxnano_t2_var2"] = { "icons/scavnanotc_t2.png",1.96874988},
	["armason"] = { "icons/radar_t2_1.2.png",1.25999999},
	["lootboxnano_t2_var1"] = { "icons/scavnanotc_t2.png",1.96874988},
	["armsjam"] = { "icons/ship_t2_jammer.png",1.73249984},
	["chickenc3"] = { "icons/chicken.png",1.25999999},
	["corlab"] = { "icons/factory_bot.png",1.52250004},
	["armstil"] = { "icons/armstil_1.66.png",1.74299991},
	["chickenw2"] = { "icons/chicken_air.png",1.36499989},
	["armalab"] = { "icons/factory_bot_t2.png",1.9425},
	["armllt"] = { "icons/defence_0_laser_0.8.png",0.83999997},
	["armavp"] = { "icons/factory_vehicle_t2.png",1.9425},
	["corssub"] = { "icons/sub.png",1.39649999},
	["corrl"] = { "icons/aa.png",0.89249998},
	["corcom"] = { "icons/corcom.png",1.83749986},
	["armvader"] = { "icons/armvader_0.9.png",0.94499993},
	["lootboxnano_t1_var1"] = { "icons/scavnanotc_t1.png",1.57499993},
	["armbats"] = { "icons/ship_t2_battleship.png",2.67749977},
	["corfrt"] = { "icons/aa.png",0.89249998},
	["chickenc3c"] = { "icons/chicken.png",1.25999999},
	["cornanotcplat"] = { "icons/cornanotcplat_0.92.png",0.96599996},
	["armvulc"] = { "icons/armvulc_3.1.png",3.25499964},
	["corllt"] = { "icons/defence_0_laser_0.8.png",0.83999997},
	["armtarg"] = { "icons/targetting.png",1.36499989},
	["lootboxbronze"] = { "icons/lootbox.png",1.04999995},
	["cormstor"] = { "icons/metalstorage.png",1.10249984},
	["lootboxnano_t1_var2"] = { "icons/scavnanotc_t1.png",1.57499993},
	["hat_viking_teamcolored"] = { "icons/building.png",1.04999995},
	["armstump"] = { "icons/vehicle_t1_tank.png",1.15499997},
	["roost"] = { "icons/chicken_roost.png",1.57499993},
	["corca"] = { "icons/air_worker.png",1.25999999},
	["epic_chickenq"] = { "icons/chicken_queen.png",4.19999981},
	["e_chickenq"] = { "icons/chicken_queen.png",4.19999981},
	["armgmm"] = { "icons/fusion.png",1.46999991},
	["armmart"] = { "icons/armmart_1.3.png",1.36499989},
	["armcom"] = { "icons/armcom.png",1.83749986},
	["corvalk"] = { "icons/air_trans.png",1.36499989},
	["armah"] = { "icons/hover_aa.png",1.15499997},
	["dbg_sphere"] = { "icons/allterrain.png",1.04999995},
	["chickena1"] = { "icons/chicken.png",1.57499993},
	["chicken1z"] = { "icons/chicken.png",0.94499993},
	["armarad"] = { "icons/radar_t2_1.2.png",1.25999999},
	["critter_penguinking"] = { "icons/blank.png",1.04999995},
	["armmark"] = { "icons/bot_t2_radar.png",1.34399986},
	["critter_penguinbro"] = { "icons/blank.png",1.04999995},
	["critter_penguin"] = { "icons/blank.png",1.04999995},
	["chickenh4"] = { "icons/chicken.png",0.94499993},
	["critter_duck"] = { "icons/blank.png",1.04999995},
	["coradvsol"] = { "icons/energy2_1.18.png",1.23899984},
	["corcan"] = { "icons/corcan_1.28.png",1.34399986},
	["corhal"] = { "icons/corhal_1.33.png",1.39649999},
	["corfav"] = { "icons/vehicle.png",0.57749999},
	["armch"] = { "icons/hover_worker.png",1.25999999},
	["corwin"] = { "icons/wind.png",1.04999995},
	["armferret"] = { "icons/aa.png",1.15499997},
	["corvroc"] = { "icons/corvroc_1.6.png",1.67999995},
	["corkorg"] = { "icons/mech.png",3.46499968},
	["armamd"] = { "icons/antinuke.png",1.67999995},
	["armbrtha"] = { "icons/armbrtha_2.5.png",2.625},
	["armckfus"] = { "icons/fusion.png",1.46999991},
	["corvoyr"] = { "icons/bot_t2_radar.png",1.34399986},
	["cormabm"] = { "icons/antinukemobile.png",1.46999991},
	["armsnipe"] = { "icons/armsnipe_1.3.png",1.36499989},
	["corbhmth"] = { "icons/corbhmth_1.55.png",1.62749982},
	["corvipe"] = { "icons/corvipe_1.4.png",1.46999991},
	["armmeatball"] = { "icons/amphib_t3.png",2.20499969},
	["corveng"] = { "icons/air.png",0.86099994},
	["corenaa"] = { "icons/aa_flak_1.4.png",1.46999991},
	["corvamp"] = { "icons/air_t2.png",1.02899992},
	["corasy"] = { "icons/factory_ship_t2.png",1.9425},
	["corgator"] = { "icons/vehicle_t1_raid.png",0.89249998},
	["coruwms"] = { "icons/metalstorage.png",1.10249984},
	["armacv"] = { "icons/vehicle_t2_worker.png",1.36499989},
	["cordrag"] = { "icons/wall_0.4.png",0.41999999},
	["chicken1c"] = { "icons/chicken.png",0.94499993},
	["armguard"] = { "icons/armguard_1.3.png",1.36499989},
	["corspy"] = { "icons/eye.png",1.23899984},
	["coruwmme"] = { "icons/mex_t2_1.15.png",1.20749986},
	["armsehak"] = { "icons/air_t2_radar.png",1.39649999},
	["coruwmex"] = { "icons/mex_t1_0.77.png",0.80849993},
	["corhllt"] = { "icons/defence_0_laser2_0.94.png",0.98699993},
	["armatl"] = { "icons/defence_2_naval.png",1.46999991},
	["armjam"] = { "icons/vehicle_t2_jammer.png",1.36499989},
	["chicken1"] = { "icons/chicken.png",0.94499993},
	["coruwes"] = { "icons/energystorage.png",1.10249984},
	["armmerl"] = { "icons/armmerl_1.55.png",1.62749982},
	["armblade"] = { "icons/air_t2_hover_missile.png",1.46999991},
	["armseap"] = { "icons/air_torp.png",1.57499993},
	["armmercury"] = { "icons/aa_longrange_1.8.png",1.88999987},
	["armfast"] = { "icons/bot_t2_raid.png",1.15499997},
	["cortship"] = { "icons/shiptrans.png",2.0999999},
	["cortron"] = { "icons/tacnuke.png",1.88999987},
	["armfrad"] = { "icons/radar_t1_0.9.png",0.94499993},
	["cormh"] = { "icons/hover_t1_missile.png",1.41750002},
	["armtide"] = { "icons/energy1_1.0.png",1.04999995},
	["cortrem"] = { "icons/cortrem_1.85.png",1.9425},
	["armmlv"] = { "icons/armmlv_1.0.png",1.04999995},
	["armfmine3"] = { "icons/mine.png",0.55649996},
	["chickenc1"] = { "icons/chicken.png",1.57499993},
	["cortl"] = { "icons/defence_1_naval.png",1.10249984},
	["corexp"] = { "icons/mex_t1_0.77.png",0.80849993},
	["cortitan"] = { "icons/air_t2_torpbomber.png",1.67999995},
	["armsd"] = { "icons/seismic.png",1.46999991},
	["armcsa"] = { "icons/air_worker.png",1.25999999},
	["corthovr"] = { "icons/hovertrans.png",1.78499997},
	["armjuno"] = { "icons/jammer_t2.png",1.25999999},
	["armpt"] = { "icons/ship_tiny.png",0.83999997},
	["coratl"] = { "icons/defence_2_naval.png",1.46999991},
	["armsubk"] = { "icons/sub.png",1.39649999},
	["corvp"] = { "icons/factory_vehicle.png",1.52250004},
	["lootboxnano_t4_var1"] = { "icons/scavnanotc_t4.png",3.09749985},
	["corsy"] = { "icons/factory_ship.png",1.52250004},
	["corsumo"] = { "icons/corsumo_1.66.png",1.74299991},
	["corflak"] = { "icons/aa_flak_1.4.png",1.46999991},
	["corstorm"] = { "icons/corstorm_1.png",1.04999995},
	["armwar"] = { "icons/armwar_1.15.png",1.20749986},
	["armgeo"] = { "icons/energy6_1.3.png",1.36499989},
	["corason"] = { "icons/radar_t2_1.2.png",1.25999999},
	["coruwmmm"] = { "icons/metalmaker_t2_1.15.png",1.20749986},
	["armmine2"] = { "icons/mine.png",0.46199998},
	["armca"] = { "icons/air_worker.png",1.25999999},
	["corseah"] = { "icons/air_trans.png",1.83749986},
	["armsy"] = { "icons/factory_ship.png",1.52250004},
	["armliche"] = { "icons/air_liche.png",2.0999999},
	["armafus"] = { "icons/energy5_1.85.png",1.9425},
	["armflash"] = { "icons/vehicle_t1_raid.png",0.89249998},
	["corsktl"] = { "icons/mine.png",0.55649996},
	["coresupp"] = { "icons/ship_raid.png",1.15499997},
	["armanni"] = { "icons/armanni_1.95.png",2.0474999},
	["armclaw"] = { "icons/jammer_t1_0.9.png",0.94499993},
	["coruwfus"] = { "icons/fusion.png",1.46999991},
	["corshiva"] = { "icons/corshiva_2.1.png",2.20499969},
	["corawac"] = { "icons/air_t2_radar.png",1.39649999},
	["armfrock"] = { "icons/aa.png",0.89249998},
	["lootboxnano_t4_var2"] = { "icons/scavnanotc_t4.png",3.09749985},
	["corsharkold"] = { "icons/amphib_t2.png",1.67999995},
	["armfatf"] = { "icons/targetting.png",1.36499989},
	["corsh"] = { "icons/hover_raid.png",1.10249984},
	["armminivulc"] = { "icons/armvulc_3.1.png",1.88999987},
	["armflea"] = { "icons/bot_t1_flea.png",0.53549999},
	["armfus"] = { "icons/fusion.png",1.46999991},
	["corsolar"] = { "icons/energy1_1.0.png",1.04999995},
	["corfgate"] = { "icons/shield.png",1.57499993},
	["armthovr"] = { "icons/hovertrans.png",1.78499997},
	["correap"] = { "icons/vehicle_t2_tank.png",1.46999991},
	["corsd"] = { "icons/seismic.png",1.46999991},
	["corscreamer"] = { "icons/aa_longrange_1.8.png",1.88999987},
	["corpt"] = { "icons/ship_tiny.png",0.83999997},
	["chicken_dodo2"] = { "icons/chicken.png",0.94499993},
	["corkarganetht4"] = { "icons/corkarganetht4.png",3.14999986},
	["armrad"] = { "icons/radar_t1_0.9.png",0.94499993},
	["chicken1x"] = { "icons/chicken.png",0.94499993},
	["armroy"] = { "icons/ship_destroyer.png",1.51199996},
	["corfmd"] = { "icons/antinuke.png",1.67999995},
	["lootboxnano_t1_var3"] = { "icons/scavnanotc_t1.png",1.57499993},
	["coreter"] = { "icons/vehicle_t2_jammer.png",1.36499989},
	["armuwmme"] = { "icons/mex_t2_1.15.png",1.20749986},
	["corfdrag"] = { "icons/wall_0.4.png",0.41999999},
	["corsub"] = { "icons/sub.png",1.39649999},
	["corfmkr"] = { "icons/metalmaker_t1_0.75.png",0.78749996},
	["corraid"] = { "icons/vehicle_t1_tank.png",1.15499997},
	["armart"] = { "icons/armart_1.png",1.04999995},
	["corpyro"] = { "icons/corpyro_1.15.png",1.20749986},
	["armasy"] = { "icons/factory_ship_t2.png",1.9425},
	["coracsub"] = { "icons/sub_t2_worker.png",1.74299991},
	["armamph"] = { "icons/armamph_1.3.png",1.36499989},
	["cormmkr"] = { "icons/metalmaker_t2_1.15.png",1.20749986},
	["cormaw"] = { "icons/jammer_t1_0.9.png",0.94499993},
	["corptl"] = { "icons/aa.png",0.89249998},
	["armepoch"] = { "icons/ship_t2_flagship.png",3.46499968},
	["armdrag"] = { "icons/wall_0.4.png",0.41999999},
	["armfgate"] = { "icons/shield.png",1.57499993},
	["armnanotcplat"] = { "icons/armnanotcplat_0.92.png",0.96599996},
	["corsb"] = { "icons/air_bomber.png",1.41750002},
	["corpship"] = { "icons/ship_pship.png",1.25999999},
	["chickenw1b"] = { "icons/chicken_air.png",1.36499989},
	["armpeep"] = { "icons/air_los.png",0.78749996},
	["armpincer"] = { "icons/amphib_tank.png",1.25999999},
	["corfrad"] = { "icons/radar_t1_0.9.png",0.94499993},
	["cormando"] = { "icons/commando.png",1.41750002},
	["cornecro"] = { "icons/bot_t1_tinyworker.png",0.69300002},
	["corcomboss"] = { "icons/corcomboss.png",4.19999981},
	["cornanotc"] = { "icons/cornanotc_0.92.png",0.96599996},
	["armsfig"] = { "icons/air.png",0.86099994},
	["cormuskrat"] = { "icons/amphib_worker.png",1.36499989},
	["armsub"] = { "icons/sub.png",1.39649999},
	["cormship"] = { "icons/ship_t2_missile.png",2.0999999},
	["cormort"] = { "icons/cormort_1.3.png",1.36499989},
	["cormoho"] = { "icons/mex_t2_1.15.png",1.20749986},
	["armuwmex"] = { "icons/mex_t1_0.77.png",0.80849993},
	["corfus"] = { "icons/fusion.png",1.46999991},
	["cormlv"] = { "icons/cormlv_1.0.png",1.04999995},
	["armsh"] = { "icons/hover_raid.png",1.10249984},
	["cormls"] = { "icons/shipengineer.png",1.57499993},
	["corplat"] = { "icons/factory_air.png",1.52250004},
	["armgremlin"] = { "icons/eye.png",1.23899984},
	["cormine3"] = { "icons/mine.png",0.55649996},
	["cormine2"] = { "icons/mine.png",0.46199998},
	["corsent"] = { "icons/vehicle_t2_aa.png",1.36499989},
	["chicken_dodo1"] = { "icons/chicken.png",0.94499993},
	["armuwadvms"] = { "icons/metalstorage_t2.png",1.3125},
	["cormexp"] = { "icons/mex_t2_1.15.png",1.20749986},
	["corfast"] = { "icons/corfast_1.3.png",1.36499989},
	["corjamt"] = { "icons/jammer_t1_0.9.png",0.94499993},
	["corparrow"] = { "icons/corparrow_1.55.png",1.62749982},
	["corbuzz"] = { "icons/corbuzz_3.85.png",4.04249954},
	["corminibuzz"] = { "icons/corbuzz_3.85.png",1.88999987},
	["armvp"] = { "icons/factory_vehicle.png",1.52250004},
	["chickenr2"] = { "icons/chicken.png",1.57499993},
	["corhlt"] = { "icons/defence_1_laser_1.05.png",1.10249984},
	["cormakr"] = { "icons/metalmaker_t1_0.75.png",0.78749996},
	["armfmkr"] = { "icons/metalmaker_t1_0.75.png",0.78749996},
	["cormadsam"] = { "icons/aa.png",1.15499997},
	["armtship"] = { "icons/shiptrans.png",2.0999999},
	["armcs"] = { "icons/ship_worker.png",1.39649999},
	["corlevlr"] = { "icons/corlevlr_1.2.png",1.25999999},
	["coravp"] = { "icons/factory_vehicle_t2.png",1.9425},
	["armfort"] = { "icons/wall_0.4.png",0.41999999},
	["corfblackhyt4"] = { "icons/air_t4_flagship.png",3.3599999},
	["armrectrt4"] = { "icons/bot_worker.png",2.0999999},
	["corroy"] = { "icons/ship_destroyer.png",1.51199996},
	["armfav"] = { "icons/vehicle.png",0.57749999},
	["chickenr3"] = { "icons/chicken.png",2.72999978},
	["coraap"] = { "icons/factory_air_t2.png",1.9425},
	["corfink"] = { "icons/air_los.png",0.78749996},
	["armnanotc"] = { "icons/armnanotc_0.92.png",0.96599996},
	["corcat"] = { "icons/corcat_1.9.png",1.99499989},
	["armestor"] = { "icons/energystorage.png",1.10249984},
	["corcs"] = { "icons/ship_worker.png",1.39649999},
	["armpwt4"] = { "icons/armpwt4.png",2.30999994},
	["armuwadves"] = { "icons/energystorage_t2.png",1.3125},
	["corintr"] = { "icons/vehicle_trans.png",1.78499997},
	["corspec"] = { "icons/bot_t2_jammer.png",1.34399986},
	["armjanus"] = { "icons/armjanus_1.2.png",1.25999999},
	["corhurc"] = { "icons/air_t2_bomber.png",1.74299991},
	["armsubkold"] = { "icons/sub.png",1.39649999},
	["corhrk"] = { "icons/corhrk_1.35.png",1.41750002},
	["corhp"] = { "icons/factory_hover.png",1.52250004},
	["armflak"] = { "icons/aa_flak_1.4.png",1.46999991},
	["corwolv"] = { "icons/corwolv_1.png",1.04999995},
	["armsolar"] = { "icons/energy1_1.0.png",1.04999995},
	["armbrawl"] = { "icons/air_t2_hover.png",1.46999991},
	["corgolt4"] = { "icons/armrattet4.png",3.09749985},
	["armraz"] = { "icons/armraz_1.75.png",1.83749986},
	["corcrwt4"] = { "icons/corcrwt4.png",3.3599999},
	["corshroud"] = { "icons/jammer_t2.png",1.25999999},
	["armuwmmm"] = { "icons/metalmaker_t2_1.15.png",1.20749986},
	["corsok"] = { "icons/corsok_1.8.png",1.88999987},
	["corgatreap"] = { "icons/vehicle_t2.png",1.36499989},
	["corafus"] = { "icons/energy5_1.85.png",1.9425},
	["armcarry"] = { "icons/ship_t2_carrier.png",2.51999998},
	["corcv"] = { "icons/vehicle_worker.png",0.99749994},
	["corgate"] = { "icons/shield.png",1.57499993},
	["armvang"] = { "icons/allterrain_vanguard_2.4.png",2.51999998},
	["armmoho"] = { "icons/mex_t2_1.15.png",1.20749986},
	["armfflak"] = { "icons/aa_flak_1.4.png",1.46999991},
	["corfrock"] = { "icons/aa.png",0.89249998},
	["corfmine3"] = { "icons/mine.png",0.55649996},
	["armuwes"] = { "icons/energystorage.png",1.10249984},
	["corvrad"] = { "icons/vehicle_t2_radar.png",1.36499989},
	["corfhp"] = { "icons/factory_hover.png",1.52250004},
	["armserp"] = { "icons/sub.png",1.39649999},
	["corsjam"] = { "icons/ship_t2_jammer.png",1.73249984},
	["corfatf"] = { "icons/targetting.png",1.36499989},
	["corseal"] = { "icons/corseal_1.45.png",1.52250004},
	["cormex"] = { "icons/mex_t1_0.77.png",0.80849993},
	["coreyes"] = { "icons/eye.png",0.89249998},
	["critter_ant"] = { "icons/blank.png",1.04999995},
	["cormist"] = { "icons/vehicle_t1_missile.png",1.04999995},
	["armrattet4"] = { "icons/armrattet4.png",3.09749985},
	["corerad"] = { "icons/aa.png",1.15499997},
	["corseap"] = { "icons/air_torp.png",1.57499993},
	["corch"] = { "icons/hover_worker.png",1.25999999},
	["armaas"] = { "icons/ship_t2_aa.png",1.73249984},
	["cordemont4"] = { "icons/cordemont4.png",2.625},
	["armamsub"] = { "icons/factory_amph.png",1.52250004},
	["cordecom"] = { "icons/corcom.png",1.83749986},
	["armamb"] = { "icons/armamb_1.5.png",1.57499993},
	["corcut"] = { "icons/air_hover.png",1.25999999},
	["corcsa"] = { "icons/air_worker.png",1.25999999},
	["corjuno"] = { "icons/jammer_t2.png",1.25999999},
	["armthund"] = { "icons/air_bomber.png",1.41750002},
	["corcrw"] = { "icons/air_krow.png",2.0999999},
	["armemp"] = { "icons/emp.png",1.88999987},
	["cortide"] = { "icons/energy1_1.0.png",1.04999995},
	["corcrus"] = { "icons/ship_t2_cruiser.png",2.25749993},
	["armaca"] = { "icons/air_t2_worker.png",1.62749982},
	["corcrash"] = { "icons/corcrash_0.95.png",0.99749994},
	["corgantuw"] = { "icons/factory_gantry.png",2.51999998},
	["cordoom"] = { "icons/cordoom_1.95.png",2.0474999},
	["corkarg"] = { "icons/corkarg_2.05.png",2.15249991},
	["armscab"] = { "icons/antinukemobile.png",1.46999991},
	["armaser"] = { "icons/bot_t2_jammer.png",1.34399986},
	["corcarry"] = { "icons/ship_t2_carrier.png",2.51999998},
	["corck"] = { "icons/bot_worker.png",0.99749994},
	["corbw"] = { "icons/air_bladew.png",0.78749996},
	["corban"] = { "icons/corban_1.6.png",1.67999995},
	["armrock"] = { "icons/armrock_1.png",1.04999995},
	["corblackhy"] = { "icons/ship_t2_flagship.png",3.46499968},
	["coracv"] = { "icons/vehicle_t2_worker.png",1.36499989},
	["armyork"] = { "icons/vehicle_t2_aa.png",1.36499989},
	["armhlt"] = { "icons/defence_1_laser_1.05.png",1.10249984},
	["corbats"] = { "icons/ship_t2_battleship.png",2.67749977},
	["armfido"] = { "icons/armfido_1.28.png",1.34399986},
	["armpw"] = { "icons/bot_t1_raid_0.7.png",0.73499995},
	["armhp"] = { "icons/factory_hover.png",1.52250004},
	["coramph"] = { "icons/coramph_1.3.png",1.36499989},
	["armveil"] = { "icons/jammer_t2.png",1.25999999},
	["armmls"] = { "icons/shipengineer.png",1.57499993},
	["cormine1"] = { "icons/mine.png",0.37799999},
	["armaak"] = { "icons/amphib_t2_aa.png",1.67999995},
	["corarch"] = { "icons/ship_t2_aa.png",1.73249984},
	["armdfly"] = { "icons/air_trans.png",1.83749986},
	["armshltxuw"] = { "icons/factory_gantry.png",2.51999998},
	["corapt3"] = { "icons/factory_air_t3.png",1.52250004},
	["corape"] = { "icons/air_t2_hover_missile.png",1.46999991},
	["armfhp"] = { "icons/factory_hover.png",1.52250004},
	["armsonar"] = { "icons/radar_t1_0.9.png",0.94499993},
	["chickenh1b"] = { "icons/chicken.png",0.94499993},
	["coramsub"] = { "icons/factory_amph.png",1.52250004},
	["lootboxnano_t3_var2"] = { "icons/scavnanotc_t3.png",2.46749973},
	["armlun"] = { "icons/armlun_1.8.png",1.88999987},
	["coralab"] = { "icons/factory_bot_t2.png",1.9425},
	["coraca"] = { "icons/air_t2_worker.png",1.62749982},
	["armmmkr"] = { "icons/metalmaker_t2_1.15.png",1.20749986},
	["corak"] = { "icons/bot_t1_raid_0.7.png",0.73499995},
	["armbull"] = { "icons/vehicle_t2_tank.png",1.46999991},
	["armlunchbox"] = { "icons/allterrain.png",2.0474999},
	["armrectr"] = { "icons/bot_t1_tinyworker.png",0.69300002},
	["armfboy"] = { "icons/armfboy_1.6.png",1.67999995},
	["armlance"] = { "icons/air_t2_torpbomber.png",1.67999995},
	["chickenr1"] = { "icons/chicken.png",1.57499993},
	["corrad"] = { "icons/radar_t1_0.9.png",0.94499993},
	["armeyes"] = { "icons/eye.png",0.89249998},
	["corgeo"] = { "icons/energy6_1.3.png",1.36499989},
	["armamex"] = { "icons/mex_t1_0.77.png",0.80849993},
	["corsonar"] = { "icons/radar_t1_0.9.png",0.94499993},
	["chickena2"] = { "icons/chicken.png",1.57499993},
	["armmar"] = { "icons/amphib_t3.png",2.20499969},
	["armuwms"] = { "icons/metalstorage.png",1.10249984},
	["chicken2b"] = { "icons/chicken.png",1.25999999},
	["corestor"] = { "icons/energystorage.png",1.10249984},
	["armserpold"] = { "icons/sub.png",1.39649999},
	["lootboxnano_t1_var4"] = { "icons/scavnanotc_t1.png",1.57499993},
	["armgplat"] = { "icons/defence_0_0.8.png",0.83999997},
	["armapt3"] = { "icons/factory_air_t3.png",1.52250004},
	["chicken2"] = { "icons/chicken.png",1.25999999},
	["chickenw1c"] = { "icons/chicken_air.png",1.36499989},
	["chickenw1"] = { "icons/chicken_air.png",1.36499989},
	["armatlas"] = { "icons/air_trans.png",1.36499989},
	["armcv"] = { "icons/vehicle_worker.png",0.99749994},
	["corasp"] = { "icons/corasp_2.4.png",2.51999998},
	["armmstor"] = { "icons/metalstorage.png",1.10249984},
	["chickens1"] = { "icons/chicken.png",1.25999999},
	["correcl"] = { "icons/sub_t2_worker.png",1.74299991},
	["armjeth"] = { "icons/armjeth_0.95.png",0.99749994},
	["armdl"] = { "icons/defence_1_naval.png",1.10249984},
	["armmex"] = { "icons/mex_t1_0.77.png",0.80849993},
	["chickenh5"] = { "icons/chicken.png",1.57499993},
	["critter_goldfish"] = { "icons/blank.png",1.04999995},
	["chickenh3"] = { "icons/chicken.png",1.25999999},
	["corjugg"] = { "icons/juggernaut.png",3.14999986},
	["chickenh1"] = { "icons/chicken.png",0.94499993},
	["armmh"] = { "icons/hover_t1_missile.png",1.41750002},
	["chickenf1b"] = { "icons/chicken_air.png",1.78499997},
	["chickenf1"] = { "icons/chicken_air.png",1.78499997},
	["armspid"] = { "icons/allterrain_emp.png",1.04999995},
	["chickena2b"] = { "icons/chicken.png",1.57499993},
	["armsb"] = { "icons/air_bomber.png",1.41750002},
	["armmakr"] = { "icons/metalmaker_t1_0.75.png",0.78749996},
	["armsilo"] = { "icons/nuke.png",2.51999998},
	["banana"] = { "icons/unknown.png",2.0999999},
	["armcomboss"] = { "icons/armcomboss.png",4.19999981},
	["armlatnk"] = { "icons/armlatnk_1.3.png",1.36499989},
	["armanac"] = { "icons/hover_gun.png",1.10249984},
	["armcir"] = { "icons/aa.png",1.15499997},
	["armsptk"] = { "icons/armsptk_1.44.png",1.51199996},
	["chickens2"] = { "icons/chicken.png",1.57499993},
	["armfdrag"] = { "icons/wall_0.4.png",0.41999999},
	["armdf"] = { "icons/fusion.png",1.46999991},
	["armbanth"] = { "icons/bantha.png",2.83500004},
	["armtorps"] = { "icons/ship.png",1.25999999},
	["chicken1b"] = { "icons/chicken.png",0.94499993},
	["corshark"] = { "icons/sub_t2.png",1.78499997},
	["armaap"] = { "icons/factory_air_t2.png",1.9425},
	["armcrus"] = { "icons/ship_t2_cruiser.png",2.25749993},
	["cortermite"] = { "icons/cortermite_1.5.png",1.57499993},
	["armbeamer"] = { "icons/defence_0_laser2_0.94.png",0.98699993},
	["armstone"] = { "icons/blank.png",1.04999995},
	["armmav"] = { "icons/armmav_1.3.png",1.36499989},
	["chickend1"] = { "icons/chicken_roost.png",1.57499993},
	["armfhlt"] = { "icons/defence_1_laser_1.05.png",1.10249984},
	["armfrt"] = { "icons/aa.png",0.89249998},
	["corthud"] = { "icons/corthud_1.05.png",1.10249984},
	["armpnix"] = { "icons/air_t2_bomber.png",1.74299991},
	["armlab"] = { "icons/factory_bot.png",1.52250004},
	["armkam"] = { "icons/air_hover.png",1.25999999},
	["chickenh2"] = { "icons/chicken.png",1.25999999},
	["armplat"] = { "icons/factory_air.png",1.52250004},
	["armbeaver"] = { "icons/amphib_worker.png",1.36499989},
	["armasp"] = { "icons/armasp_2.4.png",2.51999998},
	["armadvsol"] = { "icons/energy2_1.18.png",1.23899984},
	["cordl"] = { "icons/defence_1_naval.png",1.10249984},
	["armmine1"] = { "icons/mine.png",0.37799999},
	["corfort"] = { "icons/wall_0.4.png",0.41999999},
	["armck"] = { "icons/bot_worker.png",0.99749994},
}

setmetatable(units, { __index = 
function(table, key)
	if string.find(key, "_scav") then
		local new_key = key:gsub("_scav", "")
		local normal_icon = units[new_key]
		local new_object;
		if normal_icon then
			local new_path = normal_icon[1]:gsub("icons/", "icons/inverted/") --change icons/ for icons/inverted
			new_object = {new_path, normal_icon[2]} -- new path old 
		end
		return new_object
	end
end})

local iconTypes = {}
function addUnitIcon(name, path, size)
    Spring.AddUnitIcon(name, path, size)
    iconTypes[name] = path
end
function loadUnitIcons()
	for id, unit in ipairs(UnitDefs) do 
		local name = unit.name
		local icon = units[name]
		if icon then
			local path = icon[1]
			local size = icon[2]
			spFreeUnitIcon(name) --Free the icon so it can be used
			addUnitIcon(name, path, size * iconScale) -- Create the icon in the enigne
			spSetUnitDefIcon(id, name)  -- Set the unit icon
		else 
			Spring.Echo("No icon for: " ..name)
		end
	end
end



local myPlayerID = Spring.GetMyPlayerID()

function gadget:GotChatMsg(msg, playerID)
	if playerID == myPlayerID then
		if string.sub(msg, 1, 14) == "uniticonscale " then
			iconScale = tonumber(string.sub(msg, 15))
			Spring.SetConfigFloat("UnitIconScale", iconScale)
			loadUnitIcons()
		end
	end
end

function GetIconTypes()
	return iconTypes
end

function gadget:Initialize()
	gadgetHandler:RegisterGlobal('GetIconTypes', GetIconTypes)
	if Spring.GetGameFrame() == 0 then
		loadUnitIcons()
	end
end