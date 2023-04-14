---@meta

---@class CTakeDamageInfo
CTakeDamageInfo = {}

---Add flAddAmount to the damage value
---@param flAddAmount number
function CTakeDamageInfo:AddDamage(flAddAmount) end

---Add bitsDamageType to damage types
---@param bitsDamageType number
function CTakeDamageInfo:AddDamageType(bitsDamageType) end

---Returns the ammo type
---@return number
function CTakeDamageInfo:GetAmmoType() end

---Returns the attacker's entity
---@return handle
function CTakeDamageInfo:GetAttacker() end

---Returns the damage value
---@return number
function CTakeDamageInfo:GetDamage() end

---@return number
function CTakeDamageInfo:GetDamageCustom() end

---Returns the directional Vector
---@return Vector
function CTakeDamageInfo:GetDamageForce() end

---Returns the position Vector of the damage
---@return Vector
function CTakeDamageInfo:GetDamagePosition() end

---Returns the damage type
---@return number
function CTakeDamageInfo:GetDamageType() end

---Returns the inflictor's entity (usually the weapon)
---@return handle
function CTakeDamageInfo:GetInflictor() end

---@return number
function CTakeDamageInfo:GetOriginalDamage() end

---@return Vector
function CTakeDamageInfo:GetReportedPosition() end

---Returns whether or not bitsToTest exists in the damage type
---@param bitsToTest number
---@return boolean
function CTakeDamageInfo:HasDamageType(bitsToTest) end

---@return boolean
function CTakeDamageInfo:IsNull() end

---Scales the damage value by flScaleAmount
---@param flScaleAmount number
function CTakeDamageInfo:ScaleDamage(flScaleAmount) end

---Sets the ammo type to iAmmoType
---@param iAmmoType number
function CTakeDamageInfo:SetAmmoType(iAmmoType) end

---Sets the attacker's entity to hAttacker
---@param hAttacker handle
function CTakeDamageInfo:SetAttacker(hAttacker) end

---Sets the damage value to flDamage
---@param flDamage number
function CTakeDamageInfo:SetDamage(flDamage) end

---@param iDamageCustom number
function CTakeDamageInfo:SetDamageCustom(iDamageCustom) end

---Sets the directional Vector to damageForce
---@param damageForce Vector
function CTakeDamageInfo:SetDamageForce(damageForce) end

---Sets the positional Vector to damagePosition
---@param damagePosition Vector
function CTakeDamageInfo:SetDamagePosition(damagePosition) end

---Sets the damage type to bitsDamageType
---@param bitsDamageType number
function CTakeDamageInfo:SetDamageType(bitsDamageType) end

---@param flOriginalDamage number
function CTakeDamageInfo:SetOriginalDamage(flOriginalDamage) end

---@param reportedPosition Vector
function CTakeDamageInfo:SetReportedPosition(reportedPosition) end