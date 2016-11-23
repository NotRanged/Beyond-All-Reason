unitDef = {
  unitname               = [[critter_goldfish]],
  name                   = [[Goldfish]],
  description            = [[shiny!]],
  iconType = "blank",
  acceleration           = 0.016,
  activateWhenBuilt      = true,
  brakeRate              = 0.2,
  buildCostEnergy        = 0,
  buildCostMetal         = 0,
  builder                = false,
  buildTime              = 600,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = true,
  category               = [[NOWEAPON MOBILE NOTLAND NOTAIR NOTSEA SUB]],
  explodeAs              = [[SMALL_UNITEX]],
  footprintX             = 1,
  footprintZ             = 1,
  idleAutoHeal           = 5,
  idleTime               = 1800,
  reclaimable            = false,
  mass                   = 1,
  maxDamage              = 10,
  maxVelocity            = 0.6,
  minCloakDistance       = 75,
  minWaterDepth          = 15, -- not used, minWaterDepth in movedef used instead (36)
  movementClass          = [[UBOAT3]],
  selfDestructCountdown = 0,
  noAutoFire             = false,
  noChaseCategory        = [[MOBILE STATIC]],
  objectName             = [[critter_goldfish.s3o]],
  script                 = [[critter_goldfish.lua]],
  sightDistance          = 0,
  seismicSignature       = 0,
  sonarDistance          = 550,
  turninplace            = 0,
  turnRate               = 3000,
  upright                = true,
  waterline              = 20,
  workerTime             = 0,
  stealth 			         = true,
  sonarStealth		       = true,
	blocking						   = false,
	capturable             = false,
}

return lowerkeys({ critter_goldfish = unitDef })
