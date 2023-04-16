/* eslint-disable @typescript-eslint/naming-convention */
interface EventData {
	[key: string]: {
		args: {
			name: string;
			type: string;
			comment?: string;
		}[];
		comment?: string;
	}
}

const data: EventData = {
	server_spawn: {
		args: [{ "name": "hostname", "type": "string", "comment": "public host name" }, { "name": "address", "type": "string", "comment": "hostame, IP or DNS name" }, { "name": "port", "type": "short", "comment": "server port" }, { "name": "game", "type": "string", "comment": "game dir" }, { "name": "mapname", "type": "string", "comment": "map name" }, { "name": "addonname", "type": "string", "comment": "addon name" }, { "name": "maxplayers", "type": "long", "comment": "max players" }, { "name": "os", "type": "string", "comment": "WIN32, LINUX" }, { "name": "dedicated", "type": "bool", "comment": "true if dedicated server" }, { "name": "password", "type": "bool", "comment": "true if password protected" }],
		comment: "send once a server starts"
	},
	server_pre_shutdown: {
		args: [{ "name": "reason", "type": "string", "comment": "reason why server is about to be shut down" }],
		comment: "server is about to be shut down"
	},
	server_shutdown: {
		args: [{ "name": "reason", "type": "string", "comment": "reason why server was shut down" }],
		comment: "server shut down"
	},
	server_message: {
		args: [{ "name": "text", "type": "string", "comment": "the message text" }],
		comment: "a generic server message"
	},
	server_cvar: {
		args: [{ "name": "cvarname", "type": "string", "comment": "cvar name, eg \"mp_roundtime\"" }, { "name": "cvarvalue", "type": "string", "comment": "new cvar value" }],
		comment: "a server console var has changed"
	},
	player_activate: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID on server" }],
	},
	player_connect_full: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID on server (unique on server)" }],
		comment: "player has sent final message in the connection sequence"
	},
	player_full_update: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID on server" }, { "name": "count", "type": "short", "comment": "Number of this full update" }],
	},
	player_connect: {
		args: [{ "name": "name", "type": "string", "comment": "player name" }, { "name": "userid", "type": "playercontroller", "comment": "user ID on server (unique on server)" }, { "name": "networkid", "type": "string", "comment": "player network (i.e steam) id" }, { "name": "xuid", "type": "uint64", "comment": "steam id" }, { "name": "address", "type": "string", "comment": "ip:port" }, { "name": "bot", "type": "bool" }],
		comment: "a new client connected"
	},
	player_disconnect: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID on server" }, { "name": "reason", "type": "short", "comment": "see networkdisconnect enum protobuf" }, { "name": "name", "type": "string", "comment": "player name" }, { "name": "networkid", "type": "string", "comment": "player network (i.e steam) id" }, { "name": "xuid", "type": "uint64", "comment": "steam id" }, { "name": "PlayerID", "type": "short" }],
		comment: "a client was disconnected"
	},
	player_info: {
		args: [{ "name": "name", "type": "string", "comment": "player name" }, { "name": "userid", "type": "playercontroller", "comment": "user ID on server (unique on server)" }, { "name": "steamid", "type": "uint64", "comment": "player network (i.e steam) id" }, { "name": "bot", "type": "bool", "comment": "true if player is a AI bot" }],
		comment: "a player changed his name"
	},
	player_spawn: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
		comment: "player spawned in game"
	},
	player_team: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player" }, { "name": "team", "type": "byte", "comment": "team id" }, { "name": "oldteam", "type": "byte", "comment": "old team id" }, { "name": "disconnect", "type": "bool", "comment": "team change because player disconnects" }, { "name": "silent", "type": "bool" }, { "name": "isbot", "type": "bool", "comment": "true if player is a bot" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
		comment: "player change his team. You can receive this on the client before the local player has updated the team field locally"
	},
	local_player_team: {
		args: [],
		comment: "sent only on the client for the local player - happens only after a local players pawn team variable has been updated"
	},
	local_player_controller_team: {
		args: [],
		comment: "sent only on the client for the local player - happens only after the local players controller team variable has been updated"
	},
	player_changename: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID on server" }, { "name": "oldname", "type": "string", "comment": "players old (current) name" }, { "name": "newname", "type": "string", "comment": "players new name" }],
	},
	player_hurt: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player index who was hurt" }, { "name": "attacker", "type": "playercontroller", "comment": "player index who attacked" }, { "name": "health", "type": "byte", "comment": "remaining health points" }, { "name": "armor", "type": "byte", "comment": "remaining armor points" }, { "name": "weapon", "type": "string", "comment": "weapon name attacker used, if not the world" }, { "name": "dmg_health", "type": "short", "comment": "damage done to health" }, { "name": "dmg_armor", "type": "byte", "comment": "damage done to armor" }, { "name": "hitgroup", "type": "byte", "comment": "hitgroup that was damaged" }, { "name": "userid_pawn", "type": "strict_ehandle" }, { "name": "attacker_pawn", "type": "strict_ehandle" }],
	},
	player_chat: {
		args: [{ "name": "teamonly", "type": "bool", "comment": "true if team only chat" }, { "name": "userid", "type": "short", "comment": "chatting player" }, { "name": "text", "type": "string", "comment": "chat text" }],
		comment: "a public player chat"
	},
	local_player_pawn_changed: {
		args: [],
	},
	teamplay_broadcast_audio: {
		args: [{ "name": "team", "type": "byte", "comment": "unique team id" }, { "name": "sound", "type": "string", "comment": "name of the sound to emit" }],
		comment: "emits a sound to everyone on a team"
	},
	finale_start: {
		args: [{ "name": "rushes", "type": "short" }],
	},
	player_stats_updated: {
		args: [{ "name": "forceupload", "type": "bool" }],
	},
	user_data_downloaded: {
		args: [],
		comment: "fired when achievements/stats are downloaded from Steam or XBox Live"
	},
	ragdoll_dissolved: {
		args: [{ "name": "entindex", "type": "long" }],
	},
	team_info: {
		args: [{ "name": "teamid", "type": "byte", "comment": "unique team id" }, { "name": "teamname", "type": "string", "comment": "team name eg \"Team Blue\"" }],
		comment: "info about team"
	},
	team_score: {
		args: [{ "name": "teamid", "type": "byte", "comment": "team id" }, { "name": "score", "type": "short", "comment": "total team score" }],
		comment: "team score changed"
	},
	hltv_cameraman: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "camera man entity index" }],
		comment: "a spectator/player is a cameraman"
	},
	hltv_chase: {
		args: [{ "name": "target1", "type": "playercontroller", "comment": "primary traget index" }, { "name": "target2", "type": "playercontroller", "comment": "secondary traget index or 0" }, { "name": "distance", "type": "short", "comment": "camera distance" }, { "name": "theta", "type": "short", "comment": "view angle horizontal" }, { "name": "phi", "type": "short", "comment": "view angle vertical" }, { "name": "inertia", "type": "byte", "comment": "camera inertia" }, { "name": "ineye", "type": "byte", "comment": "diretcor suggests to show ineye" }],
		comment: "shot of a single entity"
	},
	hltv_rank_camera: {
		args: [{ "name": "index", "type": "byte", "comment": "fixed camera index" }, { "name": "rank", "type": "float", "comment": "ranking, how interesting is this camera view" }, { "name": "target", "type": "playercontroller", "comment": "best/closest target entity" }],
		comment: "a camera ranking"
	},
	hltv_rank_entity: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player slot" }, { "name": "rank", "type": "float", "comment": "ranking, how interesting is this entity to view" }, { "name": "target", "type": "playercontroller", "comment": "best/closest target entity" }],
		comment: "an entity ranking"
	},
	hltv_fixed: {
		args: [{ "name": "posx", "type": "long", "comment": "camera position in world" }, { "name": "posy", "type": "long" }, { "name": "posz", "type": "long" }, { "name": "theta", "type": "short", "comment": "camera angles" }, { "name": "phi", "type": "short" }, { "name": "offset", "type": "short" }, { "name": "fov", "type": "float" }, { "name": "target", "type": "playercontroller", "comment": "follow this player" }],
		comment: "show from fixed view"
	},
	hltv_message: {
		args: [{ "name": "text", "type": "string" }],
		comment: "a HLTV message send by moderators"
	},
	hltv_status: {
		args: [{ "name": "clients", "type": "long", "comment": "number of HLTV spectators" }, { "name": "slots", "type": "long", "comment": "number of HLTV slots" }, { "name": "proxies", "type": "short", "comment": "number of HLTV proxies" }, { "name": "master", "type": "string", "comment": "disptach master IP:port" }],
		comment: "general HLTV status"
	},
	hltv_title: {
		args: [{ "name": "text", "type": "string" }],
	},
	hltv_chat: {
		args: [{ "name": "text", "type": "string" }, { "name": "steamID", "type": "uint64", "comment": "steam id" }],
		comment: "a HLTV chat msg sent by spectators"
	},
	hltv_versioninfo: {
		args: [{ "name": "version", "type": "long" }],
	},
	hltv_replay: {
		args: [{ "name": "delay", "type": "long", "comment": "number of seconds in killer replay delay" }, { "name": "reason", "type": "long", "comment": "reason for replay\t(ReplayEventType_t)" }],
	},
	demo_start: {
		args: [{ "name": "local", "type": "1" }, { "name": "dota_combatlog_list", "type": "local", "comment": "CSVCMsgList_GameEvents that are combat log events" }, { "name": "dota_hero_chase_list", "type": "local", "comment": "CSVCMsgList_GameEvents" }, { "name": "dota_pick_hero_list", "type": "local", "comment": "CSVCMsgList_GameEvents" }],
	},
	demo_stop: {
		args: [],
	},
	demo_skip: {
		args: [{ "name": "local", "type": "1" }, { "name": "playback_tick", "type": "long", "comment": "current playback tick" }, { "name": "skipto_tick", "type": "long", "comment": "tick we're going to" }, { "name": "user_message_list", "type": "local", "comment": "CSVCMsgList_UserMessages" }, { "name": "dota_hero_chase_list", "type": "local", "comment": "CSVCMsgList_GameEvents" }],
	},
	map_shutdown: {
		args: [],
	},
	map_transition: {
		args: [],
	},
	hostname_changed: {
		args: [{ "name": "hostname", "type": "string" }],
	},
	difficulty_changed: {
		args: [{ "name": "newDifficulty", "type": "short" }, { "name": "oldDifficulty", "type": "short" }, { "name": "strDifficulty", "type": "string", "comment": "new difficulty as string" }],
	},
	game_message: {
		args: [{ "name": "target", "type": "byte", "comment": "0 = console, 1 = HUD" }, { "name": "text", "type": "string", "comment": "the message text" }],
		comment: "a message send by game logic to everyone"
	},
	game_newmap: {
		args: [{ "name": "mapname", "type": "string", "comment": "map name" }],
		comment: "send when new map is completely loaded"
	},
	round_start: {
		args: [{ "name": "timelimit", "type": "long", "comment": "round time limit in seconds" }, { "name": "fraglimit", "type": "long", "comment": "frag limit in seconds" }, { "name": "objective", "type": "string", "comment": "round objective" }],
	},
	round_end: {
		args: [{ "name": "winner", "type": "byte", "comment": "winner team/user i" }, { "name": "reason", "type": "byte", "comment": "reson why team won" }, { "name": "message", "type": "string", "comment": "end round message" }, { "name": "legacy", "type": "byte", "comment": "server-generated legacy value" }, { "name": "player_count", "type": "short", "comment": "total number of players alive at the end of round, used for statistics gathering, computed on the server in the event client is in replay when receiving this message" }, { "name": "nomusic", "type": "byte", "comment": "if set, don't play round end music, because action is still on-going" }],
	},
	round_start_pre_entity: {
		args: [],
	},
	round_start_post_nav: {
		args: [],
	},
	round_freeze_end: {
		args: [],
	},
	teamplay_round_start: {
		args: [{ "name": "full_reset", "type": "bool", "comment": "is this a full reset of the map" }],
		comment: "round restart"
	},
	player_death: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user who died" }, { "name": "attacker", "type": "playercontroller", "comment": "player who killed" }, { "name": "assister", "type": "playercontroller", "comment": "player who assisted in the kill" }, { "name": "assistedflash", "type": "bool", "comment": "assister helped with a flash" }, { "name": "weapon", "type": "string", "comment": "weapon name killer used" }, { "name": "weapon_itemid", "type": "string", "comment": "inventory item id of weapon killer used" }, { "name": "weapon_fauxitemid", "type": "string", "comment": "faux item id of weapon killer used" }, { "name": "weapon_originalowner_xuid", "type": "string" }, { "name": "headshot", "type": "bool", "comment": "singals a headshot" }, { "name": "dominated", "type": "short", "comment": "did killer dominate victim with this kill" }, { "name": "revenge", "type": "short", "comment": "did killer get revenge on victim with this kill" }, { "name": "wipe", "type": "short", "comment": "is the kill resulting in squad wipe" }, { "name": "penetrated", "type": "short", "comment": "number of objects shot penetrated before killing target" }, { "name": "noreplay", "type": "bool", "comment": "if replay data is unavailable, this will be present and set to false" }, { "name": "noscope", "type": "bool", "comment": "kill happened without a scope, used for death notice icon" }, { "name": "thrusmoke", "type": "bool", "comment": "hitscan weapon went through smoke grenade" }, { "name": "attackerblind", "type": "bool", "comment": "attacker was blind from flashbang" }, { "name": "distance", "type": "float", "comment": "distance to victim in meters" }, { "name": "userid_pawn", "type": "strict_ehandle" }, { "name": "attacker_pawn", "type": "strict_ehandle" }, { "name": "assister_pawn", "type": "strict_ehandle" }],
		comment: "a game event, name may be 32 characters long"
	},
	player_footstep: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	player_hintmessage: {
		args: [{ "name": "hintmessage", "type": "string", "comment": "localizable string of a hint" }],
	},
	break_breakable: {
		args: [{ "name": "entindex", "type": "long" }, { "name": "userid", "type": "player_pawn" }, { "name": "material", "type": "byte", "comment": "BREAK_GLASS, BREAK_WOOD, etc" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	break_prop: {
		args: [{ "name": "entindex", "type": "long" }, { "name": "userid", "type": "player_pawn" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	entity_killed: {
		args: [{ "name": "entindex_killed", "type": "long" }, { "name": "entindex_attacker", "type": "long" }, { "name": "entindex_inflictor", "type": "long" }, { "name": "damagebits", "type": "long" }],
	},
	door_close: {
		args: [{ "name": "userid", "type": "player_pawn", "comment": "Who closed the door" }, { "name": "checkpoint", "type": "bool", "comment": "Is the door a checkpoint door" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	vote_started: {
		args: [{ "name": "issue", "type": "string" }, { "name": "param1", "type": "string" }, { "name": "team", "type": "byte" }, { "name": "initiator", "type": "long", "comment": "entity id of the player who initiated the vote" }],
	},
	vote_failed: {
		args: [{ "name": "team", "type": "byte" }],
	},
	vote_passed: {
		args: [{ "name": "details", "type": "string" }, { "name": "param1", "type": "string" }, { "name": "team", "type": "byte" }],
	},
	vote_changed: {
		args: [{ "name": "vote_option1", "type": "byte" }, { "name": "vote_option2", "type": "byte" }, { "name": "vote_option3", "type": "byte" }, { "name": "vote_option4", "type": "byte" }, { "name": "vote_option5", "type": "byte" }, { "name": "potentialVotes", "type": "byte" }],
	},
	vote_cast_yes: {
		args: [{ "name": "team", "type": "byte" }, { "name": "entityid", "type": "long", "comment": "entity id of the voter" }],
	},
	vote_cast_no: {
		args: [{ "name": "team", "type": "byte" }, { "name": "entityid", "type": "long", "comment": "entity id of the voter" }],
	},
	achievement_event: {
		args: [{ "name": "achievement_name", "type": "string", "comment": "non-localized name of achievement" }, { "name": "cur_val", "type": "short", "comment": "# of steps toward achievement" }, { "name": "max_val", "type": "short", "comment": "total # of steps in achievement" }],
	},
	achievement_earned: {
		args: [{ "name": "player", "type": "playercontroller", "comment": "entindex of the player" }, { "name": "achievement", "type": "short", "comment": "achievement ID" }],
	},
	achievement_write_failed: {
		args: [],
		comment: "Used for a notification message when an achievement fails to write"
	},
	bonus_updated: {
		args: [{ "name": "numadvanced", "type": "short" }, { "name": "numbronze", "type": "short" }, { "name": "numsilver", "type": "short" }, { "name": "numgold", "type": "short" }],
	},
	spec_target_updated: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "spectating player" }, { "name": "target", "type": "long", "comment": "ehandle of the target" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	spec_mode_updated: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "entindex of the player" }],
	},
	entity_visible: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "The player who sees the entity" }, { "name": "subject", "type": "short", "comment": "Entindex of the entity they see" }, { "name": "classname", "type": "string", "comment": "Classname of the entity they see" }, { "name": "entityname", "type": "string", "comment": "name of the entity they see" }],
	},
	gameinstructor_draw: {
		args: [],
	},
	gameinstructor_nodraw: {
		args: [],
	},
	flare_ignite_npc: {
		args: [{ "name": "entindex", "type": "long", "comment": "entity ignited" }],
	},
	helicopter_grenade_punt_miss: {
		args: [],
	},
	physgun_pickup: {
		args: [{ "name": "target", "type": "long", "comment": "entity picked up" }],
	},
	inventory_updated: {
		args: [],
	},
	cart_updated: {
		args: [],
	},
	store_pricesheet_updated: {
		args: [],
	},
	item_schema_initialized: {
		args: [],
	},
	drop_rate_modified: {
		args: [],
	},
	event_ticket_modified: {
		args: [],
	},
	gc_connected: {
		args: [],
	},
	instructor_start_lesson: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "The player who this lesson is intended for" }, { "name": "hint_name", "type": "string", "comment": "Name of the lesson to start.  Must match instructor_lesson.txt" }, { "name": "hint_target", "type": "long", "comment": "entity id that the hint should display at. Leave empty if controller target" }, { "name": "vr_movement_type", "type": "byte" }, { "name": "vr_single_controller", "type": "bool" }, { "name": "vr_controller_type", "type": "byte" }],
	},
	instructor_close_lesson: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "The player who this lesson is intended for" }, { "name": "hint_name", "type": "string", "comment": "Name of the lesson to start.  Must match instructor_lesson.txt" }],
	},
	instructor_server_hint_create: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID of the player that triggered the hint" }, { "name": "hint_name", "type": "string", "comment": "what to name the hint. For referencing it again later (e.g. a kill command for the hint instead of a timeout)" }, { "name": "hint_replace_key", "type": "string", "comment": "type name so that messages of the same type will replace each other" }, { "name": "hint_target", "type": "long", "comment": "entity id that the hint should display at" }, { "name": "hint_activator_userid", "type": "playercontroller", "comment": "userid id of the activator" }, { "name": "hint_timeout", "type": "short", "comment": "how long in seconds until the hint automatically times out, 0 = never" }, { "name": "hint_icon_onscreen", "type": "string", "comment": "the hint icon to use when the hint is onscreen. e.g. \"icon_alert_red\"" }, { "name": "hint_icon_offscreen", "type": "string", "comment": "the hint icon to use when the hint is offscreen. e.g. \"icon_alert\"" }, { "name": "hint_caption", "type": "string", "comment": "the hint caption. e.g. \"#ThisIsDangerous\"" }, { "name": "hint_activator_caption", "type": "string", "comment": "the hint caption that only the activator sees e.g. \"#YouPushedItGood\"" }, { "name": "hint_color", "type": "string", "comment": "the hint color in \"r,g,b\" format where each component is 0-255" }, { "name": "hint_icon_offset", "type": "float", "comment": "how far on the z axis to offset the hint from entity origin" }, { "name": "hint_range", "type": "float", "comment": "range before the hint is culled" }, { "name": "hint_flags", "type": "long", "comment": "hint flags" }, { "name": "hint_binding", "type": "string", "comment": "bindings to use when use_binding is the onscreen icon" }, { "name": "hint_gamepad_binding", "type": "string", "comment": "gamepad bindings to use when use_binding is the onscreen icon" }, { "name": "hint_allow_nodraw_target", "type": "bool", "comment": "if false, the hint will dissappear if the target entity is invisible" }, { "name": "hint_nooffscreen", "type": "bool", "comment": "if true, the hint will not show when outside the player view" }, { "name": "hint_forcecaption", "type": "bool", "comment": "if true, the hint caption will show even if the hint is occluded" }, { "name": "hint_local_player_only", "type": "bool", "comment": "if true, only the local player will see the hint" }],
		comment: "create a hint using data supplied entirely by the server/map. Intended for hints to smooth playtests before content is ready to make the hint unneccessary. NOT INTENDED AS A SHIPPABLE CRUTCH"
	},
	clientside_lesson_closed: {
		args: [{ "name": "lesson_name", "type": "string" }],
	},
	dynamic_shadow_light_changed: {
		args: [],
	},
	gameui_hidden: {
		args: [],
	},
	items_gifted: {
		args: [{ "name": "player", "type": "playercontroller", "comment": "entity used by player" }, { "name": "itemdef", "type": "long" }, { "name": "numgifts", "type": "short" }, { "name": "giftidx", "type": "long" }, { "name": "accountid", "type": "long" }],
	},
	player_score: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID on server" }, { "name": "kills", "type": "short", "comment": "# of kills" }, { "name": "deaths", "type": "short", "comment": "# of deaths" }, { "name": "score", "type": "short", "comment": "total game score" }],
		comment: "players scores changed"
	},
	player_shoot: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID on server" }, { "name": "weapon", "type": "byte", "comment": "weapon ID" }, { "name": "mode", "type": "byte", "comment": "weapon mode" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
		comment: "player shoot his weapon"
	},
	game_init: {
		args: [],
		comment: "sent when a new game is started"
	},
	game_start: {
		args: [{ "name": "roundslimit", "type": "long", "comment": "max round" }, { "name": "timelimit", "type": "long", "comment": "time limit" }, { "name": "fraglimit", "type": "long", "comment": "frag limit" }, { "name": "objective", "type": "string", "comment": "round objective" }],
		comment: "a new game starts"
	},
	game_end: {
		args: [{ "name": "winner", "type": "byte", "comment": "winner team/user id" }],
		comment: "a game ended"
	},
	round_announce_match_point: {
		args: [],
	},
	round_announce_final: {
		args: [],
	},
	round_announce_last_round_half: {
		args: [],
	},
	round_announce_match_start: {
		args: [],
	},
	round_announce_warmup: {
		args: [],
	},
	round_end_upload_stats: {
		args: [],
	},
	round_officially_ended: {
		args: [],
	},
	round_time_warning: {
		args: [],
	},
	ugc_map_info_received: {
		args: [{ "name": "published_file_id", "type": "uint64" }],
	},
	ugc_map_unsubscribed: {
		args: [{ "name": "published_file_id", "type": "uint64" }],
	},
	ugc_map_download_error: {
		args: [{ "name": "published_file_id", "type": "uint64" }, { "name": "error_code", "type": "long" }],
	},
	ugc_file_download_finished: {
		args: [{ "name": "hcontent", "type": "uint64", "comment": "id of this specific content (may be image or map)" }],
	},
	ugc_file_download_start: {
		args: [{ "name": "hcontent", "type": "uint64", "comment": "id of this specific content (may be image or map)" }, { "name": "published_file_id", "type": "uint64", "comment": "id of the associated content package" }],
	},
	begin_new_match: {
		args: [],
		comment: "Fired when a match ends or is restarted"
	},
	dm_bonus_weapon_start: {
		args: [{ "name": "time", "type": "short", "comment": "The length of time that this bonus lasts" }, { "name": "Pos", "type": "short", "comment": "Loadout position of the bonus weapon" }],
	},
	survival_announce_phase: {
		args: [{ "name": "phase", "type": "short", "comment": "The phase #" }],
	},
	broken_breakable: {
		args: [{ "name": "entindex", "type": "long" }, { "name": "userid", "type": "player_pawn" }, { "name": "material", "type": "byte", "comment": "BREAK_GLASS, BREAK_WOOD, etc" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	player_decal: {
		args: [{ "name": "userid", "type": "player_pawn" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	achievement_increment: {
		args: [{ "name": "achievement_id", "type": "long", "comment": "ID of achievement that went up" }, { "name": "cur_val", "type": "short", "comment": "# of steps toward achievement" }, { "name": "max_val", "type": "short", "comment": "total # of steps in achievement" }],
		comment: "sent whenever an achievement that's tracked on the HUD increases"
	},
	set_instructor_group_enabled: {
		args: [{ "name": "group", "type": "string" }, { "name": "enabled", "type": "short" }],
	},
	instructor_server_hint_stop: {
		args: [{ "name": "hint_name", "type": "string", "comment": "The hint to stop. Will stop ALL hints with this name" }],
		comment: "destroys a server/map created hint"
	},
	read_game_titledata: {
		args: [{ "name": "controllerId", "type": "short", "comment": "Controller id of user" }],
		comment: "read user titledata from profile"
	},
	write_game_titledata: {
		args: [{ "name": "controllerId", "type": "short", "comment": "Controller id of user" }],
		comment: "write user titledata in profile"
	},
	reset_game_titledata: {
		args: [{ "name": "controllerId", "type": "short", "comment": "Controller id of user" }],
		comment: "reset user titledata; do not automatically write profile"
	},
	weaponhud_selection: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "Player who this event applies to" }, { "name": "mode", "type": "byte", "comment": "EWeaponHudSelectionMode (switch / pickup / drop)" }, { "name": "entindex", "type": "long", "comment": "Weapon entity index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	vote_ended: {
		args: [],
	},
	vote_cast: {
		args: [{ "name": "vote_option", "type": "byte", "comment": "which option the player voted on" }, { "name": "team", "type": "short" }, { "name": "userid", "type": "playercontroller", "comment": "player who voted" }],
	},
	vote_options: {
		args: [{ "name": "count", "type": "byte", "comment": "Number of options - up to MAX_VOTE_OPTIONS" }, { "name": "option1", "type": "string" }, { "name": "option2", "type": "string" }, { "name": "option3", "type": "string" }, { "name": "option4", "type": "string" }, { "name": "option5", "type": "string" }],
	},
	endmatch_mapvote_selecting_map: {
		args: [{ "name": "count", "type": "byte", "comment": "Number of \"ties\"" }, { "name": "slot1", "type": "byte" }, { "name": "slot2", "type": "byte" }, { "name": "slot3", "type": "byte" }, { "name": "slot4", "type": "byte" }, { "name": "slot5", "type": "byte" }, { "name": "slot6", "type": "byte" }, { "name": "slot7", "type": "byte" }, { "name": "slot8", "type": "byte" }, { "name": "slot9", "type": "byte" }, { "name": "slot10", "type": "byte" }],
	},
	endmatch_cmm_start_reveal_items: {
		args: [],
	},
	client_loadout_changed: {
		args: [],
	},
	add_player_sonar_icon: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "pos_x", "type": "float" }, { "name": "pos_y", "type": "float" }, { "name": "pos_z", "type": "float" }],
	},
	add_bullet_hit_marker: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "bone", "type": "short" }, { "name": "pos_x", "type": "short" }, { "name": "pos_y", "type": "short" }, { "name": "pos_z", "type": "short" }, { "name": "ang_x", "type": "short" }, { "name": "ang_y", "type": "short" }, { "name": "ang_z", "type": "short" }, { "name": "start_x", "type": "short" }, { "name": "start_y", "type": "short" }, { "name": "start_z", "type": "short" }, { "name": "hit", "type": "bool" }],
	},
	other_death: {
		args: [{ "name": "otherid", "type": "short", "comment": "other entity ID who died" }, { "name": "othertype", "type": "string", "comment": "other entity type" }, { "name": "attacker", "type": "short", "comment": "user ID who killed" }, { "name": "weapon", "type": "string", "comment": "weapon name killer used" }, { "name": "weapon_itemid", "type": "string", "comment": "inventory item id of weapon killer used" }, { "name": "weapon_fauxitemid", "type": "string", "comment": "faux item id of weapon killer used" }, { "name": "weapon_originalowner_xuid", "type": "string" }, { "name": "headshot", "type": "bool", "comment": "singals a headshot" }, { "name": "penetrated", "type": "short", "comment": "number of objects shot penetrated before killing target" }, { "name": "noscope", "type": "bool", "comment": "kill happened without a scope, used for death notice icon" }, { "name": "thrusmoke", "type": "bool", "comment": "hitscan weapon went through smoke grenade" }, { "name": "attackerblind", "type": "bool", "comment": "attacker was blind from flashbang" }],
	},
	item_purchase: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "team", "type": "short" }, { "name": "loadout", "type": "short" }, { "name": "weapon", "type": "string" }],
	},
	bomb_beginplant: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who is planting the bomb" }, { "name": "site", "type": "short", "comment": "bombsite index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	bomb_abortplant: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who is planting the bomb" }, { "name": "site", "type": "short", "comment": "bombsite index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	bomb_planted: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who planted the bomb" }, { "name": "site", "type": "short", "comment": "bombsite index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	bomb_defused: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who defused the bomb" }, { "name": "site", "type": "short", "comment": "bombsite index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	bomb_exploded: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who planted the bomb" }, { "name": "site", "type": "short", "comment": "bombsite index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	bomb_dropped: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who dropped the bomb" }, { "name": "entindex", "type": "long" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	bomb_pickup: {
		args: [{ "name": "userid", "type": "player_pawn", "comment": "player pawn who picked up the bomb" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	defuser_dropped: {
		args: [{ "name": "entityid", "type": "long", "comment": "defuser's entity ID" }],
	},
	defuser_pickup: {
		args: [{ "name": "entityid", "type": "long", "comment": "defuser's entity ID" }, { "name": "userid", "type": "playercontroller", "comment": "player who picked up the defuser" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	announce_phase_end: {
		args: [],
	},
	cs_intermission: {
		args: [],
	},
	bomb_begindefuse: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who is defusing" }, { "name": "haskit", "type": "bool" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	bomb_abortdefuse: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who was defusing" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	hostage_follows: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who touched the hostage" }, { "name": "hostage", "type": "short", "comment": "hostage entity index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	hostage_hurt: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who hurt the hostage" }, { "name": "hostage", "type": "short", "comment": "hostage entity index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	hostage_killed: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who killed the hostage" }, { "name": "hostage", "type": "short", "comment": "hostage entity index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	hostage_rescued: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who rescued the hostage" }, { "name": "hostage", "type": "short", "comment": "hostage entity index" }, { "name": "site", "type": "short", "comment": "rescue site index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	hostage_stops_following: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who rescued the hostage" }, { "name": "hostage", "type": "short", "comment": "hostage entity index" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	hostage_rescued_all: {
		args: [],
	},
	hostage_call_for_help: {
		args: [{ "name": "hostage", "type": "short", "comment": "hostage entity index" }],
	},
	vip_escaped: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who was the VIP" }],
	},
	vip_killed: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who was the VIP" }, { "name": "attacker", "type": "playercontroller", "comment": "user ID who killed the VIP" }],
	},
	player_radio: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "slot", "type": "short" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	bomb_beep: {
		args: [{ "name": "entindex", "type": "long", "comment": "c4 entity" }],
	},
	weapon_fire: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "weapon", "type": "string", "comment": "weapon name used" }, { "name": "silenced", "type": "bool", "comment": "is weapon silenced" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	weapon_fire_on_empty: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "weapon", "type": "string", "comment": "weapon name used" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	grenade_thrown: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "weapon", "type": "string", "comment": "weapon name used" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	weapon_outofammo: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	weapon_reload: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	weapon_zoom: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	silencer_detach: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	inspect_weapon: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	weapon_zoom_rifle: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
		comment: "exists for the game instructor to let it know when the player zoomed in with a regular rifle. Different from the above weapon_zoom because we don't use this event to notify bots"
	},
	player_spawned: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "inrestart", "type": "bool", "comment": "true if restart is pending" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	item_pickup: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "item", "type": "string", "comment": "either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'" }, { "name": "silent", "type": "bool" }, { "name": "defindex", "type": "long" }],
	},
	item_pickup_slerp: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "index", "type": "short" }, { "name": "behavior", "type": "short" }],
	},
	item_pickup_failed: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "item", "type": "string" }, { "name": "reason", "type": "short" }, { "name": "limit", "type": "short" }],
	},
	item_remove: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "item", "type": "string", "comment": "either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'" }, { "name": "defindex", "type": "long" }],
	},
	ammo_pickup: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "item", "type": "string", "comment": "either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'" }, { "name": "index", "type": "long", "comment": "the weapon entindex" }],
	},
	item_equip: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "item", "type": "string", "comment": "either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'" }, { "name": "defindex", "type": "long" }, { "name": "canzoom", "type": "bool" }, { "name": "hassilencer", "type": "bool" }, { "name": "issilenced", "type": "bool" }, { "name": "hastracers", "type": "bool" }, { "name": "weptype", "type": "short" }, { "name": "ispainted", "type": "bool" }],
	},
	enter_buyzone: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "canbuy", "type": "bool" }],
	},
	exit_buyzone: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "canbuy", "type": "bool" }],
	},
	buytime_ended: {
		args: [],
	},
	enter_bombzone: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "hasbomb", "type": "bool" }, { "name": "isplanted", "type": "bool" }],
	},
	exit_bombzone: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "hasbomb", "type": "bool" }, { "name": "isplanted", "type": "bool" }],
	},
	enter_rescue_zone: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	exit_rescue_zone: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	silencer_off: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	silencer_on: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	buymenu_open: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	buymenu_close: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	round_prestart: {
		args: [],
		comment: "sent before all other round restart actions"
	},
	round_poststart: {
		args: [],
		comment: "sent after all other round restart actions"
	},
	grenade_bounce: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	hegrenade_detonate: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	flashbang_detonate: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	smokegrenade_detonate: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	smokegrenade_expired: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	molotov_detonate: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	decoy_detonate: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	decoy_started: {
		args: [{ "name": "userid", "type": "player_pawn" }, { "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	tagrenade_detonate: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }],
	},
	inferno_startburn: {
		args: [{ "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }],
	},
	inferno_expire: {
		args: [{ "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }],
	},
	inferno_extinguish: {
		args: [{ "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }],
	},
	decoy_firing: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	bullet_impact: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	player_jump: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	player_blind: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "attacker", "type": "playercontroller", "comment": "user ID who threw the flash" }, { "name": "entityid", "type": "short", "comment": "the flashbang going off" }, { "name": "blind_duration", "type": "float" }],
	},
	player_falldamage: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "damage", "type": "float" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	door_moving: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "entindex", "type": "long" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	mb_input_lock_success: {
		args: [],
	},
	mb_input_lock_cancel: {
		args: [],
	},
	nav_blocked: {
		args: [{ "name": "area", "type": "long" }, { "name": "blocked", "type": "bool" }],
	},
	nav_generate: {
		args: [],
	},
	achievement_info_loaded: {
		args: [],
	},
	hltv_changed_mode: {
		args: [{ "name": "oldmode", "type": "long" }, { "name": "newmode", "type": "long" }, { "name": "obs_target", "type": "long" }],
	},
	cs_game_disconnected: {
		args: [],
	},
	cs_round_final_beep: {
		args: [],
	},
	cs_round_start_beep: {
		args: [],
	},
	cs_win_panel_round: {
		args: [{ "name": "show_timer_defend", "type": "bool" }, { "name": "show_timer_attack", "type": "bool" }, { "name": "timer_time", "type": "short" }, { "name": "final_event", "type": "byte", "comment": "define in cs_gamerules.h" }, { "name": "funfact_token", "type": "string" }, { "name": "funfact_player", "type": "playercontroller" }, { "name": "funfact_data1", "type": "long" }, { "name": "funfact_data2", "type": "long" }, { "name": "funfact_data3", "type": "long" }],
	},
	cs_win_panel_match: {
		args: [],
	},
	cs_match_end_restart: {
		args: [],
	},
	cs_pre_restart: {
		args: [],
	},
	show_deathpanel: {
		args: [{ "name": "victim", "type": "playercontroller", "comment": "endindex of the one who was killed" }, { "name": "killer", "type": "long", "comment": "entindex of the killer entity" }, { "name": "killer_controller", "type": "playercontroller" }, { "name": "hits_taken", "type": "short" }, { "name": "damage_taken", "type": "short" }, { "name": "hits_given", "type": "short" }, { "name": "damage_given", "type": "short" }, { "name": "victim_pawn", "type": "strict_ehandle" }],
	},
	hide_deathpanel: {
		args: [],
	},
	player_avenged_teammate: {
		args: [{ "name": "avenger_id", "type": "playercontroller" }, { "name": "avenged_player_id", "type": "playercontroller" }],
	},
	achievement_earned_local: {
		args: [{ "name": "achievement", "type": "short", "comment": "achievement ID" }, { "name": "splitscreenplayer", "type": "short", "comment": "splitscreen ID" }],
	},
	repost_xbox_achievements: {
		args: [{ "name": "splitscreenplayer", "type": "short", "comment": "splitscreen ID" }],
	},
	match_end_conditions: {
		args: [{ "name": "frags", "type": "long" }, { "name": "max_rounds", "type": "long" }, { "name": "win_rounds", "type": "long" }, { "name": "time", "type": "long" }],
	},
	round_mvp: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "reason", "type": "short" }, { "name": "value", "type": "long" }, { "name": "musickitmvps", "type": "long" }, { "name": "nomusic", "type": "byte" }, { "name": "musickitid", "type": "long" }],
	},
	show_survival_respawn_status: {
		args: [{ "name": "loc_token", "type": "string" }, { "name": "duration", "type": "long" }, { "name": "userid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	client_disconnect: {
		args: [],
	},
	gg_player_levelup: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who leveled up" }, { "name": "weaponrank", "type": "short" }, { "name": "weaponname", "type": "string", "comment": "name of weapon being awarded" }],
	},
	ggtr_player_levelup: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who leveled up" }, { "name": "weaponrank", "type": "short" }, { "name": "weaponname", "type": "string", "comment": "name of weapon being awarded" }],
	},
	ggprogressive_player_levelup: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who leveled up" }, { "name": "weaponrank", "type": "short" }, { "name": "weaponname", "type": "string", "comment": "name of weapon being awarded" }],
	},
	gg_killed_enemy: {
		args: [{ "name": "victimid", "type": "playercontroller", "comment": "user ID who died" }, { "name": "attackerid", "type": "playercontroller", "comment": "user ID who killed" }, { "name": "dominated", "type": "short", "comment": "did killer dominate victim with this kill" }, { "name": "revenge", "type": "short", "comment": "did killer get revenge on victim with this kill" }, { "name": "bonus", "type": "bool", "comment": "did killer kill with a bonus weapon?" }],
	},
	gg_final_weapon_achieved: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID who achieved the final gun game weapon" }],
	},
	gg_bonus_grenade_achieved: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID who achieved the bonus grenade" }],
	},
	switch_team: {
		args: [{ "name": "numPlayers", "type": "short", "comment": "number of active players on both T and CT" }, { "name": "numSpectators", "type": "short", "comment": "number of spectators" }, { "name": "avg_rank", "type": "short", "comment": "average rank of human players" }, { "name": "numTSlotsFree", "type": "short" }, { "name": "numCTSlotsFree", "type": "short" }],
	},
	gg_leader: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID that is currently in the lead" }],
	},
	gg_team_leader: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID that is currently in the lead" }],
	},
	gg_player_impending_upgrade: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player who will be leveling up" }],
	},
	write_profile_data: {
		args: [],
	},
	trial_time_expired: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player whose time has expired" }],
		comment: "fired when a player runs out of time in trial mode"
	},
	update_matchmaking_stats: {
		args: [],
		comment: "Fired when it's time to update matchmaking data at the end of a round."
	},
	player_reset_vote: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "vote", "type": "bool" }],
	},
	enable_restart_voting: {
		args: [{ "name": "enable", "type": "bool" }],
	},
	sfuievent: {
		args: [{ "name": "action", "type": "string" }, { "name": "data", "type": "string" }, { "name": "slot", "type": "byte" }],
	},
	start_vote: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "type", "type": "byte" }, { "name": "vote_parameter", "type": "short" }],
	},
	player_given_c4: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID who received the c4" }],
	},
	gg_reset_round_start_sounds: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID who should have round start sounds reset" }],
	},
	tr_player_flashbanged: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "user ID of the player banged" }],
	},
	tr_mark_complete: {
		args: [{ "name": "complete", "type": "short" }],
	},
	tr_mark_best_time: {
		args: [{ "name": "time", "type": "long" }],
	},
	tr_exit_hint_trigger: {
		args: [],
	},
	bot_takeover: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "botid", "type": "playercontroller" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	tr_show_finish_msgbox: {
		args: [],
	},
	tr_show_exit_msgbox: {
		args: [],
	},
	jointeam_failed: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "reason", "type": "byte", "comment": "0 = team_full" }],
	},
	teamchange_pending: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "toteam", "type": "byte" }],
	},
	material_default_complete: {
		args: [],
	},
	cs_prev_next_spectator: {
		args: [{ "name": "next", "type": "bool" }],
	},
	cs_handle_ime_event: {
		args: [{ "name": "eventtype", "type": "string" }, { "name": "eventdata", "type": "wstring" }],
	},
	nextlevel_changed: {
		args: [{ "name": "nextlevel", "type": "string" }, { "name": "mapgroup", "type": "string" }, { "name": "skirmishmode", "type": "string" }],
		comment: "a game event, name may be 32 characters long"
	},
	seasoncoin_levelup: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "category", "type": "short" }, { "name": "rank", "type": "short" }],
	},
	tournament_reward: {
		args: [{ "name": "defindex", "type": "long" }, { "name": "totalrewards", "type": "long" }, { "name": "accountid", "type": "long" }],
	},
	start_halftime: {
		args: [],
	},
	ammo_refill: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "success", "type": "bool" }],
	},
	parachute_pickup: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	parachute_deploy: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	dronegun_attack: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	drone_dispatched: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "priority", "type": "short" }, { "name": "drone_dispatched", "type": "short" }],
	},
	loot_crate_visible: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player entindex" }, { "name": "subject", "type": "short", "comment": "crate entindex" }, { "name": "type", "type": "string", "comment": "type of crate (metal, wood, or paradrop)" }],
	},
	loot_crate_opened: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player entindex" }, { "name": "type", "type": "string", "comment": "type of crate (metal, wood, or paradrop)" }],
	},
	open_crate_instr: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player entindex" }, { "name": "subject", "type": "short", "comment": "crate entindex" }, { "name": "type", "type": "string", "comment": "type of crate (metal, wood, or paradrop)" }],
	},
	smoke_beacon_paradrop: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "paradrop", "type": "short" }],
	},
	survival_paradrop_spawn: {
		args: [{ "name": "entityid", "type": "short" }],
	},
	survival_paradrop_break: {
		args: [{ "name": "entityid", "type": "short" }],
	},
	drone_cargo_detached: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "cargo", "type": "short" }, { "name": "delivered", "type": "bool" }],
	},
	drone_above_roof: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "cargo", "type": "short" }],
	},
	choppers_incoming_warning: {
		args: [{ "name": "global", "type": "bool" }],
	},
	firstbombs_incoming_warning: {
		args: [{ "name": "global", "type": "bool" }],
	},
	dz_item_interaction: {
		args: [{ "name": "userid", "type": "playercontroller", "comment": "player entindex" }, { "name": "subject", "type": "short", "comment": "crate entindex" }, { "name": "type", "type": "string", "comment": "type of crate (metal, wood, or paradrop)" }],
	},
	survival_teammate_respawn: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	survival_no_respawns_warning: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	survival_no_respawns_final: {
		args: [{ "name": "userid", "type": "playercontroller" }],
	},
	player_ping: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "entityid", "type": "short" }, { "name": "x", "type": "float" }, { "name": "y", "type": "float" }, { "name": "z", "type": "float" }, { "name": "urgent", "type": "bool" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	player_ping_stop: {
		args: [{ "name": "entityid", "type": "short" }],
	},
	player_sound: {
		args: [{ "name": "userid", "type": "playercontroller" }, { "name": "radius", "type": "long" }, { "name": "duration", "type": "float" }, { "name": "step", "type": "bool" }, { "name": "userid_pawn", "type": "strict_ehandle" }],
	},
	guardian_wave_restart: {
		args: [],
	},
	team_intro_start: {
		args: [],
	},
	team_intro_end: {
		args: [],
	}
};

export default data;