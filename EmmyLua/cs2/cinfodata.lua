---@meta

---@class CInfoData
CInfoData = {}

---Query color data for this key
---@param tok utlstringtoken
---@param vDefault Vector
---@return Vector
function CInfoData:QueryColor(tok, vDefault) end

---Query float data for this key
---@param tok utlstringtoken
---@param flDefault number
---@return number
function CInfoData:QueryFloat(tok, flDefault) end

---Query int data for this key
---@param tok utlstringtoken
---@param nDefault number
---@return number
function CInfoData:QueryInt(tok, nDefault) end

---Query number data for this key
---@param tok utlstringtoken
---@param flDefault number
---@return number
function CInfoData:QueryNumber(tok, flDefault) end

---Query string data for this key
---@param tok utlstringtoken
---@param pDefault string
---@return string
function CInfoData:QueryString(tok, pDefault) end

---Query vector data for this key
---@param tok utlstringtoken
---@param vDefault Vector
---@return Vector
function CInfoData:QueryVector(tok, vDefault) end