fx_version 'cerulean'
games { 'gta5' }

author 'HenkW'
description 'Simple announcement script with okok, mythic, chat and esx notify support'
version '1.0.3'

server_scripts {
    'server/main.lua',
    'server/version.lua'
}

client_scripts {
    'client/main.lua'
}

shared_scripts {
    'config.lua'
}

shared_script '@es_extended/imports.lua'