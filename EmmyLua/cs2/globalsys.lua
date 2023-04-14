---@meta

---@class GlobalSys
GlobalSys = {}

---Returns true if the command line param was used, otherwise false.
---@param name string
---@return table
function GlobalSys:CommandLineCheck(name) end

---Returns the command line param as a float.
---@param name string
---@param float_2 number
---@return table
function GlobalSys:CommandLineFloat(name, float_2) end

---Returns the command line param as an int.
---@param name string
---@param int_2 number
---@return table
function GlobalSys:CommandLineInt(name, int_2) end

---Returns the command line param as a string.
---@param name string
---@param string_2 string
---@return table
function GlobalSys:CommandLineStr(name, string_2) end