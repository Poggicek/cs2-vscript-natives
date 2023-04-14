---@meta

---Breaks in the debugger
function DebugBreak() end

---Draw a debug overlay box
---@param center Vector
---@param mins Vector
---@param maxs Vector
---@param r number
---@param g number
---@param b number
---@param a number
---@param duration number
function DebugDrawBox(center, mins, maxs, r, g, b, a, duration) end

---Draw a debug forward box
---@param center Vector
---@param min Vector
---@param max Vector
---@param forward Vector
---@param vRgb Vector
---@param a number
---@param duration number
function DebugDrawBoxDirection(center, min, max, forward, vRgb, a, duration) end

---Draw a debug circle
---@param center Vector
---@param vRgb Vector
---@param a number
---@param rad number
---@param ztest boolean
---@param duration number
function DebugDrawCircle(center, vRgb, a, rad, ztest, duration) end

---Try to clear all the debug overlay info
function DebugDrawClear() end

---Draw a debug overlay line
---@param origin Vector
---@param target Vector
---@param r number
---@param g number
---@param b number
---@param ztest boolean
---@param duration number
function DebugDrawLine(origin, target, r, g, b, ztest, duration) end

---Draw a debug line using color vec
---@param start Vector
---@param _end Vector
---@param vRgb Vector
---@param ztest boolean
---@param duration number
function DebugDrawLine_vCol(start, _end, vRgb, ztest, duration) end

---Draw text with a line offset
---@param x number
---@param y number
---@param lineOffset number
---@param text string
---@param r number
---@param g number
---@param b number
---@param a number
---@param duration number
function DebugDrawScreenTextLine(x, y, lineOffset, text, r, g, b, a, duration) end

---Draw a debug sphere
---@param center Vector
---@param vRgb Vector
---@param a number
---@param rad number
---@param ztest boolean
---@param duration number
function DebugDrawSphere(center, vRgb, a, rad, ztest, duration) end

---Draw text in 3d
---@param origin Vector
---@param text string
---@param bViewCheck boolean
---@param duration number
function DebugDrawText(origin, text, bViewCheck, duration) end

---Draw pretty debug text
---@param x number
---@param y number
---@param lineOffset number
---@param text string
---@param r number
---@param g number
---@param b number
---@param a number
---@param duration number
---@param font string
---@param size number
---@param bBold boolean
function DebugScreenTextPretty(x, y, lineOffset, text, r, g, b, a, duration, font, size, bBold) end

---Asserts the passed in value. Prints out a message and brings up the assert dialog.
---@param assertion boolean
---@param message string
function DoScriptAssert(assertion, message) end

---Print a message
---@param message string
function Msg(message) end

---Print a console message with a linked console command
---@param message string
---@param command string
function PrintLinkedConsoleMessage(message, command) end

---Have Entity say string, and isTeamOnly or not
---@param entity handle
---@param message string
---@param isTeamOnly boolean
function Say(entity, message, isTeamOnly) end

---Prints an alert message in the center print method to all players.
---@param message string
function ScriptPrintMessageCenterAll(message) end

---Prints an alert message in the center print method to all players. Needs to pass token/message. param1, param2, param3. Can pass null if you need less than 3.
---@param message string
---@param string_2 string
---@param string_3 string
---@param string_4 string
function ScriptPrintMessageCenterAllWithParams(message, string_2, string_3, string_4) end

---Prints an alert message in the center print method to the specified team. 0 = None. 1 = Spectators. 2 = Terrorists. 3 = Counter-Terrorists
---@param team number
---@param message string
function ScriptPrintMessageCenterTeam(team, message) end

---Prints a message in chat to all players.
---@param message string
function ScriptPrintMessageChatAll(message) end

---Prints a message in chat to the specified team. 0 = None. 1 = Spectators. 2 = Terrorists. 3 = Counter-Terrorists
---@param team number
---@param message string
function ScriptPrintMessageChatTeam(team, message) end

---Print a hud message on all clients
---@param message string
function ShowMessage(message) end

