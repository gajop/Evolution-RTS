return {
	chickenc1 = {
		acceleration = 1.25,
		bmcode = "1",
		brakerate = 2,
		buildcostenergy = 5280,
		buildcostmetal = 170,
		builder = false,
		buildtime = 7000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		category = "MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 11 3",
		collisionvolumescales = "25 38 64",
		collisionvolumetype = "box",
		corpse = "DEAD",
		defaultmissiontype = "Standby",
		description = "All-Terrain Assault",
		explodeas = "BIGBUG_DEATH",
		footprintx = 3,
		footprintz = 3,
		icontype = "chickenr",
		leavetracks = true,
		maneuverleashlength = "640",
		mass = 700,
		maxdamage = 4250,
		maxreversevelocity = 2,
		maxslope = 18,
		maxvelocity = 2.5,
		maxwaterdepth = 15,
		movementclass = "CHICKENHKBOT3",
		name = "Basilisk",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "ChickenDefenseModels/chickenc.s3o",
		script = "ChickenDefenseScripts/chickenc1.cob",
		seismicsignature = 3,
		selfdestructas = "BIGBUG_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 512,
		smoothanim = true,
		sonardistance = 450,
		steeringmode = "2",
		tedclass = "KBOT",
		trackoffset = 0.5,
		trackstrength = 9,
		trackstretch = 1,
		tracktype = "ChickenTrackPointy",
		trackwidth = 70,
		turninplace = 0,
		turnrate = 400,
		unitname = "chickenc1",
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
			},
		},
		weapondefs = {
			weapon = {
				accuracy = 256,
				areaofeffect = 96,
				avoidfeature = 0,
				burst = 3,
				burstrate = 0.01,
				camerashake = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "custom:blood_explode_blue",
				impulseboost = 0.22,
				impulsefactor = 0.22,
				intensity = 0.7,
				interceptedbyshieldtype = 1,
				name = "Blob",
				noselfdamage = true,
				range = 300,
				reloadtime = 3.6,
				rgbcolor = "0.0 0.6 0.6",
				size = 8,
				sizedecay = -0.3,
				soundhit = "ChickenDefenseSounds/junohit2edit",
				sprayangle = 512,
				targetmoveerror = 0.4,
				tolerance = 5000,
				turret = true,
				weapontimer = 0.2,
				weaponvelocity = 500,
				damage = {
					amphibious = 335,
					anniddm = 335,
					antibomber = 335,
					antifighter = 335,
					antiraider = 335,
					atl = 335,
					blackhydra = 335,
					bombers = 400,
					chicken = 105,
					commanders = 335,
					crawlingbombs = 335,
					default = 335,
					dl = 335,
					fighters = 400,
					flakboats = 335,
					flaks = 335,
					flamethrowers = 335,
					heavyunits = 335,
					krogoth = 335,
					l1subs = 335,
					l2subs = 335,
					l3subs = 335,
					mechs = 335,
					mines = 335,
					nanos = 335,
					orcone = 335,
					otherboats = 335,
					plasmaguns = 335,
					radar = 335,
					seadragon = 335,
					tinychicken = 105,
					tl = 335,
					vtol = 400,
					vulcbuzz = 335,
				},
			},
		},
		weapons = {
			[1] = {
				def = "WEAPON",
				maindir = "0 0 1",
				maxangledif = 110,
			},
		},
	},
}
