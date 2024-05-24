fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'
lua54 'yes'

-- Initial Convertion from C# to lua by grumpypoo
author 'Darky_13'
description 'An outfit item based system'
repository 'https://github.com/Dark-Edge/Vorp_Outfit'

client_script {
	'@vorp_core/client/dataview.lua',
	'client/*.lua'
}

server_script {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}


--[[========= VERSION =============--

version '1.0'
vorp_checker 'yes'
vorp_name '^4Resource version Check^3'
github 'https://github.com/Dark-Edge/Vorp_Outfit'

-- this script is protected under its license. --]]