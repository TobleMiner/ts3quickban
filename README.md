ts3quickban
===========

A small lua script to ban the last users that entered a channel/connected to the server. Written for admins of public TS3 servers.


Setup
-----

1. Enable the TeamSpeak Lua Plugin. Settings -> Plugins -> Lua Plugin
2. Copy the folder 'quickban' into the directory 'TS3 base directory/plugins/lua_plugin'
3. Quickban provides 1 namespace containing 2 functions: quickban.banLastChannel and quickban.banLastServer
4. To make the quickban really work you should bind those commands to hotkeys. This can be done via Settings -> Options -> Hotkeys . Just configure a new hotkey, click on advanced and select Plugins -> Run plugin command and enter '/lua run quickban.banLastChannel' to add a hotkey for banning the last user that joined your channel or '/lua run quickban.banLastServer' to have a hotkey for banning the last user that joined your server
5. Restart TS
6. Profit!