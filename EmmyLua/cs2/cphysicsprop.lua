---@meta

---@class CPhysicsProp: CBaseModelEntity
CPhysicsProp = {}

---Disable motion for the prop
function CPhysicsProp:DisableMotion() end

---Enable motion for the prop
function CPhysicsProp:EnableMotion() end

---Enable/disable dynamic vs dynamic continuous collision traces
---@param bIsDynamicVsDynamicContinuousEnabled boolean
function CPhysicsProp:SetDynamicVsDynamicContinuous(bIsDynamicVsDynamicContinuousEnabled) end