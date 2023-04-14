---@meta

---@class CCustomGameEventManager
CustomGameEventManager = {}

---Register a callback to be called when a particular custom event arrives. Returns a listener ID that can be used to unregister later.
---@param EventName string
---@param CallbackFunction function
---@return number
function CustomGameEventManager:RegisterListener(EventName, CallbackFunction) end

---@param EventName string
---@param EventData table
function CustomGameEventManager:Send_ServerToAllClients(EventName, EventData) end

---@param player handle
---@param EventName string
---@param EventData table
function CustomGameEventManager:Send_ServerToPlayer(player, EventName, EventData) end

---@param TeamNumber number
---@param EventName string
---@param EventData table
function CustomGameEventManager:Send_ServerToTeam(TeamNumber, EventName, EventData) end

---Unregister a specific listener
---@param ListnerID number
function CustomGameEventManager:UnregisterListener(ListnerID) end