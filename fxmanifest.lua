fx_version 'adamant'

game 'gta5'


client_script {
	'clientti.lua',
	'config.lua'
}
server_script {
	'@mysql-async/lib/MySQL.lua',
	'serveria.lua',
	'config.lua'
}
