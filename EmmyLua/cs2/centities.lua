---@meta

---@class CEntities
Entities = {}

---Creates an entity by classname
---@param classname string
---@return handle
function Entities:CreateByClassname(classname) end

---Finds all entities by class name. Returns an array containing all the found Entities:
---@param classname string
---@return table
function Entities:FindAllByClassname(classname) end

---Find entities by class name within a radius.
---@param classname string
---@param origin Vector
---@param radius number
---@return table
function Entities:FindAllByClassnameWithin(classname, origin, radius) end

---Find entities by model name.
---@param modelName string
---@return table
function Entities:FindAllByModel(modelName) end

---Find all entities by name. Returns an array containing all the found entities in it.
---@param targetname string
---@return table
function Entities:FindAllByName(targetname) end

---Find entities by name within a radius.
---@param targetname string
---@param origin Vector
---@param radius number
---@return table
function Entities:FindAllByNameWithin(targetname, origin, radius) end

---Find entities by targetname.
---@param targetname string
---@return table
function Entities:FindAllByTarget(targetname) end

---Find entities within a radius.
---@param origin Vector
---@param radius number
---@return table
function Entities:FindAllInSphere(origin, radius) end

---Find entities by class name. Pass 'null' to start an iteration, or reference to a previously found entity to continue a search
---@param startFrom handle
---@param classname string
---@return handle
function Entities:FindByClassname(startFrom, classname) end

---Find entities by class name nearest to a point.
---@param classname string
---@param origin Vector
---@param maxRadius number
---@return handle
function Entities:FindByClassnameNearest(classname, origin, maxRadius) end

---Find entities by class name within a radius. Pass 'null' to start an iteration, or reference to a previously found entity to continue a search
---@param startFrom handle
---@param classname string
---@param origin Vector
---@param radius number
---@return handle
function Entities:FindByClassnameWithin(startFrom, classname, origin, radius) end

---Find entities by model name. Pass 'null' to start an iteration, or reference to a previously found entity to continue a search
---@param startFrom handle
---@param modelName string
---@return handle
function Entities:FindByModel(startFrom, modelName) end

---Find entities by model name within a radius. Pass 'null' to start an iteration, or reference to a previously found entity to continue a search
---@param startFrom handle
---@param modelName string
---@param origin Vector
---@param radius number
---@return handle
function Entities:FindByModelWithin(startFrom, modelName, origin, radius) end

---Find entities by name. Pass 'null' to start an iteration, or reference to a previously found entity to continue a search
---@param startFrom handle
---@param targetname string
---@return handle
function Entities:FindByName(startFrom, targetname) end

---Find entities by name nearest to a point.
---@param targetname string
---@param origin Vector
---@param maxRadius number
---@return handle
function Entities:FindByNameNearest(targetname, origin, maxRadius) end

---Find entities by name within a radius. Pass 'null' to start an iteration, or reference to a previously found entity to continue a search
---@param startFrom handle
---@param targetname string
---@param origin Vector
---@param radius number
---@return handle
function Entities:FindByNameWithin(startFrom, targetname, origin, radius) end

---Find entities by targetname. Pass 'null' to start an iteration, or reference to a previously found entity to continue a search
---@param startFrom handle
---@param targetname string
---@return handle
function Entities:FindByTarget(startFrom, targetname) end

---Find entities within a radius. Pass 'null' to start an iteration, or reference to a previously found entity to continue a search
---@param startFrom handle
---@param origin Vector
---@param radius number
---@return handle
function Entities:FindInSphere(startFrom, origin, radius) end

---Begin an iteration over the list of entities
---@return handle
function Entities:First() end

---Get the local player controller.
---@return handle
function Entities:GetLocalPlayerController() end

---Get the local player pawn.
---@return handle
function Entities:GetLocalPlayerPawn() end

---Continue an iteration over the list of entities, providing reference to a previously found entity
---@param startFrom handle
---@return handle
function Entities:Next(startFrom) end