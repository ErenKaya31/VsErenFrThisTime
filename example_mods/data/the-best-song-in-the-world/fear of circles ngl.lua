elapsedtime = 0
function onUpdatePost(elapsed)
	elapsedtime = elapsedtime + elapsed

		for i = 0, 4, 1 do
			if getPropertyFromGroup('playerStrums', i, 'ID') == 1 then
				setPropertyFromGroup('playerStrums', i, 'x', defaultPlayerStrumX2)
			elseif getPropertyFromGroup('playerStrums', i, 'ID') == 2 then
				setPropertyFromGroup('playerStrums', i, 'x', defaultPlayerStrumX1)
			else
				setPropertyFromGroup('playerStrums', i, 'x', getPropertyFromGroup('playerStrums', i, 'x'))
			end

			setPropertyFromGroup('playerStrums', i, 'y', ((screenHeight / 2) - (getPropertyFromGroup('playerStrums', i, 'height')) / 2) + ((math.sin((elapsedtime + getPropertyFromGroup('playerStrums', i, 'ID')) * (((curBeat % 6) + 1) * 0.6))) * 140))

			if getPropertyFromGroup('opponentStrums', i, 'ID') == 1 then
				setPropertyFromGroup('opponentStrums', i, 'x', defaultOpponentStrumX2)
			elseif getPropertyFromGroup('opponentStrums', i, 'ID') == 2 then
				setPropertyFromGroup('opponentStrums', i, 'x', defaultOpponentStrumX1)
			else
				setPropertyFromGroup('opponentStrums', i, 'x', getPropertyFromGroup('opponentStrums', i, 'x'))
			end

			setPropertyFromGroup('opponentStrums', i, 'y', ((screenHeight / 2) - (getPropertyFromGroup('opponentStrums', i, 'height')) / 2) + ((math.sin((elapsedtime + getPropertyFromGroup('opponentStrums', i, 'ID')) * (((curBeat % 6) + 1) * 0.6))) * 140))
		end
end