return {
	armlun = {
		acceleration = 0.035,
		brakerate = 0.15,
		buildcostenergy = 84841,
		buildcostmetal = 5787,
		builder = false,
		buildtime = 98500,
		buildpic = "ARMLUN.DDS",
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		cantbetransported = true,
		category = "ALL HOVER MOBILE WEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		corpse = "dead",
		description = "Heavy Hovertank",
		energymake = 2.8,
		energyuse = 2.5,
		explodeas = "largeExplosionGenericPurple",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 15560,
		maxslope = 16,
		maxvelocity = 1.7,
		maxwaterdepth = 0,
		movementclass = "HHOVER3",
		name = "Lun",
		nochasecategory = "VTOL",
		objectname = "ARMLUN",
		radardistance = 0,
		selfdestructas = "largeExplosionGenericPurple",
		sightdistance = 620,
		sonardistance = 550,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.122,
		turnrate = 250,
		customparams = {
			death_sounds = "generic",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				damage = 7000,
				description = "Lun Wreckage",
				featuredead = "heap",
				featurereclamate = "smudge01",
				footprintx = 4,
				footprintz = 4,
				height = 15,
				hitdensity = 100,
				metal = 2591,
				object = "armlun_dead",
				reclaimable = true,
				seqnamereclamate = "tree1reclamate",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 3500,
				description = "Lun Heap",
				featurereclamate = "smudge01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 947,
				object = "4x4d",
                collisionvolumescales = "85.0 14.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "tree1reclamate",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg3",
				"deathceg4",
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
				[1] = "hovlgok1",
			},
			select = {
				[1] = "hovlgsl1",
			},
		},
		weapondefs = {
			armlun_depthcharge = {
				areaofeffect = 170,
				avoidfeature = false,
				burst = 2,
				burstrate = 0.35,
				craterareaofeffect = 170,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium-white",
				impulseboost = 0,
				impulsefactor = 0,
				model = "depthcharge",
				name = "DepthCharge",
				noselfdamage = true,
				range = 800,
				reloadtime = 2.5,
				soundhitdry = "xplomed2",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "Mavgun2",
				tolerance = 4000,
				tracks = true,
				turnrate = 27000,
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 250,
				damage = {
					default = 540,
					nothover = 400,
					notship = 400,
					notsub = 400,
				},
			},
			armlun_starburst = {
				acceleration = 200,
				areaofeffect = 130,
				avoidfeature = false,
				craterareaofeffect = 130,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-large",
				firestarter = 70,
				flighttime = 6,
				impulseboost = 0,
				impulsefactor = 0,
				model = "Advtorpedo",
				name = "Guided Rockets",
				proximitypriority = -1,
				range = 800,
				reloadtime = 6,
				smoketrail = false,
				soundhitdry = "xplomed4",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "torpedo1",
				startvelocity = 300,
				tolerance = 50000,
				tracks = true,
				turnrate = 20000,
				weapontimer = 0.8,
				weapontype = "StarburstLauncher",
				weaponvelocity = 1000,
				damage = {
					default = 1350,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARMLUN_DEPTHCHARGE",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "ARMLUN_STARBURST",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
