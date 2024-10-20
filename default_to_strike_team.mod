return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`default_to_strike_team` encountered an error loading the Darktide Mod Framework.")

		new_mod("default_to_strike_team", {
			mod_script       = "default_to_strike_team/scripts/mods/default_to_strike_team/default_to_strike_team",
			mod_data         = "default_to_strike_team/scripts/mods/default_to_strike_team/default_to_strike_team_data",
			mod_localization = "default_to_strike_team/scripts/mods/default_to_strike_team/default_to_strike_team_localization",
		})
	end,
	packages = {},
}
