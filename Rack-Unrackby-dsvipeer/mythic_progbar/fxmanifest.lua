fx_version 'bodacious'
games { 'gta5' }

ui_page('html/index.html') 

client_scripts {
    'client/main.lua'
}

files {
    'html/index.html',
    'html/css/style.css',
    'html/js/script.js'
}

exports {
    'Progress',
    'ProgressWithStartEvent',
    'ProgressWithTickEvent',
    'ProgressWithStartAndTick'
}