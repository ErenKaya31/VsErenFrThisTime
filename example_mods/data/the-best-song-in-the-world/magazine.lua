local allowCountdown = false
local videoName = 'eden_cutscene'

function onStartCountdown()
 if not allowCountdown and not seenCutscene then
  startVideo(videoName)
  allowCountdown = true
  return Function_Stop
 end
 return Function_Continue
end -- I HATE NI-