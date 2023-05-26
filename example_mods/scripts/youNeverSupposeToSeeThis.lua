function onUpdatePost(elapsed)
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F4') and songName == 'Pizzatistic' then
		runTimer('start', 1, 1)
		cameraFade('camOther', 'FFFFFF', 1)
		cameraShake('camHUD', 0.015, 1)
		cameraShake('camGame', 0.015, 1)
		return Function_Stop
	end

	screenCenter('timeBar', 'x')
	screenCenter('timeBarBG', 'x')
	
	setProperty('rating.x', 1000)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'start' then
		loadSong('paused')
	end
end

function onCreatePost()
	setProperty('showCombo', true)
end