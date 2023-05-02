---@meta

---@class Vector
---@operator add(Vector): Vector
---@operator div(Vector): Vector
---@operator len(Vector): Vector
---@operator mul(Vector): Vector
---@operator sub(Vector): Vector
---@operator unm(Vector): Vector
---@field public x number X-Axis
---@field public y number Y-Axis
---@field public z number Z-Axis
local Vector = {}

---Adds two Vectors together. Overloaded with + operator
---@param a Vector
---@param b Vector
---@return Vector
function Vector.__add(a, b) end

---Divides a by b. Overloaded with / operator
---@param a Vector
---@param b Vector
---@return Vector
function Vector.__div(a, b) end

---Tests for equality. Overloaded with == operator
---@param a Vector
---@param b Vector
---@return boolean
function Vector.__eq(a, b) end

---Returns the length of the Vector. Overloaded with # operator
---@return number
function Vector:__len() end

---Multiplies a Vector with scalar or another Vector. Overloaded with * operator
---@param a Vector
---@param b Vector/Scalar
---@return Vector
function Vector.__mul(a, b) end

---Subtracts b from a. Overloaded with - operator
---@param a Vector
---@param b Vector
---@return Vector
function Vector.__sub(a, b) end

---Converts the Vector into a string. Overloaded with .. operator
---@return string
function Vector:__tostring() end

---Reverse the Vector. Overloaded with unary -
---@return Vector
function Vector:__unm() end

---Cross product of two vectors
---@param a Vector
---@param b Vector
---@return Vector
function Vector.Cross(a, b) end

---Dot product of two vectors
---@param a Vector
---@param b Vector
---@return number
function Vector.Dot(a, b) end

---Length of the Vector
---@return number
function Vector:Length() end

---Length of the Vector in the XY plane
---@return number
function Vector:Length2D() end

---Linear interpolation between the vector and the passed in target over time = [0,1]
---@param target Vector
---@param time number
---@return Vector
function Vector:Lerp(target, time) end

---Returns the unit Vector
---@return Vector
function Vector:Normalized() end