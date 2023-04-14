---@meta

---@class CScriptPrecacheContext
CScriptPrecacheContext = {}

---Precaches a specific resource
---@param path string
function CScriptPrecacheContext:AddResource(path) end

---Reads a spawn key
---@param name string
---@return table
function CScriptPrecacheContext:GetValue(name) end