---Sends colored text to one client.
---@param userID number
---@param message string
---@param r number
---@param g number
---@param b number
---@param a number
function UTIL_MessageText(userID, message, r, g, b, a) end

---Sends colored text to all clients.
---@param message string
---@param r number
---@param g number
---@param b number
---@param a number
function UTIL_MessageTextAll(message, r, g, b, a) end

---Sends colored text to all clients. (Valid context keys: player_id, value, team_id)
---@param message string
---@param r number
---@param g number
---@param b number
---@param a number
---@param context table
function UTIL_MessageTextAll_WithContext(message, r, g, b, a, context) end

---Sends colored text to one client. (Valid context keys: player_id, value, team_id)
---@param userID number
---@param message string
---@param r number
---@param g number
---@param b number
---@param a number
---@param context table
function UTIL_MessageText_WithContext(userID, message, r, g, b, a, context) end

---Clear all message text on one client.
---@param userID number
function UTIL_ResetMessageText(userID) end

---Clear all message text from all clients.
function UTIL_ResetMessageTextAll() end

---Print a warning
---@param warning string
function Warning(warning) end

---Gets the player's best time for completing the timed course.
---@return number
function ScriptGetBestTrainingCourseTime() end

---Returns true if the player has completed the initial portion of the training map.
---@return boolean
function ScriptGetPlayerCompletedTraining() end

---Gets Valve's best time for completing the timed course.
---@return number
function ScriptGetValveTrainingCourseTime() end

---Sends an event that is just used by the instructor system to show a hint highlighting the ammo counter.
function ScriptHighlightAmmoCounter() end

---Sets the player's best time for completing the timed course.
---@param time number
function ScriptSetBestTrainingCourseTime(time) end

---Toggles the visibility of the miniscoreboard hud element.
---@param isVisible boolean
function ScriptSetMiniScoreHidden(isVisible) end

---Sets whether the player has completed the initial portion of the training map.
---@param isCompleted boolean
function ScriptSetPlayerCompletedTraining(isCompleted) end

---Toggles the visibility of the radar hud element.
---@param isHidden boolean
function ScriptSetRadarHidden(isHidden) end

---Shows a message box in trainign when the player exits through the exit door
function ScriptShowExitDoorMsg() end

---Shows a message box to let players know what to do next after finishing the training course.
function ScriptShowFinishMsgBox() end

---Refills ammo to max for all weapons the player has (only works in training).
function ScriptTrainingGivePlayerAmmo() end

---Marks one of the bonus coins as collected.
function ScriptCoopCollectBonusCoin() end

---Extends the round time after checkpoint during the mission.
---@param time number
function ScriptCoopExtendRoundDurationTime(time) end

---Will give the number of specified C4s to all alive CT players.
---@param c4Count number
function ScriptCoopGiveC4sToCTs(c4Count) end

---Gets the mission number for the current map - maps can have multiple missions on them.
---@return number
function ScriptCoopMissionGetMissionNumber() end

---Respawns players only.
function ScriptCoopMissionRespawnDeadPlayers() end

---Controls whether player respawns can happen.
---@param isEnabled boolean
function ScriptCoopMissionSetDeadPlayerRespawnEnabled(isEnabled) end

---Set the next respawn wave to happen in this many seconds.
---@param float_1 number
---@param bool_2 boolean
function ScriptCoopMissionSetNextRespawnIn(float_1, bool_2) end

---Spawns the first wave of enemies in coop.
---@param int_1 number
function ScriptCoopMissionSpawnFirstEnemies(int_1) end

---Tells the next wave of enemies to spawn in coop.     Also respawns player.
---@param int_1 number
function ScriptCoopMissionSpawnNextWave(int_1) end

---Resets the round time and starts the mission.
function ScriptCoopResetRoundStartTime() end

---Sets the bot quota considering the # of players connected and refreshes the spawns.
---@param quota number
function ScriptCoopSetBotQuotaAndRefreshSpawns(quota) end

