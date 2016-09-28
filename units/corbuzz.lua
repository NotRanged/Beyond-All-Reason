return {
	corbuzz = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 29096,
		buildcostenergy = 513498,
		buildcostmetal = 43280,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 11,
		buildinggrounddecalsizey = 11,
		buildinggrounddecaltype = "corbuzz_aoplane.dds",
		buildpic = "CORBUZZ.DDS",
		buildtime = 1020945,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -14 0",
		collisionvolumescales = "80 162 80",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Rapid-Fire Long-Range Plasma Cannon",
		explodeas = "hugeBuildingExplosionGenericRed",
		footprintx = 8,
		footprintz = 8,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 30000,
		fireState = 0,
		maxslope = 13,
		maxwaterdepth = 0,
		name = "Buzzsaw",
		objectname = "CORBUZZ",
		seismicsignature = 0,
		selfdestructas = "hugeBuildingExplosionGenericRed",
		sightdistance = 700,
		usebuildinggrounddecal = true,
		yardmap = "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
		customparams = {
			death_sounds = "generic",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "1.84717559814 -0.761228344727 2.30910491943",
				collisionvolumescales = "83.9113311768 124.753143311 117.611557007",
				collisionvolumetype = "Box",
				damage = 20976,
				description = "Buzzsaw Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 7,
				footprintz = 7,
				height = 20,
				hitdensity = 100,
				metal = 21099,
				object = "CORBUZZ_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 10488,
				description = "Buzzsaw Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 7,
				footprintz = 7,
				height = 4,
				hitdensity = 100,
				metal = 8440,
				object = "7X7A",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			 pieceExplosionGenerators = { 
 				"deathceg3",
 				"deathceg4",
 			}, 
			explosiongenerators = {
				[1] = "custom:vulcanflare",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "servlrg4",
			},
			select = {
				[1] = "servlrg4",
			},
		},
		weapondefs = {
			corbuzz_weapon = {
				accuracy = 750,
				areaofeffect = 256,
				avoidfeature = false,
				avoidground = false,
				craterareaofeffect = 256,
				craterboost = 0.1,
				cratermult = 0.1,
				edgeeffectiveness = 0.8,
				energypershot = 15725,
				explosiongenerator = "custom:genericshellexplosion-large-white",
				gravityaffected = "true",
				impulseboost = 0.5,
				impulsefactor = 0.5,
				name = "RapidfireLRPC",
				noselfdamage = true,
				range = 6100,
				reloadtime = 0.5,
				rgbcolor = "1, 0.4, 0",
				soundhit = "rflrpc3",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "XPLONUK4",
				turret = true,
				weapontimer = 14,
				weapontype = "Cannon",
				weaponvelocity = 1150,
				damage = {
					default = 1330,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "CORBUZZ_WEAPON",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
