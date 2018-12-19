return {
	armacv = {
		acceleration = 0.0726,
		brakerate = 0.9108,
		buildcostenergy = 6700,
		buildcostmetal = 550,
		builddistance = 136,
		builder = true,
		shownanospray = false,
		buildpic = "ARMACV.DDS",
		buildtime = 12397,
		canmove = true,
		category = "ALL TANK MOBILE NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "39 26 39",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Tech Level 2",
		energymake = 20,
		energystorage = 100,
		energyuse = 20,
		explodeas = "mediumexplosiongeneric-builder",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 1860,
		maxslope = 16,
		maxvelocity = 1.63,
		maxwaterdepth = 18,
		metalmake = 0.2,
		metalstorage = 100,
		movementclass = "TANK3",
		name = "Advanced Construction Vehicle",
		objectname = "ARMACV",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd-builder",
		sightdistance = 289.89999,
		terraformspeed = 1250,
		trackstrength = 6,
		tracktype = "StdTank",
		trackwidth = 34,
		turninplace = true,
		turninplaceanglelimit = 60,
		turninplacespeedlimit = 1.2342,
		turnrate = 399,
		workertime = 250,
		buildoptions = {
			[1] = "armfus",
			[2] = "armckfus",
			[3] = "armafus",
			[4] = "armageo",
			[5] = "armgmm",
			[6] = "armmoho",
			[7] = "armmmkr",
			[8] = "armuwadves",
			[9] = "armuwadvms",
			[10] = "armarad",
			[11] = "armveil",
			[12] = "armfort",
			[13] = "armasp",
			[14] = "armtarg",
			[15] = "armsd",
			[16] = "armgate",
			[17] = "armamb",
			[18] = "armpb",
			[19] = "armanni",
			[20] = "armflak",
			[21] = "armmercury",
			[22] = "armemp",
			[23] = "armamd",
			[24] = "armsilo",
			[25] = "armbrtha",
			[26] = "armvulc",
			[27] = "armdf",
			[28] = "armvp",
			[29] = "armavp",
		},
		customparams = {
			arm_tank = "1",
			techlevel = 2,
			area_mex_def = "armmoho",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-1.56380462646 3.71948242179e-05 -0.0",
				collisionvolumescales = "35.0990447998 22.3118743896 47.5",
				collisionvolumetype = "Box",
				damage = 1500,
				description = "Advanced Construction Vehicle Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 280,
				object = "ARMACV_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1000,
				description = "Advanced Construction Vehicle Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 112,
				object = "3X3A",
                collisionvolumescales = "55.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2-builder",
				"deathceg3-builder",
				"deathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "varmmove",
			},
			select = {
				[1] = "varmsel",
			},
		},
	},
}
