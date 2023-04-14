---@meta

---@class QAngle
---@overload fun(x: number, y: number, z: number):QAngle
---@operator add(Vector): QAngle
---@field public x number Pitch angle
---@field public y number Yaw angle
---@field public z number Roll angle
QAngle = {}

---Adds two QAngles together. Overloaded with + operator. Use RotateOrientation() instead to properly rotate angles.
---@param a QAngle
---@param b QAngle
---@return QAngle
function QAngle.__add(a, b) end

---Tests for equality. Overloaded with == operator
---@param a QAngle
---@param b QAngle
---@return boolean
function QAngle.__eq(a, b) end

---Converts the QAngle into a string. Overloaded with .. operator
---@return string
function QAngle:__tostring() end

---Returns the forward Vector
---@return Vector
function QAngle:Forward() end

---Returns the left Vector
---@return Vector
function QAngle:Left() end

---Returns the Up Vector
---@return Vector
function QAngle:Up() end