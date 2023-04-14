---@meta

---@class CBaseAnimGraph: CBaseModelEntity
CBaseAnimGraph = {}

---Get the value of the given animGraph parameter
---@param pszParam string
---@return table
function CBaseAnimGraph:GetGraphParameter(pszParam) end

---Pass the desired look target in world space to the graph
---@param vValue Vector
function CBaseAnimGraph:SetGraphLookTarget(vValue) end

---Set the specific param value, type is inferred from the type in script
---@param pszParam string
---@param svArg table
function CBaseAnimGraph:SetGraphParameter(pszParam, svArg) end

---Set the specific param on or off
---@param szName string
---@param bValue boolean
function CBaseAnimGraph:SetGraphParameterBool(szName, bValue) end

---Pass the enum (int) value to the specified param
---@param szName string
---@param nValue number
function CBaseAnimGraph:SetGraphParameterEnum(szName, nValue) end

---Pass the float value to the specified param
---@param szName string
---@param flValue number
function CBaseAnimGraph:SetGraphParameterFloat(szName, flValue) end

---Pass the int value to the specified param
---@param szName string
---@param nValue number
function CBaseAnimGraph:SetGraphParameterInt(szName, nValue) end

---Pass the vector value to the specified param in the graph
---@param szName string
---@param vValue Vector
function CBaseAnimGraph:SetGraphParameterVector(szName, vValue) end