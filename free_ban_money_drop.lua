util.require_natives("1640181023")

money_drop_delay = 0
menu.slider(menu.my_root(), "Money Drop Delay", {}, "", 0, 10000, 0, 10, function(action)
    money_drop_delay = action
end)

menu.toggle(menu.my_root(), "Money Drop", {}, "", function(toggle) f = toggle
	while f do
		STREAMING.REQUEST_MODEL(289396019)
		while not STREAMING.HAS_MODEL_LOADED(289396019) do
			util.yield()
		end
		local P = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
		OBJECT.CREATE_AMBIENT_PICKUP(3463437675, P.x, P.y, P.z, 0, 2000, 289396019, 0, 1)
		util.yield(money_drop_delay)
	end
	STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(289396019)
end)

util.keep_running()