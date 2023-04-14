---@meta

---@class CBaseFlex: CBaseAnimGraph
CBaseFlex = {}

---Returns the instance of the oldest active scene entity (if any).
---@return handle
function CBaseFlex:GetCurrentScene() end

---Returns the instance of the scene entity at the specified index.
---@param index number
---@return handle
function CBaseFlex:GetSceneByIndex(index) end

---Play specified vcd file
---@param pszScene string
---@param flDelay number
---@return number
function CBaseFlex:ScriptPlayScene(pszScene, flDelay) end