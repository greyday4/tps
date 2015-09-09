timer = Timer()
numTicks = 0
 
function Foo(args)
	numTicks = numTicks + 1
	if timer:GetSeconds() > 1 then
		Network:Broadcast("TPS", numTicks)
		timer:Restart()
		numTicks = 0
	end
end
 
Events:Subscribe("PreTick", Foo)