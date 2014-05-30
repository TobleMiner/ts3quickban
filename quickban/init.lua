--(c) by Tobias Schramm 2014

require("ts3init")
require("quickban/events")
require("quickban/commands")

local MODULE_NAME = "quickban"
ts3RegisterModule(MODULE_NAME, quickban_events)

