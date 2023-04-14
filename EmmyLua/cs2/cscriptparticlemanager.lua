---@meta

---@class CScriptParticleManager
CScriptParticleManager = {}

---Creates a new particle effect
---@param particleName string
---@param particleAttach number
---@param owningEntity handle
---@return number
function CScriptParticleManager:CreateParticle(particleName, particleAttach, owningEntity) end

---Creates a new particle effect that only plays for the specified player
---@param particleName string
---@param particleAttach number
---@param owningEntity handle
---@param owningPlayer handle
---@return number
function CScriptParticleManager:CreateParticleForPlayer(particleName, particleAttach, owningEntity, owningPlayer) end

---Destroy a particle, if bDestroyImmediately destroy it without playing end caps.
---@param particleID number
---@param bDestroyImmediately boolean
function CScriptParticleManager:DestroyParticle(particleID, bDestroyImmediately) end

---@param string_1 string
---@param handle_2 handle
---@return string
function CScriptParticleManager:GetParticleReplacement(string_1, handle_2) end

---Frees the specified particle index
---@param particleId number
function CScriptParticleManager:ReleaseParticleIndex(particleId) end

---@param int_1 number
function CScriptParticleManager:SetParticleAlwaysSimulate(int_1) end

---Set the control point data for a control on a particle effect
---@param particleId number
---@param controlIndex number
---@param controlData Vector
function CScriptParticleManager:SetParticleControl(particleId, controlIndex, controlData) end

---Attaches the control point to an entity
---@param particleId number
---@param controlIndex number
---@param entity handle
---@param attachType ParticleAttachment_t
---@param attachment string
---@param origin Vector
---@param bool_7 boolean
function CScriptParticleManager:SetParticleControlEnt(particleId, controlIndex, entity, attachType, attachment, origin, bool_7) end

---Set the linear offset for a control on a particle effect
---@param iIndex number
---@param iPoint number
---@param vecOffset Vector
function CScriptParticleManager:SetParticleControlOffset(iIndex, iPoint, vecOffset) end

---Set the transform for a control on a particle effect
---@param iIndex number
---@param iPoint number
---@param vOrigin Vector
---@param qAngles QAngle
function CScriptParticleManager:SetParticleControlTransform(iIndex, iPoint, vOrigin, qAngles) end

---Set the origin and forward direction for a control on a particle effect
---@param iIndex number
---@param iPoint number
---@param vOrigin Vector
---@param vecForward Vector
function CScriptParticleManager:SetParticleControlTransformForward(iIndex, iPoint, vOrigin, vecForward) end