---@meta

---@class CBasePlayerPawn: CBaseFlex
CBasePlayerPawn = {}

---Returns the controller for this pawn
---@return any
function CBasePlayerPawn:GetController() end

---Returns an array of all the equipped weapons
---@return table
function CBasePlayerPawn:GetEquippedWeapons() end

---Gets the number of weapons currently equipped
---@return integer
function CBasePlayerPawn:GetWeaponCount() end

---Returns true if the player is in noclip mode.
---@return boolean
function CBasePlayerPawn:IsNoclipping() end
