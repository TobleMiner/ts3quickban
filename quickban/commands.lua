local function banLastChannel()
	obj = quickban_getClient.lastChannel()
	if(obj ~= nil) then
		ts3.banclient(obj.sid, obj.cid, 0, "Banned by tSYS quickban")
	else
		me = ts3.getClientID(quickban_sid)
		ts3.requestSendPrivateTextMsg(quickban_sid, "Ban-queue empty", me)
	end
end

local function banLastServer()
	obj = quickban_getClient.lastServer()
	if(obj ~= nil) then
		ts3.banclient(obj.sid, obj.cid, 0, "Banned by tSYS quickban")
	else
		me = ts3.getClientID(quickban_sid)
		ts3.requestSendPrivateTextMsg(quickban_sid, "Ban-queue empty", me)
	end
end

quickban =
{
	banLastChannel = banLastChannel,
	banLastServer = banLastServer
}