---Highlights all dropped weapons for players, or removes all highlights.
---@param isEnabled boolean
function ScriptCoopToggleEntityOutlineHighlights(isEnabled) end

---Switch to the selected map after lobby map veto finished.
---@param mapName string
---@param bool_2 boolean
---@param bool_3 boolean
---@param string_4 string
function ScriptLobbyMapVetoFinished(mapName, bool_2, bool_3, string_4) end

---Play named sound on Entity
---@param soundName string
---@param entity handle
function EmitSoundOn(soundName, entity) end

---Play named sound only on the client for the passed in player
---@param soundName string
---@param client handle
function EmitSoundOnClient(soundName, client) end

---Start a sound event
---@param soundEvent string
---@param handle_2 handle
function StartSoundEvent(soundEvent, handle_2) end

---Start a sound event from position
---@param soundEvent string
---@param position Vector
function StartSoundEventFromPosition(soundEvent, position) end

---Start a sound event from position with reliable delivery
---@param soundEvent string
---@param position Vector
function StartSoundEventFromPositionReliable(soundEvent, position) end

---Start a sound event from position with optional delivery
---@param soundEvent string
---@param position Vector
function StartSoundEventFromPositionUnreliable(soundEvent, position) end

---Start a sound event with reliable delivery
---@param soundEvent string
---@param handle_2 handle
function StartSoundEventReliable(soundEvent, handle_2) end

---Start a sound event with optional delivery
---@param soundEvent string
---@param handle_2 handle
function StartSoundEventUnreliable(soundEvent, handle_2) end

---Stops a sound event with optional delivery
---@param soundEvent string
---@param handle_2 handle
function StopSoundEvent(soundEvent, handle_2) end

---Stop named sound on Entity
---@param soundName string
---@param playingEntity handle
function StopSoundOn(soundName, playingEntity) end

---Print out a class/array/instance/table to the console
---@param debugInstance any
---@param prefix? string
function DeepPrint(debugInstance, prefix) end

---Print out a class/array/instance/table to a string
---@param debugInstance any
---@param prefix? string
function DeepString(debugInstance, prefix) end

---Print out a table (and subtables) to the console
---@param debugInstance any
---@param prefix? string
---@param isPublicScriptScope? boolean
function DeepPrintTable(debugInstance, prefix, isPublicScriptScope) end

---Convert degrees to radians
---@param deg number
---@return number
function Deg2Rad(deg) end

---Convert radians to degrees
---@param rad number
---@return number
function Rad2Deg(rad) end

---Clamp the value between the min and max
---@param val number
---@param min number
---@param max number
---@return number
function Clamp(val, min, max) end

---Linear interpolation of float values over time [0,1]
---@param time number
---@param float_1 number
---@param float_2 number
---@return number
function Lerp(time, float_1, float_2) end

---Distance between two vectors squared (faster than calculating the plain distance)
---@param Vector_1 Vector
---@param Vector_2 Vector
---@return number
function VectorDistanceSq(Vector_1, Vector_2) end

---Distance between two vectors
---@param Vector_1 Vector
---@param Vector_2 Vector
---@return number
function VectorDistance(Vector_1, Vector_2) end

---Linear interpolation of vector values over [0,1]. The native function LerpVectors performs the same task
---@param time number
---@param Vector_1 Vector
---@param Vector_2 Vector
---@return Vector
function VectorLerp(time, Vector_1, Vector_2) end

---Returns whether the vector is a zero vector or not
---@param Vector_1 Vector
---@return boolean
function VectorIsZero(Vector_1) end

---Remap a value in the range [a,b] to [c,d].
---@param input number
---@param a number
---@param b number
---@param c number
---@param d number
---@return number
function RemapVal(input, a, b, c, d) end

---Remap a value in the range [a,b] to [c,d], clamping the output to the range.
---@param input number
---@param a number
---@param b number
---@param c number
---@param d number
---@return number
function RemapValClamped(input, a, b, c, d) end

---Returns the smallest value of the inputs
---@param x number
---@param y number
---@return number
function min(x, y) end

