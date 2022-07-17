function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'eteled/corruptback', -550, -230);
	makeLuaSprite('hallwayback', 'eteled/glitchhallway2ndsong', -350, -230);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeAnimatedLuaSprite('stagecurtains', 'eteled/Glitchmiibuttons', -449, -299);
	    addAnimationByPrefix('stagecurtains', 'bop', 'stagecurtains', 24, true);
	    objectPlayAnimation('stagecurtains', 'bop');
		setScrollFactor('stagecurtains', 1.17, 1.17);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagecurtains', true);
end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('camFollow.x', 689);
	    setProperty('camFollow.y', 501.62);
    else if focus == 'boyfriend' then
        setProperty('camFollow.x', 1056);
        setProperty('camFollow.y', 510.69);       
    end        
    end
end

function onStepHit()
	if curStep == 448 then
		playSound('Glitch-Transition-Sound-Effect');
		if not lowQuality then
			removeLuaSprite('stagecurtains', false);
		end
        removeLuaSprite('stageback', false);
        addLuaSprite('hallwayback', false);
	else if curStep == 575 then
		playSound('Glitch-Transition-Sound-Effect');
		--if not lowQuality then
			--addLuaSprite('stagecurtains', false);
		--end idk why is not working
        addLuaSprite('stageback', false);
        removeLuaSprite('hallwayback', false);
        addLuaSprite('stagecurtains', true);
	end
    end
end