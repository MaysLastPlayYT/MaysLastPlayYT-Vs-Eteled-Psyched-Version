local glitchChance = 0;
function onCreate()
    if not lowQuality then
		precacheImage('characters/austinglitch_assets');--performance shit
    end
	-- background shit
	makeLuaSprite('stageback', 'eteled/glitchhallway', -360, -210);
	addLuaSprite('stageback', false);
end

function onStepHit()
	if not lowQuality then
		glitchChance = getRandomInt(0, 20);
		
		if glitchChance == 7 then
			if dadName == 'austin' then
			triggerEvent('Change Character', 'dad', 'austin-glitch');
			runTimer('AustinGlitch', 0.5); 	
		    end
		end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if not lowQuality then
	    if tag == 'AustinGlitch' then
	    	triggerEvent('Change Character', 'dad', 'austin');
	    end
    end
end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('camFollow.x', 657.81);
        setProperty('camFollow.y', 400.56);     	
    else if focus == 'boyfriend' then
        setProperty('camFollow.x', 1176.3);
        setProperty('camFollow.y', 515.87);    
        end
    end      
end