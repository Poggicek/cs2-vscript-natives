---@meta

---@class CSceneEntity: CBaseEntity
CSceneEntity = {}

---Adds a team (by index) to the broadcast list
---@param team number
function CSceneEntity:AddBroadcastTeamTarget(team) end

---Cancel scene playback
function CSceneEntity:Cancel() end

---Returns length of this scene in seconds.
---@return number
function CSceneEntity:EstimateLength() end

---Get the camera
---@return handle
function CSceneEntity:FindCamera() end

---Given an entity reference, such as !target, get actual entity from scene object
---@param reference string
---@return handle
function CSceneEntity:FindNamedEntity(reference) end

---If this scene is currently paused.
---@return boolean
function CSceneEntity:IsPaused() end

---If this scene is currently playing.
---@return boolean
function CSceneEntity:IsPlayingBack() end

---Given a dummy scene name and a vcd string, load the scene
---@param sceneName string
---@param vcd string
---@return boolean
function CSceneEntity:LoadSceneFromString(sceneName, vcd) end

---Removes a team (by index) from the broadcast list
---@param team number
function CSceneEntity:RemoveBroadcastTeamTarget(team) end

---Start scene playback, takes activatorEntity as param
---@param activator handle
function CSceneEntity:Start(activator) end