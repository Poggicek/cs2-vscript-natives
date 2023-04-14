---@meta

---@class CBaseTrigger: CBaseModelEntity
CBaseTrigger = {}

---Disable's the trigger
function CBaseTrigger:Disable() end

---Enable the trigger
function CBaseTrigger:Enable() end

---Checks whether the passed entity is touching the trigger.
---@param entity handle
---@return boolean
function CBaseTrigger:IsTouching(entity) end