--[[
 	GunGame NS2 Mod
	ZycaR (c) 2016
]]

-- Server & Client tweaks
ModLoader.SetupFileHook("lua/Player.lua", "lua/gg_PlayerNetVars.lua", "post")
ModLoader.SetupFileHook("lua/NanoShieldMixin.lua", "lua/gg_NanoShieldMixin.lua", "post")

-- GUI & HUD tweaks

-- Outline for power-ups
ModLoader.SetupFileHook("lua/GUIPickups.lua", "lua/gg_gui/GUIPickupsHooks.lua", "post")

-- Hide "NO COMMANDER" text
ModLoader.SetupFileHook("lua/GUIMinimapFrame.lua", "lua/gg_GUIMinimapFrame.lua", "post" )
ModLoader.SetupFileHook("lua/Hud/Marine/GUIMarineHUD.lua", "lua/gg_gui/GUIMarineHUDHooks.lua", "post")
ModLoader.SetupFileHook("lua/Player_Client.lua", "lua/gg_Player_ClientHooks.lua", "post")

-- bots
ModLoader.SetupFileHook("lua/bots/PlayerBot.lua", "lua/bots/gg_bot_PlayerBot.lua", "post")

-- various fixes for errors
ModLoader.SetupFileHook("lua/bots/PlayerBrain.lua", "lua/gg_ns2fix/gg_PlayerBrain.lua", "post")
ModLoader.SetupFileHook("lua/Weapons/Marine/Railgun.lua", "lua/gg_ns2fix/gg_Railgun.lua", "post")
ModLoader.SetupFileHook("lua/GUI/GUIObject.lua", "lua/gg_ns2fix/gg_GUIObject.lua", "replace")
ModLoader.SetupFileHook("lua/ClientUI.lua", "lua/gg_ns2fix/gg_ClientUI.lua", "replace")
ModLoader.SetupFileHook("lua/ConcedeSequence.lua", "lua/gg_ns2fix/gg_ConcedeSequence.lua", "post")

-- Hide the top bar
ModLoader.SetupFileHook("lua/Hud2/topBar/GUIHudTopBarForLocalTeam.lua", "lua/gg_ns2fix/gg_TopBar.lua", "post")

--Health regen
ModLoader.SetupFileHook("lua/Marine.lua", "lua/gg_Marine.lua", "post" )
ModLoader.SetupFileHook("lua/CatPack.lua", "lua/gg_CatPack.lua", "post" )
ModLoader.SetupFileHook("lua/Balance.lua", "lua/gg_Balance.lua", "post" )