---Returns the largest value of the inputs
---@param x number
---@param y number
---@return number
function max(x, y) end

---Returns the absolute value of a float
---@param val number
---@return number
function abs(val) end

---Merges two tables into a third, overwriting any matching keys
---@param t1 table
---@param t2 table
---@return table
function Merge(t1, t2) end

---Returns the number of degrees difference between two yaw angles
---@param angle_1 number
---@param angle_2 number
---@return number
function AngleDiff(angle_1, angle_2) end

---Generate a vector given a QAngles
---@param QAngle_1 QAngle
---@return Vector
function AnglesToVector(QAngle_1) end

---AppendToLogFile is deprecated. Print to the console for logging instead. Appends a string to a log file on the server.
---@param string_1 string
---@param string_2 string
function AppendToLogFile(string_1, string_2) end

---Constructs a quaternion representing a rotation by angle around the specified vector axis
---@param axis Vector
---@param angle number
---@return Quaternion
function AxisAngleToQuaternion(axis, angle) end

---Compute the closest point on the OBB of an entity.
---@param entity handle
---@param position Vector
---@return Vector
function CalcClosestPointOnEntityOBB(entity, position) end

---Compute the distance between two entity OBB. A negative return value indicates an input error. A return value of zero indicates that the OBBs are overlapping.
---@param entity_1 handle
---@param entity_2 handle
---@return number
function CalcDistanceBetweenEntityOBB(entity_1, entity_2) end

---Get the closest point from P to the (infinite) line through vLineA and vLineB and calculate the shortest distance from P to the line.
---@param P Vector
---@param vLineA Vector
---@param vLineB Vector
---@return number
function CalcDistanceToLineSegment2D(P, vLineA, vLineB) end

---Create all I/O events for a particular entity
---@param entityEhandle ehandle
function CancelEntityIOEvents(entityEhandle) end

---Allocate a damageinfo object, used as an argument to TakeDamage(). Call DestroyDamageInfo( hInfo ) to free the object.
---@param hInflictor handle
---@param hAttacker handle
---@param force Vector
---@param hitPos Vector
---@param flDamage number
---@param damageTypes number
---@return CTakeDamageInfo
function CreateDamageInfo(hInflictor, hAttacker, force, hitPos, flDamage, damageTypes) end

---Pass table - Inputs: entity, effect
---@param keys table
---@return boolean
function CreateEffect(keys) end

---Create a scene entity to play the specified scene.
---@param sceneName string
---@return handle
function CreateSceneEntity(sceneName) end

---Creates and returns an AABB trigger
---@param origin Vector
---@param mins Vector
---@param maxs Vector
---@return handle
function CreateTrigger(origin, mins, maxs) end

---Creates and returns an AABB trigger thats bigger than the radius provided
---@param origin Vector
---@param radius number
---@return handle
function CreateTriggerRadiusApproximate(origin, radius) end

---Creates a separate random number stream.
---@param iSeed number
---@return handle
function CreateUniformRandomStream(iSeed) end

---Cross product between two vectors
---@param Vector_1 Vector
---@param Vector_2 Vector
---@return Vector
function CrossVectors(Vector_1, Vector_2) end

---Free a damageinfo object that was created with CreateDamageInfo().
---@param info CTakeDamageInfo
function DestroyDamageInfo(info) end

---#EntFire:Generate and entity i/o event
---@param target string
---@param input string
---@param parameter string
---@param delay number
---@param activator handle
---@param caller handle
function DoEntFire(target, input, parameter, delay, activator, caller) end

---Generate and entity i/o event
---@param target handle
---@param input string
---@param parameter string
---@param delay number
---@param activator handle
---@param caller handle
function DoEntFireByInstanceHandle(target, input, parameter, delay, activator, caller) end

---Execute a script (internal)
---@param scriptFileName string
---@param scope handle
---@return boolean
function DoIncludeScript(scriptFileName, scope) end

