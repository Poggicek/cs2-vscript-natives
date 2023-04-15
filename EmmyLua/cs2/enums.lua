---@meta

---@alias DamageType
---| `DMG_GENERIC` # 0
---| `DMG_CRUSH` # 1
---| `DMG_BULLET` # 2
---| `DMG_SLASH` # 4
---| `DMG_BURN` # 8
---| `DMG_VEHICLE` # 16
---| `DMG_FALL` # 32
---| `DMG_BLAST` # 64
---| `DMG_CLUB` # 128
---| `DMG_SHOCK` # 256
---| `DMG_SONIC` # 512
---| `DMG_ENERGYBEAM` # 1024
---| `DMG_PREVENT_PHYSICS_FORCE` # 2048
---| `DMG_NEVERGIB` # 4096
---| `DMG_ALWAYSGIB` # 8192
---| `DMG_DROWN` # 16384
---| `DMG_PARALYZE` # 32768
---| `DMG_NERVEGAS` # 65536
---| `DMG_POISON` # 131072
---| `DMG_RADIATION` # 262144
---| `DMG_DROWNRECOVER` # 524288
---| `DMG_ACID` # 1048576
---| `DMG_SLOWBURN` # 2097152
---| `DMG_REMOVENORAGDOLL` # 4194304
---| `DMG_PHYSGUN` # 8388608
---| `DMG_PLASMA` # 16777216
DMG_GENERIC = 0
DMG_CRUSH = 1
DMG_BULLET = 2
DMG_SLASH = 4
DMG_BURN = 8
DMG_VEHICLE = 16
DMG_FALL = 32
DMG_BLAST = 64
DMG_CLUB = 128
DMG_SHOCK = 256
DMG_SONIC = 512
DMG_ENERGYBEAM = 1024
DMG_PREVENT_PHYSICS_FORCE = 2048
DMG_NEVERGIB = 4096
DMG_ALWAYSGIB = 8192
DMG_DROWN = 16384
DMG_PARALYZE = 32768
DMG_NERVEGAS = 65536
DMG_POISON = 131072
DMG_RADIATION = 262144
DMG_DROWNRECOVER = 524288
DMG_ACID = 1048576
DMG_SLOWBURN = 2097152
DMG_REMOVENORAGDOLL = 4194304
DMG_PHYSGUN = 8388608
DMG_PLASMA = 16777216

---@alias ConvarFlag
---| `FCVAR_NONE` # 0
---| `FCVAR_DEVELOPMENTONLY` # 2
---| `FCVAR_HIDDEN` # 16
---| `FCVAR_PROTECTED` # 32
---| `FCVAR_SPONLY` # 64
---| `FCVAR_ARCHIVE` # 128
---| `FCVAR_NOTIFY` # 256
---| `FCVAR_USERINFO` # 512
---| `FCVAR_UNLOGGED` # 2048
---| `FCVAR_REPLICATED` # 8192
---| `FCVAR_CHEAT` # 16384
---| `FCVAR_PER_USER` # 32768
---| `FCVAR_DEMO` # 65536
---| `FCVAR_DONTRECORD` # 131072
---| `FCVAR_NOT_CONNECTED` # 4194304
---| `FCVAR_VCONSOLE_SET_FOCUS` # 134217728

FCVAR_NONE = 0
FCVAR_DEVELOPMENTONLY = 2
FCVAR_HIDDEN = 16
FCVAR_PROTECTED = 32
FCVAR_SPONLY = 64
FCVAR_ARCHIVE = 128
FCVAR_NOTIFY = 256
FCVAR_USERINFO = 512
FCVAR_UNLOGGED = 2048
FCVAR_REPLICATED = 8192
FCVAR_CHEAT = 16384
FCVAR_PER_USER = 32768
FCVAR_DEMO = 65536
FCVAR_DONTRECORD = 131072
FCVAR_NOT_CONNECTED = 4194304
FCVAR_VCONSOLE_SET_FOCUS = 134217728

