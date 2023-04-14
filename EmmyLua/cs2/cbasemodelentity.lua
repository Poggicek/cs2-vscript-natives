---@meta

---@class CBaseModelEntity: CBaseEntity
CBaseModelEntity = {}

---Get the attachment id's angles as a p,y,r vector.
---@param iAttachment number
---@return Vector
function CBaseModelEntity:GetAttachmentAngles(iAttachment) end

---Get the attachment id's forward vector.
---@param iAttachment number
---@return Vector
function CBaseModelEntity:GetAttachmentForward(iAttachment) end

---Get the attachment id's origin vector.
---@param iAttachment number
---@return Vector
function CBaseModelEntity:GetAttachmentOrigin(iAttachment) end

---Get the material group hash of this entity.
---@return unsigned
function CBaseModelEntity:GetMaterialGroupHash() end

---Get the mesh group mask of this entity.
---@return uint64
function CBaseModelEntity:GetMaterialGroupMask() end

---Get scale of entity's model.
---@return number
function CBaseModelEntity:GetModelScale() end

---Get the alpha modulation of this entity.
---@return number
function CBaseModelEntity:GetRenderAlpha() end

---Get the render color of the entity.
---@return Vector
function CBaseModelEntity:GetRenderColor() end

---Get the named attachment id.
---@param pAttachmentName string
---@return number
function CBaseModelEntity:ScriptLookupAttachment(pAttachmentName) end

---Sets a bodygroup.
---@param iGroup number
---@param iValue number
function CBaseModelEntity:SetBodygroup(iGroup, iValue) end

---Sets a bodygroup by name.
---@param pName string
---@param iValue number
function CBaseModelEntity:SetBodygroupByName(pName, iValue) end

---Sets the light group of the entity.
---@param pLightGroup string
function CBaseModelEntity:SetLightGroup(pLightGroup) end

---Set the material group of this entity.
---@param pMaterialGroup string
function CBaseModelEntity:SetMaterialGroup(pMaterialGroup) end

---Set the material group hash of this entity.
---@param nHash unsigned
function CBaseModelEntity:SetMaterialGroupHash(nHash) end

---Set the mesh group mask of this entity.
---@param nMeshGroupMask uint64
function CBaseModelEntity:SetMaterialGroupMask(nMeshGroupMask) end

---Changes the model of the entity. Make sure the new model is precached before using
---@param pModelName string
function CBaseModelEntity:SetModel(pModelName) end

---Set scale of entity's model.
---@param flScale number
function CBaseModelEntity:SetModelScale(flScale) end

---Set the alpha modulation of this entity.
---@param nAlpha number
function CBaseModelEntity:SetRenderAlpha(nAlpha) end

---Sets the render color of the entity.
---@param r number
---@param g number
---@param b number
function CBaseModelEntity:SetRenderColor(r, g, b) end

---Sets the render mode of the entity.
---@param nMode number
function CBaseModelEntity:SetRenderMode(nMode) end

---Set a single mesh group for this entity.
---@param pMeshGroupName string
function CBaseModelEntity:SetSingleMeshGroup(pMeshGroupName) end

---
---@param mins Vector
---@param maxs Vector
function CBaseModelEntity:SetSize(mins, maxs) end

---Set skin
---@param iSkin number
function CBaseModelEntity:SetSkin(iSkin) end