fx_version 'cerulean'
games { 'gta5' }

author 'HenkW'
description 'Simple announcement script with multiple notify support'
version '1.5.0'

server_scripts {
    'server/main.lua',
    'server/version.lua'
}

client_scripts {
    'client/main.lua'
}

shared_scripts {
    'config.lua',
    '@es_extended/imports.lua'
}