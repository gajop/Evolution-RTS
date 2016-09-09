return {
	chickena2 = {
		acceleration = 0.36,
		airsightdistance = 1800,
		autoheal = 25,
		bmcode = "1",
		brakerate = 0.4,
		buildcostenergy = 3520,
		buildcostmetal = 302,
		builder = false,
		buildtime = 20000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		category = "MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 10 2",
		collisionvolumescales = "37 55 90",
		collisionvolumetype = "box",
		corpse = "DEAD",
		defaultmissiontype = "Standby",
		description = "Advanced Assault",
		explodeas = "BIGBUG_DEATH",
		footprintx = 3,
		footprintz = 3,
		icontype = "chickena",
		leavetracks = true,
		maneuverleashlength = "640",
		mass = 3000,
		maxdamage = 44000,
		maxslope = 18,
		maxvelocity = 0.9,
		maxwaterdepth = 15,
		movementclass = "CHICKENHKBOT4",
		name = "Alpha Cockatrice",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "ChickenDefenseModels/chickena2.s3o",
		script = "ChickenDefenseScripts/chickena2.cob",
		onlytargetcategory2 = "VTOL",
		seismicsignature = 0,
		selfdestructas = "BIGBUG_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 600,
		smoothanim = true,
		steeringmode = "2",
		tedclass = "KBOT",
		trackoffset = 7,
		trackstrength = 9,
		trackstretch = 1,
		tracktype = "ChickenTrack",
		trackwidth = 38,
		turninplace = 0,
		turnrate = 468,
		unitname = "chickena2",
		upright = false,
		workertime = 0,
		featuredefs = {
			dead = {},
			heap = {},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
				[4] = "custom:blob_fire",
			},
		},
		weapondefs = {
			aaweapon = {
				areaofeffect = 200,
				avoidfriendly = false,
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				dance = 20,
				edgeeffectiveness = 0.05,
				explosiongenerator = "custom:blood_explode_blue",
				firestarter = 0,
				flighttime = 2.5,
				heightmod = 0.5,
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 2,
				metalpershot = 0,
				model = "ChickenDefenseModels/AgamAutoBurst.s3o",
				name = "BlobMissile",
				noselfdamage = true,
				proximitypriority = 4,
				range = 900,
				reloadtime = 8,
				smoketrail = true,
				soundhit = "ChickenDefenseSounds/junohit2edit",
				startvelocity = 200,
				texture1 = "",
				texture2 = "sporetrail",
				tolerance = 10000,
				tracks = true,
				trajectoryheight = 2,
				turnrate = 24000,
				turret = true,
				weaponacceleration = 75,
				weapontype = "MissileLauncher",
				weaponvelocity = 700,
				wobble = 32000,
				damage = {
					bombers = 1100,
					default = 400,
					fighters = 1500,
					vtol = 1300,
				},
			},
			weapon = {
				areaofeffect = 42,
				avoidfeature = 0,
				avoidfriendly = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:NONE",
				impulseboost = 1,
				impulsefactor = 2.2,
				interceptedbyshieldtype = 0,
				name = "Claws",
				noselfdamage = true,
				range = 165,
				reloadtime = 0.8,
				size = 0,
				soundstart = "ChickenDefenseSounds/smallchickenattack",
				targetborder = 1,
				tolerance = 5000,
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 700,
				damage = {
					chicken = 0.001,
					default = 300,
					tinychicken = 0.001,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "WEAPON",
				maindir = "0 0 1",
				maxangledif = 125,
				onlytargetcategory = "NOTAIR",
			},
			[2] = {
				badtargetcategory = "NOTAIR",
				def = "AAWEAPON",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
