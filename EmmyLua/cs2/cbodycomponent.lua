---@meta

---@class CBodyComponent
CBodyComponent = {}

---Apply an impulse at a worldspace position to the physics
---@param Vector_1 Vector
---@param Vector_2 Vector
function CBodyComponent:AddImpulseAtPosition(Vector_1, Vector_2) end

---Add linear and angular velocity to the physics object
---@param linearVelocity Vector
---@param angVelocity Vector
function CBodyComponent:AddVelocity(linearVelocity, angVelocity) end

---Detach from its parent
function CBodyComponent:DetachFromParent() end

---Returns the active sequence
---@return number
function CBodyComponent:GetSequence() end

---Is attached to parent
---@return boolean
function CBodyComponent:IsAttachedToParent() end

---Returns a sequence id given a name
---@param name string
---@return number
function CBodyComponent:LookupSequence(name) end

---Returns the duration in seconds of the specified sequence
---@param pSequenceName string
---@return number
function CBodyComponent:SequenceDuration(pSequenceName) end

---@param angVelocity Vector
function CBodyComponent:SetAngularVelocity(angVelocity) end

---@param pMaterialGroup utlstringtoken
function CBodyComponent:SetMaterialGroup(pMaterialGroup) end

---@param velocity Vector
function CBodyComponent:SetVelocity(velocity) end