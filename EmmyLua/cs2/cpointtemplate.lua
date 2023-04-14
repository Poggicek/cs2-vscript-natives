---@meta

---@class CPointTemplate
CPointTemplate = {}

---Deletes any spawn groups that this point_template has spawned. Note: The point_template will not be deleted by this.
function CPointTemplate:DeleteCreatedSpawnGroups() end

---Spawns all of the entities the point_template is pointing at.
function CPointTemplate:ForceSpawn() end

---Get the list of the most recent spawned entities
---@return handle
function CPointTemplate:GetSpawnedEntities() end

---Set a callback for when the template spawns entities. The spawned entities will be passed in as an array.
---@param hCallbackFunc handle
---@param hCallbackScope handle
function CPointTemplate:SetSpawnCallback(hCallbackFunc, hCallbackScope) end