---Generate a string guaranteed to be unique across the life of the script VM, with an optional root string. Useful for adding data to tables when not sure what keys are already in use in that table.
---@param root string
---@return string
function DoUniqueString(root) end

---Turn an entity index integer to an HScript representing that entity's script instance.
---@param entIndex number
---@return handle
function EntIndexToHScript(entIndex) end

---Smooth curve decreasing slower as it approaches zero
---@param decayTo number
---@param decayTime number
---@param dt number
---@return number
function ExponentialDecay(decayTo, decayTime, dt) end

---Fire Entity's Action Input w/no data
---@param entityEhandle ehandle
---@param inputName string
function FireEntityIOInputNameOnly(entityEhandle, inputName) end

---Fire Entity's Action Input with passed String - you own the memory
---@param entityEhandle ehandle
---@param inputName string
---@param value string
function FireEntityIOInputString(entityEhandle, inputName, value) end

---Fire Entity's Action Input with passed Vector - you own the memory
---@param entityEhandle ehandle
---@param inputName string
---@param value Vector
function FireEntityIOInputVec(entityEhandle, inputName, value) end

---Fire a game event.
---@param eventName string
---@param parameters table
function FireGameEvent(eventName, parameters) end

---Fire a game event without broadcasting to the client.
---@param eventName string
---@param parameters table
function FireGameEventLocal(eventName, parameters) end

---Get the time spent on the server in the last frame
---@return number
function FrameTime() end

---Returns the currently active spawn group handle
---@return number
function GetActiveSpawnGroupHandle() end

---Returns the engines current frame count
---@return number
function GetFrameCount() end

---Get the local player on a listen server.
---@return handle
function GetListenServerHost() end

---Get the name of the map.
---@return string
function GetMapName() end

---Get the longest delay for all events attached to an output
---@param entityEhandle ehandle
---@param outputName string
---@return number
function GetMaxOutputDelay(entityEhandle, outputName) end

---Get Angular Velocity for VPHYS or normal object. Returns a vector of the axis of rotation, multiplied by the degrees of rotation per second.
---@param entity handle
---@return Vector
function GetPhysAngularVelocity(entity) end

---Get Velocity for VPHYS or normal object
---@param entity handle
---@return Vector
function GetPhysVelocity(entity) end

---InitLogFile is deprecated. Print to the console for logging instead. If the given file doesn't exist, creates it with the given contents; does nothing if it exists.
---@param string_1 string
---@param string_2 string
function InitLogFile(string_1, string_2) end

---Returns true if this is lua running from the client.dll.
---@return boolean
function IsClient() end

---Returns true if this server is a dedicated server.
---@return boolean
function IsDedicatedServer() end

---Returns true if this is lua running within tools mode.
---@return boolean
function IsInToolsMode() end

---Returns true if the entity is valid and marked for deletion.
---@param entity handle
---@return boolean
function IsMarkedForDeletion(entity) end

---Returns true if this is lua running from the server.dll.
---@return boolean
function IsServer() end

---Checks to see if the given hScript is a valid entity
---@param entity handle
---@return boolean
function IsValidEntity(entity) end

---lerp between two vectors by a float factor returning new vector
---@param startVector Vector
---@param endVector Vector
---@param factor number
---@return Vector
function LerpVectors(startVector, endVector, factor) end

---Register as a listener for a game event from script.
---@param eventname string
---@param callback function
---@param context table | nil
---@return number
function ListenToGameEvent(eventname, callback, context) end

---Creates a table from the specified keyvalues text file
---@param textFile string
---@return table
function LoadKeyValues(textFile) end

---Creates a table from the specified keyvalues string
---@param keyValues string
---@return table
function LoadKeyValuesFromString(keyValues) end

---Get the current local time
---@return table
function LocalTime() end

---Checks to see if the given hScript is a valid entity
---@param string_1 string
---@return number
function MakeStringToken(string_1) end

---Triggers the creation of entities in a manually-completed spawn group
---@param int_1 number
function ManuallyTriggerSpawnGroupCompletion(int_1) end

