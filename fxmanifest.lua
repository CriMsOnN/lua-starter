game 'gta5'

fx_version 'cerulean'

lua54 'yes'

client_scripts {
	"client/cl_main.lua"
}

shared_scripts {
	"shared/config.lua"
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	"server/sv_main.lua"
}