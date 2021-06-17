local normal1 = false
local normal2 = false

local lockzoom = false
local swayingsmall = false
local swayinglarge = false
local swayingbigger = false
local swayingbiggest = false

local camerabeat = false

function start (song)
	RedBG = makeSprite('RedBG','redbg', true)
	WhiteBG = makeSprite('WhiteBG','whitebg', true)
	BlackFade = makeSprite('BlackFade','blackfade', false)
	setActorX(50,'redbg')
	setActorY(450,'redbg')
	setActorAlpha(0,'redbg')
	setActorScale(2,'redbg')
	setActorX(200,'whitebg')
	setActorY(500,'whitebg')
	setActorAlpha(0,'whitebg')
	setActorScale(2,'whitebg')
	setActorX(200,'blackfade')
	setActorY(500,'blackfade')
	setActorAlpha(0,'blackfade')
	setActorScale(2,'blackfade')
end

function update (elapsed)
local currentBeat = (songPos / 1000)*(bpm/60)
	if lockzoom then
		setCamZoom(1)
	end
	if swayingsmall then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
	end
	if swayinglarge then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
	end
	if swayingbigger then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*5) * math.pi) ,i)
		end
	end
	if swayingbiggest then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat + i*5) * math.pi),i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
			setActorY(_G['defaultStrum'..i..'Y'] - 64 * math.cos((currentBeat + i*5) * math.pi),i)
		end
	end
end


function beatHit (beat)
	if camerabeat then
		setCamZoom(1)
	end
end

function stepHit (step)
	if step == 1 then
	end
	if step == 216 then
		tweenFadeIn('girlfriend',0,0.01)
		tweenFadeIn(WhiteBG,1,0.01)
		showOnlyStrums = true
		setCamZoom(2)
		swayingsmall = true	
	end
	if step == 217 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 218 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 219 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 220 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 222 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 224 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,0,0.01)
		tweenFadeIn('girlfriend',1,0.01)
		setCamZoom(2)
		camerabeat = true
	end
	if step == 988 then
	swayingsmall = false
	camerabeat = false
		for i=0,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'], 0, 0.6, 'setDefault')
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end	
	end
	if step == 1244 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		swayinglarge = true
	end
	if step == 1245 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 1246 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 1247 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 1248 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
		camerabeat = true
	end
	if step == 2012 then
		swayinglarge = false
		camerabeat = false
		for i=0,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'], 0, 0.6, 'setDefault')
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end	
	end
	if step == 2395 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		swayingbigger = true
	end
	if step == 2396 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 2397 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 2398 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 2399 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 2400 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
		camerabeat = true
	end
	if step == 2656 then
		swayingbigger = false
		swayingbiggest = true
	end
	if step == 2912 then
		tweenFadeIn('dad',0,0.6)
		camerabeat = false
		swayingbiggest = false
		for i=0,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'], 0, 0.6, 'setDefault')
			tweenPosYAngle(i, _G['defaultStrum'..i..'Y'], 0, 0.6, 'setDefault')
		end
	end
	if step == 2928 then
		tweenFadeIn(BlackFade,1,0.6)
	end
	if step == 2956 then
		tweenFadeIn(BlackFade,0,0.4)
		tweenFadeIn('dad',1,0.4)
	end
	if step == 2960 then
		setCamZoom(2)
	end
	if step == 2962 then
		setCamZoom(2)
	end
	if step == 2964 then
		setCamZoom(2)
	end
	if step == 2966 then
		setCamZoom(2)
	end
	if step == 2968 then
		setCamZoom(2)
	end
	if step == 2969 then
		setCamZoom(2)
	end
	if step == 2970 then
		setCamZoom(2)
	end
	if step == 2971 then
		setCamZoom(2)
	end
	if step == 2972 then
		setCamZoom(2)
	end
	if step == 2973 then
		setCamZoom(2)
	end
	if step == 2974 then
		setCamZoom(2)
	end
	if step == 2975 then
		setCamZoom(2)
	end
	if step == 2976 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
		swayingbigger = true
	end
	if step == 2977 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 2978 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 2979 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 2980 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 2981 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 2982 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 2983 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 2984 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 2985 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 2986 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 2987 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 2988 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 2989 then
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		setCamZoom(2)
	end
	if step == 2990 then
		tweenFadeIn(WhiteBG,0,0.01)
		tweenFadeIn(RedBG,1,0.01)
		setCamZoom(2)
	end
	if step == 2991 then
		camerabeat = true
	end
	if step == 4016 then
		swayingbigger = false
		swayingbiggest = true
	end
	if step == 4272 then
		swayingbiggest = false
		camerabeat = false
		tweenFadeIn(WhiteBG,1,0.01)
		tweenFadeIn(RedBG,0,0.01)
		tweenFadeIn('girlfriend',0,0.01)
		tweenFadeIn('dad',0,0.4)
		showOnlyStrums = false
		for i=0,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'], 0, 0.6, 'setDefault')
			tweenPosYAngle(i, _G['defaultStrum'..i..'Y'], 0, 0.6, 'setDefault')
		end
	end
	if step == 4276 then
		tweenFadeIn(WhiteBG,0,1)
		tweenFadeIn('girlfriend',1,1)
	end
	if step == 4288 then
		tweenFadeIn(BlackFade,1,1)
	end
end