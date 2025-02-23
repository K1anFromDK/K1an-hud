fx_version('cerulean')
games({ 'gta5' })
lua54 'yes'

author 'K1anFromDK - K1an Scripts'

shared_scripts {
    '@ox_lib/init.lua'
}

server_scripts({
    'server.lua'
});

client_scripts({
    'client.lua'
});

ui_page 'web/index.html'

files{
    'web/index.html',
}