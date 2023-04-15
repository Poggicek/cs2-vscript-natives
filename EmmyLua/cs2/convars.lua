---@meta

---@class Convars
Convars = {}

---Returns the convar as a boolean flag.
---@param name string
---@return boolean
function Convars:GetBool(name) end

---Returns the player who issued this console command.
---@return handle
function Convars:GetCommandClient() end

---Returns the convar as a float. May return null if no such convar.
---@param name string
---@return number
function Convars:GetFloat(name) end

---Returns the convar as an int. May return null if no such convar.
---@param name string
---@return number
function Convars:GetInt(name) end

---Returns the convar as a string. May return null if no such convar.
---@param name string
---@return string
function Convars:GetStr(name) end

---Register a console command.
---@param name string
---@param func handle
---@param helpString string
---@param flags ConvarFlag
function Convars:RegisterCommand(name, func, helpString, flags) end

---Register a new console variable.
---@param name string
---@param defaultValue string
---@param helpString string
---@param flags ConvarFlag
function Convars:RegisterConvar(name, defaultValue, helpString, flags) end

---Sets the value of the convar to the bool.
---@param name string
---@param val boolean
function Convars:SetBool(name, val) end

---Sets the value of the convar to the float.
---@param name string
---@param val number
function Convars:SetFloat(name, val) end

---Sets the value of the convar to the int.
---@param name string
---@param val number
function Convars:SetInt(name, val) end

---Sets the value of the convar to the string.
---@param name string
---@param val string
function Convars:SetStr(name, val) end