AE_EMPTY = 0
AE_CL_PLAYSOUND = 1
AE_CL_PLAYSOUND_ATTACHMENT = 2
AE_CL_PLAYSOUND_POSITION = 3
AE_SV_PLAYSOUND = 4
AE_CL_STOPSOUND = 5
AE_CL_PLAYSOUND_LOOPING = 6
AE_CL_CREATE_PARTICLE_EFFECT = 7
AE_CL_STOP_PARTICLE_EFFECT = 8
AE_CL_CREATE_PARTICLE_EFFECT_CFG = 9
AE_SV_CREATE_PARTICLE_EFFECT_CFG = 10
AE_SV_STOP_PARTICLE_EFFECT = 11
AE_FOOTSTEP = 12
AE_RAGDOLL = 13
AE_CL_STOP_RAGDOLL_CONTROL = 14
AE_CL_ENABLE_BODYGROUP = 15
AE_CL_DISABLE_BODYGROUP = 16
AE_CL_BODYGROUP_SET_VALUE = 17
AE_SV_BODYGROUP_SET_VALUE = 18
AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN = 19
AE_WPN_PRIMARYATTACK = 20
AE_WPN_SECONDARYATTACK = 21
AE_FIRE_INPUT = 22
AE_CL_CLOTH_ATTR = 23
AE_CL_CLOTH_GROUND_OFFSET = 24
AE_CL_CLOTH_STIFFEN = 25
AE_CL_CLOTH_EFFECT = 26
AE_CL_CREATE_ANIM_SCOPE_PROP = 27
AE_CL_WEAPON_TRANSITION_INTO_HAND = 28
AE_CL_BODYGROUP_SET_TO_CLIP = 29
AE_CL_BODYGROUP_SET_TO_NEXTCLIP = 30
AE_SV_SHOW_SILENCER = 31
AE_SV_ATTACH_SILENCER_COMPLETE = 32
AE_SV_HIDE_SILENCER = 33
AE_SV_DETACH_SILENCER_COMPLETE = 34
AE_CL_EJECT_MAG = 35
AE_CL_EJECT_MAG_UNHIDE = 36
AE_WPN_COMPLETE_RELOAD = 37
AE_WPN_CZ_DUMP_CURRENT_MAG = 38
AE_WPN_CZ_UPDATE_BODYGROUP = 39
AE_WPN_HEALTHSHOT_INJECT = 40
AE_CL_C4_SCREEN_TEXT = 41

ACTIVATE_TYPE_INITIAL_CREATION = 0
ACTIVATE_TYPE_DATAUPDATE_CREATION = 1
ACTIVATE_TYPE_ONRESTORE = 2

PATTACH_ABSORIGIN = 0
PATTACH_ABSORIGIN_FOLLOW = 1
PATTACH_CUSTOMORIGIN = 2
PATTACH_CUSTOMORIGIN_FOLLOW = 3
PATTACH_POINT = 4
PATTACH_POINT_FOLLOW = 5
PATTACH_EYES_FOLLOW = 6
PATTACH_OVERHEAD_FOLLOW = 7
PATTACH_WORLDORIGIN = 8
PATTACH_ROOTBONE_FOLLOW = 9
PATTACH_RENDERORIGIN_FOLLOW = 10
MAX_PATTACH_TYPES = 16

vec3_origin = Vector(0, 0, 0)
vec3_invalid = Vector(3.402823466e+38, 3.402823466e+38, 3.402823466e+38)

EMPTY = 0
SINGLE_SHOT = 1
DOUBLE_SHOT = 2
RELOAD = 3
MELEE_MISS = 4
MELEE_HIT = 5
MELEE_HIT_WORLD = 6
MELEE_HIT_PLAYER = 7
SPECIAL1 = 8
SPECIAL2 = 9
SPECIAL3 = 10
NEARLYEMPTY = 11
__UNKNOWN__ = 19
SINGLE_SHOT_ACCURATE = 14