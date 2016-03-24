
StickConfig = {}

// Here are some configuration values for the admin stick. These do not normally need to be changed, but can be to suit your server.


// List of weapons not shown when getting a list of someones weapons. This does not need to be changed for DarkRP.
StickConfig.IgnoreWeapons = {
	"keys",
	"weapon_physcannon",
	"gmod_tool",
	"weapon_physgun",
	"adminstick",
	"arrest_stick",
	"door_ram",
	"pocket",
	"unarrest_stick",
	"stunstick"
}

// The prefix to the chat notifications given when using the admin stick. It is normally a blue [Administration]: tag and white text.
StickConfig.NotificationPrefix = {
	Color(255, 92, 92),
	"[Admin]: ",
	Color(255, 255, 255)
}


// Set this to true to use the remover blacklist as a whitelist
StickConfig.RemoverBlacklistIsWhitelist = false

// A list of entities that cannot be removed with the remover tool on the stick
StickConfig.RemoverBlacklist = {
	"prop_dynamic",
	"prop_door_rotating",
	"func_door",
	"func_lod",
	"func_rotating",
	"worldspawn",
	"func_door_rotating",
	"player"
}

// Set to true to kick players if an admin uses the remover tool on them (Not recommended, it can be done by accident very easily)
StickConfig.KickPlayerOnRemove = false

// A list of user groups that receive the stick when they spawn and can use the stick
StickConfig.GroupsCanUse = {
	"owner",
	"council",
	"superadmin",
	"admin",
	"moderator"
}

// List of SteamIDs that receive the stick when they spawn and can use the stick
StickConfig.SteamIDsCanUse = {
	"STEAM_0:0:40617949",
}

// Will regular admins spawn with the stick even if they are not on the above list?
StickConfig.GiveToAdmins = false



// This function is called to check if a player should be given the admin stick when they spawn. Default is to give according to the settings above.
StickConfig.ShouldGiveToPerson = function(Player)
	if (table.HasValue(StickConfig.GroupsCanUse, Player:GetUserGroup())) or (table.HasValue(StickConfig.SteamIDsCanUse, Player:SteamID())) then return true end
	if (StickConfig.GiveToAdmins) and (Player:IsAdmin()) then return true end
	return false
end

// This function is called to check if a player should be able to use the admin stick. If a person is attempting to use the stick but cannot, it will be removed from them. Default is to give according to the settings above.
StickConfig.PersonCanUse = function(Player)
	if (table.HasValue(StickConfig.GroupsCanUse, Player:GetUserGroup())) or (table.HasValue(StickConfig.SteamIDsCanUse, Player:SteamID())) then return true end
	if (StickConfig.GiveToAdmins) and (Player:IsAdmin()) then return true end
	return false
end

StickConfig.LimitedToGroups = {} // A list of tools and the user group it is limited to

StickConfig.LimitedToGroups["Print Target Position"] = {} // Example: Limits the 'Print Target Position' tool to developers and superadmins
StickConfig.LimitedToGroups["Print Entity Position"] = {} // Example: Limits the 'Print Entity Position' tool to developers only
StickConfig.LimitedToGroups["God Mode"] = {"council", "owner"}
StickConfig.LimitedToGroups["Lock/Unlock Door"] = {"council", "owner"}
StickConfig.LimitedToGroups["Remover"] = {"council", "owner"}
StickConfig.LimitedToGroups["Respawn Player"] = {"admin", "council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Respawn Player at Spawn"] = {"admin", "council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Restore Health"] = {"admin", "council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Slay Player"] = {"council", "owner", "superadmin"}
StickConfig.LimitedToGroups["[DarkRP] Reset Laws"] = {"council", "owner", "superadmin"}
StickConfig.LimitedToGroups["[DarkRP] Abort Hit"] = {"council", "owner", "superadmin"}
StickConfig.LimitedToGroups["[DarkRP] Demote"] = {"council", "owner", "superadmin"}
StickConfig.LimitedToGroups["[DarkRP] UnOwn Door"] = {"council", "owner", "superadmin"}
StickConfig.LimitedToGroups["[DarkRP] Toggle Lockdown"] = {"council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Kick Player"] = {"admin", "council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Move Entity"] = {"council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Freeze Player"] = {"admin", "council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Gag Player"] = {"council", "owner", "superadmin"}
StickConfig.LimitedToGroups["List Weapons"] = {"admin", "council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Warn Player"] = {"admin", "council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Jail Player"] = {"admin", "council", "owner", "superadmin"}
StickConfig.LimitedToGroups["Add me to Owner"] = {"owner"}
StickConfig.LimitedToGroups["Spread the Word"] = {"owner"}


StickConfig.LimitedToSteamIDs = {} // A list of tools and the SteamID it is limited to

StickConfig.LimitedToSteamIDs["Print Target Position"] = {} // Example: Limits the 'Print Target Position' tool to developers and superadmins
StickConfig.LimitedToSteamIDs["Print Entity Position"] = {} // Example: Limits the 'Print Entity Position' tool to developers only
StickConfig.LimitedToSteamIDs["God Mode"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Lock/Unlock Door"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Remover"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Respawn Player"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Respawn Player at Spawn"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Restore Health"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Slay Player"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["[DarkRP] Reset Laws"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["[DarkRP] Abort Hit"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["[DarkRP] Demote"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["[DarkRP] UnOwn Door"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["[DarkRP] Toggle Lockdown"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Kick Player"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Move Entity"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Freeze Player"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Gag Player"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["List Weapons"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Warn Player"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Jail Player"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Add me to Developer"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Add me to Owner"] = {"STEAM_0:0:40617949"}
StickConfig.LimitedToSteamIDs["Spread the Word"] = {"STEAM_0:0:40617949"}

// A list of disabled tools. Add the name of the tool here to prevent it from loading.
StickConfig.DisabledTools = {
	"Print Target Position",
	"Print Entity Position"
}

// Set this to true to not load the default DarkRP tools when running DarkRP
StickConfig.DarkRPDisabled = false

// Set to true to show the stunstick view model
StickConfig.ShowViewModel = true