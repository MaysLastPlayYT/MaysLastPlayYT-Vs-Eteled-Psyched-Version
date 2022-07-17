function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'eteled/blackback', -550, -230);
	addLuaSprite('stageback', false);
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

function onBeatHit()
	objectPlayAnimation('stagecurtains', 'bop')
end