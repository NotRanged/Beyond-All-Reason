-- XP Effects

return {
 ["levelup_fp1"] = {
    levelup_rings = {
            air                = true,
            class              = [[CExpGenSpawner]],
            count              = 2,
            ground             = true,
            water              = true,
            underwater         = true,
            properties = {
                delay              = [[0 i7]],
                explosiongenerator = [[custom:levelup_ring_fp1]],
                pos                = [[0, 0 i8, 0]],
            },
        },
    spawnbeam = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.88 0.65 0.10 0.20   0.85 0.85 0.24 0.14   0.78 0.50 0.15 0.08   0.58 0.30 0.08 0.06   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = 110,
        sidetexture        = [[gunshotxl2]],
        size               = 12,
        sizegrowth         = 0.6,
        ttl                = 20,
        pos                = [[0, 6, 0]],
      },
    },
    groundflash_small = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.92 0.71 0.21 0.3   0 0 0 0.01]],
        size               = 30,
        sizegrowth         = -1,
        ttl                = 18,
        texture            = [[circlefx2]],
      },
    },
    groundflash_large = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.2   0 0 0 0.01]],
        size               = 60,
        sizegrowth         = -3.5,
        ttl                = 30,
        texture            = [[groundflash]],
      },
    },
    groundflash_white = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.99 0.95 0.66 0.77   0 0 0 0.01]],
        size               = 55,
        sizegrowth         = -1,
        ttl                = 5,
        texture            = [[groundflash]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.91,
        colormap           = [[0.96 0.76 0.13 0.017   0.92 0.71 0.21 0.011   0 0 0 0.1]],
        directional        = true,
        emitrot            = 30,
        emitrotspread      = 50,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.25, 0]],
        numparticles       = 5,
        particlelife       = 9,
        particlelifespread = 17,
        particlesize       = 5,
        particlesizespread = 7,
        particlespeed      = 1.2,
        particlespeedspread = 2,
        pos                = [[0, -10, 0]],
        sizegrowth         = 0.98,
        sizemod            = 0.94,
        texture            = [[randdots]],
        useairlos          = false,
      },
    },
  },

 ["levelup_fp2"] = {
    levelup_rings = {
            air                = true,
            class              = [[CExpGenSpawner]],
            count              = 3,
            ground             = true,
            water              = true,
            underwater         = true,
            properties = {
                delay              = [[0 i5]],
                explosiongenerator = [[custom:levelup_ring_fp2]],
                pos                = [[0, 0 i13, 0]],
            },
        },
    spawnbeam = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.88 0.65 0.10 0.20   0.85 0.85 0.24 0.14   0.78 0.50 0.15 0.08   0.58 0.30 0.08 0.06   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = 170,
        sidetexture        = [[gunshotxl2]],
        size               = 16,
        sizegrowth         = 0.6,
        ttl                = 20,
        pos                = [[0, 6, 0]],
      },
    },
    groundflash_small = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.92 0.71 0.21 0.3   0 0 0 0.01]],
        size               = 50,
        sizegrowth         = -2,
        ttl                = 18,
        texture            = [[circlefx2]],
      },
    },
    groundflash_large = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.2   0 0 0 0.01]],
        size               = 80,
        sizegrowth         = -3.5,
        ttl                = 30,
        texture            = [[groundflash]],
      },
    },
    groundflash_white = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.99 0.95 0.66 0.77   0 0 0 0.01]],
        size               = 70,
        sizegrowth         = -1,
        ttl                = 5,
        texture            = [[groundflash]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.91,
        colormap           = [[0.96 0.76 0.13 0.017   0.92 0.71 0.21 0.011   0 0 0 0.1]],
        directional        = true,
        emitrot            = 30,
        emitrotspread      = 50,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.25, 0]],
        numparticles       = 7,
        particlelife       = 12,
        particlelifespread = 24,
        particlesize       = 6,
        particlesizespread = 10,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, -10, 0]],
        sizegrowth         = 0.98,
        sizemod            = 0.94,
        texture            = [[randdots]],
        useairlos          = false,
      },
    },
  },

  ["levelup_fp3"] = {
    levelup_rings = {
            air                = true,
            class              = [[CExpGenSpawner]],
            count              = 3,
            ground             = true,
            water              = true,
            underwater         = true,
            properties = {
                delay              = [[0 i5]],
                explosiongenerator = [[custom:levelup_ring_fp3]],
                pos                = [[0, 5 i13, 0]],
            },
        },
    spawnbeam = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.88 0.65 0.10 0.20   0.85 0.85 0.24 0.14   0.78 0.50 0.15 0.08   0.58 0.30 0.08 0.06   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = 190,
        sidetexture        = [[gunshotxl2]],
        size               = 18,
        sizegrowth         = 0.6,
        ttl                = 20,
        pos                = [[0, 6, 0]],
      },
    },
    groundflash_small = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.92 0.71 0.21 0.3   0 0 0 0.01]],
        size               = 56,
        sizegrowth         = -2,
        ttl                = 18,
        texture            = [[circlefx2]],
      },
    },
    groundflash_large = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.2   0 0 0 0.01]],
        size               = 80,
        sizegrowth         = -3.5,
        ttl                = 30,
        texture            = [[groundflash]],
      },
    },
    groundflash_white = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.99 0.95 0.66 0.77   0 0 0 0.01]],
        size               = 70,
        sizegrowth         = -1,
        ttl                = 5,
        texture            = [[groundflash]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.91,
        colormap           = [[0.96 0.76 0.13 0.017   0.92 0.71 0.21 0.011   0 0 0 0.1]],
        directional        = true,
        emitrot            = 30,
        emitrotspread      = 50,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.25, 0]],
        numparticles       = 7,
        particlelife       = 12,
        particlelifespread = 24,
        particlesize       = 6,
        particlesizespread = 10,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, -10, 0]],
        sizegrowth         = 0.98,
        sizemod            = 0.94,
        texture            = [[randdots]],
        useairlos          = false,
      },
    },
  },

  ["levelup_fp4"] = {
    levelup_rings = {
            air                = true,
            class              = [[CExpGenSpawner]],
            count              = 3,
            ground             = true,
            water              = true,
            underwater         = true,
            properties = {
                delay              = [[0 i5]],
                explosiongenerator = [[custom:levelup_ring_fp4]],
                pos                = [[0, 16 i16, 0]],
            },
        },
    spawnbeam = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.88 0.65 0.10 0.20   0.85 0.85 0.24 0.14   0.78 0.50 0.15 0.08   0.58 0.30 0.08 0.06   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = 200,
        sidetexture        = [[gunshotxl2]],
        size               = 19,
        sizegrowth         = 0.6,
        ttl                = 20,
        pos                = [[0, 6, 0]],
      },
    },
    groundflash_small = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.92 0.71 0.21 0.3   0 0 0 0.01]],
        size               = 72,
        sizegrowth         = -2,
        ttl                = 18,
        texture            = [[circlefx2]],
      },
    },
    groundflash_large = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.2   0 0 0 0.01]],
        size               = 140,
        sizegrowth         = -3.5,
        ttl                = 30,
        texture            = [[groundflash]],
      },
    },
    groundflash_white = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.99 0.95 0.66 0.77   0 0 0 0.01]],
        size               = 100,
        sizegrowth         = -1,
        ttl                = 5,
        texture            = [[groundflash]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.91,
        colormap           = [[0.96 0.76 0.13 0.017   0.92 0.71 0.21 0.011   0 0 0 0.1]],
        directional        = true,
        emitrot            = 30,
        emitrotspread      = 50,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.25, 0]],
        numparticles       = 8,
        particlelife       = 14,
        particlelifespread = 28,
        particlesize       = 8,
        particlesizespread = 12,
        particlespeed      = 3,
        particlespeedspread = 3,
        pos                = [[0, -10, 0]],
        sizegrowth         = 0.98,
        sizemod            = 0.94,
        texture            = [[randdots]],
        useairlos          = false,
      },
    },
  },

  ["levelup_fp5"] = {
    levelup_rings = {
            air                = true,
            class              = [[CExpGenSpawner]],
            count              = 3,
            ground             = true,
            water              = true,
            underwater         = true,
            properties = {
                delay              = [[0 i6]],
                explosiongenerator = [[custom:levelup_ring_fp5]],
                pos                = [[0, 25 i25, 0]],
            },
        },
    spawnbeam = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.88 0.65 0.10 0.20   0.85 0.85 0.24 0.14   0.78 0.50 0.15 0.08   0.58 0.30 0.08 0.06   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = 250,
        sidetexture        = [[gunshotxl2]],
        size               = 20,
        sizegrowth         = 0.6,
        ttl                = 22,
        pos                = [[0, 6, 0]],
      },
    },
    groundflash_small = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.92 0.71 0.21 0.3   0 0 0 0.01]],
        size               = 92,
        sizegrowth         = -2,
        ttl                = 18,
        texture            = [[circlefx2]],
      },
    },
    groundflash_large = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.2   0 0 0 0.01]],
        size               = 170,
        sizegrowth         = -3.5,
        ttl                = 30,
        texture            = [[groundflash]],
      },
    },
    groundflash_white = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.99 0.95 0.66 0.77   0 0 0 0.01]],
        size               = 140,
        sizegrowth         = -1,
        ttl                = 5,
        texture            = [[groundflash]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.91,
        colormap           = [[0.96 0.76 0.13 0.017   0.92 0.71 0.21 0.011   0 0 0 0.1]],
        directional        = true,
        emitrot            = 30,
        emitrotspread      = 50,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.25, 0]],
        numparticles       = 10,
        particlelife       = 16,
        particlelifespread = 32,
        particlesize       = 10,
        particlesizespread = 14,
        particlespeed      = 3,
        particlespeedspread = 4,
        pos                = [[0, -10, 0]],
        sizegrowth         = 0.98,
        sizemod            = 0.94,
        texture            = [[randdots]],
        useairlos          = false,
      },
    },
  },

  ["levelup_ring_fp1"] = {
    levelupring = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.33   0.99 0.95 0.27 0.22   0.92 0.71 0.21 0.011   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[blastwave]],
        length             = 45,
        sidetexture        = [[none]],
        size               = 6,
        sizegrowth         = 1.6,
        ttl                = 20,
        pos                = [[0, 6, 0]],
      },
    },
  },


  ["levelup_ring_fp2"] = {
    levelupring = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.33   0.99 0.95 0.27 0.22   0.92 0.71 0.21 0.011   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[blastwave]],
        length             = 45,
        sidetexture        = [[none]],
        size               = 8,
        sizegrowth         = 2,
        ttl                = 20,
        pos                = [[0, 6, 0]],
      },
    },
  },

  ["levelup_ring_fp3"] = {
    levelupring = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.33   0.99 0.95 0.27 0.22   0.92 0.71 0.21 0.011   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[blastwave]],
        length             = 45,
        sidetexture        = [[none]],
        size               = 11,
        sizegrowth         = 1.7,
        ttl                = 20,
        pos                = [[0, 6, 0]],
      },
    },
  },

  ["levelup_ring_fp4"] = {
    levelupring = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.33   0.99 0.95 0.27 0.22   0.92 0.71 0.21 0.011   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[blastwave]],
        length             = 45,
        sidetexture        = [[none]],
        size               = 14,
        sizegrowth         = 1.7,
        ttl                = 20,
        pos                = [[0, 6, 0]],
      },
    },
  },

  ["levelup_ring_fp5"] = {
    levelupring = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.96 0.76 0.13 0.33   0.99 0.95 0.27 0.22   0.92 0.71 0.21 0.011   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[blastwave]],
        length             = 45,
        sidetexture        = [[none]],
        size               = 17,
        sizegrowth         = 1.8,
        ttl                = 25,
        pos                = [[0, 6, 0]],
      },
    },
  },
}
