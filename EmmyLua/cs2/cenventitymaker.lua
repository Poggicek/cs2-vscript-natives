---@meta

---@class CEnvEntityMaker: CBaseEntity
CEnvEntityMaker = {}

---Create an entity at the location of the maker
function CEnvEntityMaker.SpawnEntity() end

---Create an entity at the location of a specified entity instance
---@param hEntity handle
function CEnvEntityMaker.SpawnEntityAtEntityOrigin(hEntity) end

---Create an entity at a specified location and orientaton, orientation is Euler angle in degrees (pitch, yaw, roll)
---@param vecAlternateOrigin Vector
---@param vecAlternateAngles Vector
function CEnvEntityMaker.SpawnEntityAtLocation(vecAlternateOrigin, vecAlternateAngles) end

---Create an entity at the location of a named entity
---@param pszName string
function CEnvEntityMaker.SpawnEntityAtNamedEntityOrigin(pszName) end