---Get the current float time from the engine
---@return number
function Plat_FloatTime() end

---Get a script instance of a player by index.
---@param index number
---@return handle
function PlayerInstanceFromIndex(index) end

---Precache an entity from KeyValues in table
---@param classname string
---@param spawnKeyValues handle
---@param context handle
function PrecacheEntityFromTable(classname, spawnKeyValues, context) end

---Precache a list of entity KeyValues tables
---@param groupSpawnTables table
---@param context handle
function PrecacheEntityListFromTable(groupSpawnTables, context) end

---Manually precache a single model
---@param modelName string
---@param context handle
function PrecacheResource(modelName, context) end

---Spherical lerp of angle from->to based on time
---@param fromAngle QAngle
---@param toAngle QAngle
---@param time number
---@return QAngle
function QSlerp(fromAngle, toAngle, time) end

---Get a random float within a range
---@param min number
---@param max number
---@return number
function RandomFloat(min, max) end

---Get a random int within a range (inclusive)
---@param min number
---@param max number
---@return number
function RandomInt(min, max) end

---Create a C proxy for a script-based spawn group filter
---@param string_1 string
function RegisterSpawnGroupFilterProxy(string_1) end

---Reloads the MotD file
function ReloadMOTD() end

---Remove the C proxy for a script-based spawn group filter
---@param string_1 string
function RemoveSpawnGroupFilterProxy(string_1) end

---Rotate a QAngle by another QAngle.
---@param QAngle_1 QAngle
---@param QAngle_2 QAngle
---@return QAngle
function RotateOrientation(QAngle_1, QAngle_2) end

---Rotate a Vector around a point.
---@param rotationOrigin Vector
---@param rotationAngle QAngle
---@param vectorToRotate Vector
---@return Vector
function RotatePosition(rotationOrigin, rotationAngle, vectorToRotate) end

---Rotates a quaternion by the specified angle around the specified vector axis
---@param Quaternion_1 Quaternion
---@param axis Vector
---@param angle number
---@return Quaternion
function RotateQuaternionByAxisAngle(Quaternion_1, axis, angle) end

---Find the delta between two QAngles.
---@param src QAngle
---@param dest QAngle
---@return QAngle
function RotationDelta(src, dest) end

---Converts delta QAngle to an angular velocity Vector
---@param QAngle_1 QAngle
---@param QAngle_2 QAngle
---@return Vector
function RotationDeltaAsAngularVelocity(QAngle_1, QAngle_2) end

---Start a screenshake. eCommand values: SHAKE_START = 0, SHAKE_STOP = 1
---@param vecCenter Vector
---@param flAmplitude number
---@param flFrequency number
---@param flDuration number
---@param flRadius number
---@param eCommand number
---@param bAirShake boolean
function ScreenShake(vecCenter, flAmplitude, flFrequency, flDuration, flRadius, eCommand, bAirShake) end

---Gets the current game mode.
---@return number
function ScriptGetGameMode() end

---Gets the current game type.
---@return number
function ScriptGetGameType() end

---Get the number of rounds played so far.
---@return number
function ScriptGetRoundsPlayed() end

---Returns whether the player is playing with a controller or not.
---@return boolean
function ScriptIsLocalPlayerUsingController() end

---Is it warmup or not.
---@return boolean
function ScriptIsWarmupPeriod() end

---Send a string to the console as a client command
---@param command string
function SendToConsole(command) end

---Send a string to the console as a server command
---@param command string
function SendToServerConsole(command) end

---Sets an opvar value for all players
---@param string_1 string
---@param string_2 string
---@param string_3 string
---@param float_4 number
function SetOpvarFloatAll(string_1, string_2, string_3, float_4) end

---Sets an opvar value for a single player
---@param string_1 string
---@param string_2 string
---@param string_3 string
---@param float_4 number
---@param handle_5 handle
function SetOpvarFloatPlayer(string_1, string_2, string_3, float_4, handle_5) end

