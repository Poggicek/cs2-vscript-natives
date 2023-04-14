---@meta

---@class CEnvProjectedTexture
CEnvProjectedTexture = {}

---Set light maximum range
---@param flRange number
function CEnvProjectedTexture:SetFarRange(flRange) end

---Set light linear attenuation value
---@param flAtten number
function CEnvProjectedTexture:SetLinearAttenuation(flAtten) end

---Set light minimum range
---@param flRange number
function CEnvProjectedTexture:SetNearRange(flRange) end

---Set light quadratic attenuation value
---@param flAtten number
function CEnvProjectedTexture:SetQuadraticAttenuation(flAtten) end

---Turn on/off light volumetrics: bool bOn, float flIntensity, float flNoise, int nPlanes, float flPlaneOffset
---@param bOn boolean
---@param flIntensity number
---@param flNoise number
---@param nPlanes number
---@param flPlaneOffset number
function CEnvProjectedTexture:SetVolumetrics(bOn, flIntensity, flNoise, nPlanes, flPlaneOffset) end