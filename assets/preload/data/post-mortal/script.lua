local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('3');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

local allowEndShit = false;

function onEndSong()
	if not allowEndShit and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('4');
		allowEndShit = true;
		return Function_Stop;
	end
	return Function_Continue;
end