---Set Angular Velocity for VPHYS or normal object, from a vector of the axis of rotation, multiplied by the degrees of rotation per second.
---@param entity handle
---@param angVel Vector
function SetPhysAngularVelocity(entity, angVel) end

---Set the current quest name.
---@param string_1 string
function SetQuestName(string_1) end

---Set the current quest phase.
---@param int_1 number
function SetQuestPhase(int_1) end

---Set rendering on/off for an ehandle
---@param entityEhandle ehandle
---@param isEnabled boolean
function SetRenderingEnabled(entityEhandle, isEnabled) end

---Asynchronously spawns a single entity from a table
---@param classname string
---@param spawnKeyValues table
---@param callback function
---@param handle_4 handle
function SpawnEntityFromTableAsynchronous(classname, spawnKeyValues, callback, handle_4) end

---Synchronously spawns a single entity from a table
---@param classname string
---@param spawnKeyValues table
---@return handle
function SpawnEntityFromTableSynchronous(classname, spawnKeyValues) end

---Hierarchically spawn an entity group from a set of spawn tables.
---@param groupSpawnTables table
---@param bAsync boolean
---@param callback function
---@return boolean
function SpawnEntityGroupFromTable(groupSpawnTables, bAsync, callback) end

---Asynchronously spawn an entity group from a list of spawn tables. A callback will be triggered when the spawning is complete
---@param groupSpawnTables table
---@param callback function
---@return number
function SpawnEntityListFromTableAsynchronous(groupSpawnTables, callback) end

---Synchronously spawn an entity group from a list of spawn tables.
---@param groupSpawnTables table
---@return handle
function SpawnEntityListFromTableSynchronous(groupSpawnTables) end

---Very basic interpolation of q0 to q1 over t on [0,1]
---@param q0 Quaternion
---@param q1 Quaternion
---@param t number
---@return Quaternion
function SplineQuaternions(q0, q1, t) end

---Very basic interpolation of v0 to v1 over t on [0,1]
---@param v0 Vector
---@param v1 Vector
---@param t number
---@return Vector
function SplineVectors(v0, v1, t) end

---Pass entity and effect name
---@param entity handle
---@param effectName string
function StopEffect(entity, effectName) end

---Stop listening to all game events within a specific context.
---@param context table
function StopListeningToAllGameEvents(context) end

---Stop listening to a particular game event.
---@param eventlistener number
---@return boolean
function StopListeningToGameEvent(eventlistener) end

---Get the current server time
---@return number
function Time() end

---Pass table - Inputs: start, end, ent, (optional mins, maxs) -- outputs: pos, fraction, hit, startsolid, normal
---@param parameters table
---@return boolean
function TraceCollideable(parameters) end

---Pass table - Inputs: start, end, min, max, mask, ignore  -- outputs: pos, fraction, hit, enthit, startsolid
---@param parameters table
---@return boolean
function TraceHull(parameters) end

---Pass table - Inputs: startpos, endpos, mask, ignore  -- outputs: pos, fraction, hit, enthit, startsolid
---@param parameters table
---@return boolean
function TraceLine(parameters) end

---Removes the specified entity
---@param entity handle
function UTIL_Remove(entity) end

---Immediately removes the specified entity
---@param entity handle
function UTIL_RemoveImmediate(entity) end

---Unload a spawn group by name
---@param name string
function UnloadSpawnGroup(name) end

---Unload a spawn group by handle
---@param int_1 number
function UnloadSpawnGroupByHandle(int_1) end

---Turn a userid integer (typically, fields named 'userid' in game events) to an HScript representing the associated player controller's script instance.
---@param userid number
---@return CBasePlayerController
function UserIDToControllerHScript(userid) end

---Get Qangles (with no roll) for a Vector.
---@param input Vector
---@return QAngle
function VectorToAngles(input) end

---Gets the value of the given cvar, as a float.
---@param cvarName string
---@return number
function cvar_getf(cvarName) end

---Sets the value of the given cvar, as a float.
---@param cvarName string
---@param value number
---@return boolean
function cvar_setf(cvarName, value) end