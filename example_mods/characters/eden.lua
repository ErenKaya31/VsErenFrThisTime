function onUpdatePost(elapsed)
	health = getProperty('health') / 2
	if health >= 0.8 then
		setProperty('iconP2.x', getProperty('iconP2.x') + getRandomInt(10, -10))
	end
end