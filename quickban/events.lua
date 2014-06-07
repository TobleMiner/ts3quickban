local channel = {}
local server = {}
quickban_sid = nil

--events
local function onClientMove(serverConnectionHandlerID, clientID, oldChannelID, newChannelID, visibility, moveMessage)
	me = ts3.getClientID(serverConnectionHandlerID)
	if(clientID ~= me) then
		if(oldChannelID == 0) then
			obj = {}
			obj.cid = clientID
			obj.sid = serverConnectionHandlerID
			table.insert(server, obj)
		else
			if(ts3.getChannelOfClient(serverConnectionHandlerID, clientID) == ts3.getChannelOfClient(serverConnectionHandlerID, me)) then
				obj = {}
				obj.cid = clientID
				obj.sid = serverConnectionHandlerID
				table.insert(channel, obj)
			end
		end
	else
		quickban_sid = serverConnectionHandlerID
	end		
end

--getters
local function popLastJoinedChannel()
	return table.remove(channel)
end

local function popLastJoinedServer()
	return table.remove(server)
end

--exports
quickban_getClient =
{
	lastChannel = popLastJoinedChannel,
	lastServer = popLastJoinedServer
}

quickban_events =
{
	onClientMoveEvent = onClientMove
}