util.require_natives("1640181023")

menu.toggle(menu.my_root(), "Everyone Ignore", {}, "", function(toggle) f = toggle
	while f do
		PLAYER.SET_EVERYONE_IGNORE_PLAYER(players.user(), true)
		util.yield(3000)
	end
	PLAYER.SET_EVERYONE_IGNORE_PLAYER(players.user(), false)
end)

menu.toggle(menu.my_root(), "Cops Ignore", {}, "", function(toggle) f = toggle
	while f do
		PLAYER.SET_POLICE_IGNORE_PLAYER(players.user(), true)
		util.yield(3000)
	end
	PLAYER.SET_POLICE_IGNORE_PLAYER(players.user(), false)
end)

util.keep_running()