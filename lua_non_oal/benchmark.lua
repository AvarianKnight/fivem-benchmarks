
CreateThread(function()
	local interationCount = 1000000

	ProfilerEnterScope("Natives")

	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

	for i = 1, interationCount do
		DrawMarker(0xD6445746, coords, 0, 0, 0, 0, 0, 0, 0.3, 0.2, 0.15, 150, 30, 30, 222, false, false, 0, true, nil, nil, false)
	end

	ProfilerExitScope()

	ProfilerEnterScope("Concat")

	local a = ""
	for i = 1, interationCount do
		a = a .. "a"
	end

	ProfilerExitScope()

	-- don't include in the actual benchmark
	local x = math.random() * 12000 - 6000
	local y = math.random() * 12000 - 6000
	local z = math.random() * 12000 - 6000

	local x2 = math.random() * 12000 - 6000
	local y2 = math.random() * 12000 - 6000
	local z2 = math.random() * 12000 - 6000

	ProfilerEnterScope("Vector2 Math")

	local pos1 = vector2(x, y)
	local pos2 = vector2(x, y)

	for i = 1, interationCount do
		local dist = #(pos1 - pos2)
	end

	ProfilerExitScope()

	ProfilerEnterScope("Vector3 Math")


	local pos1 = vector3(x, y, z)
	local pos2 = vector3(x, y, z)

	for i = 1, interationCount do
		local dist = #(pos1 - pos2)
	end

	ProfilerExitScope()

end)
