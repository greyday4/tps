tickpersecond = 0

Network:Subscribe("TPS", function(tps)
	tickpersecond = tps
end)

Events:Subscribe("PostRender", function()
	Render:DrawText(Vector2(Render.Size.x * 0.965, Render.Size.y * 0.033), "TPS: ".. tickpersecond, Color.White)
end)