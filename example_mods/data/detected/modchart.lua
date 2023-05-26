function onBeatHit()
	if curBeat >= 48 then
		if curBeat % 4 == 2 or curBeat % 4 == 3 or curBeat % 4 == 1 then
			triggerEvent('Add Camera Zoom', '0, 0.015')
		end
	end

	if curBeat == 32 then
		doTweenZoom('zoomy', 'camGame', 2.5, 5, 'smoothStepInOut')
	end
end

elapsedTime = 0

valueY = 15
valueScale = 0.05
mathValue = math.sin
value2 = 0.25
finish = 1280
startAgain = -1280 / 2

function onUpdatePost(elapsed)
	songPos = getSongPosition()
      	currentBeat = (songPos / 1000)*(bpm/60) + elapsed

	for i=0,3 do
		setPropertyFromGroup('playerStrums', i, 'y', _G['defaultPlayerStrumY'..i] + valueY * math.cos((currentBeat + i*value2) * math.pi), i) 
		setPropertyFromGroup('opponentStrums', i, 'y', _G['defaultOpponentStrumY'..i] + valueY * math.cos((currentBeat + i*value2) * math.pi), i) 

		setPropertyFromGroup('playerStrums', i, 'scale.x', 0.7 - valueScale * math.sin((currentBeat + i*value2) * math.pi), i) 
		setPropertyFromGroup('playerStrums', i, 'scale.y', 0.7 - valueScale + 0.05 * math.cos((currentBeat + i*value2) * math.pi), i) 

		setPropertyFromGroup('opponentStrums', i, 'scale.x', 0.7 - valueScale * math.sin((currentBeat + i*value2) * math.pi), i) 
		setPropertyFromGroup('opponentStrums', i, 'scale.y', 0.7 - valueScale + 0.05 * math.cos((currentBeat + i*value2) * math.pi), i) 
	end

	setPropertyFromClass('PlayState', 'introSoundsSuffix', '-detected')
end