---@meta

---@class CEntityInstance
CEntityInstance = {}

---Adds an I/O connection that will call the named function on this entity when the specified output fires.
---@param output string
---@param functionName string
function CEntityInstance:ConnectOutput(output, functionName) end

function CEntityInstance:Destroy() end

---Removes a connected script function from an I/O event on this entity.
---@param output string
---@param functionName string
function CEntityInstance:DisconnectOutput(output, functionName) end

---Removes a connected script function from an I/O event on the passed entity.
---@param output string
---@param functionName string
---@param entity handle
function CEntityInstance:DisconnectRedirectedOutput(output, functionName, entity) end

---Fire an entity output
---@param outputName string
---@param activator handle
---@param caller handle
---@param parameters table
---@param delay number
function CEntityInstance:FireOutput(outputName, activator, caller, parameters, delay) end

---@return string
function CEntityInstance:GetClassname() end

---Get the entity name w/help if not defined (i.e. classname/etc)
---@return string
function CEntityInstance:GetDebugName() end

---Get the entity as an EHANDLE
---@return ehandle
function CEntityInstance:GetEntityHandle() end

---@return number
function CEntityInstance:GetEntityIndex() end

---Get Integer Attribute
---@param key string
---@return number
function CEntityInstance:GetIntAttr(key) end

---@return string
function CEntityInstance:GetName() end

---Retrieve, creating if necessary, the private per-instance script-side data associated with an entity
---@return handle
function CEntityInstance:GetOrCreatePrivateScriptScope() end

---Retrieve, creating if necessary, the public script-side data associated with an entity
---@return handle
function CEntityInstance:GetOrCreatePublicScriptScope() end

---Retrieve the private per-instance script-side data associated with an entity
---@return handle
function CEntityInstance:GetPrivateScriptScope() end

---Retrieve the public script-side data associated with an entity
---@return handle
function CEntityInstance:GetPublicScriptScope() end

---Adds an I/O connection that will call the named function on the passed entity when the specified output fires.
---@param output string
---@param functionName string
---@param entity handle
function CEntityInstance:RedirectOutput(output, functionName, entity) end

---Delete this entity
function CEntityInstance:RemoveSelf() end

---Set Integer Attribute
---@param key string
---@param value number
function CEntityInstance:SetIntAttr(key, value) end

---@return number
function CEntityInstance:entindex() end