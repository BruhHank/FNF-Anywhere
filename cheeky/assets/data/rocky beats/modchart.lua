function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
end

function setDefault(id)
	_G['defaultStrum'..id..'X'] = getActorX(id)
end

function update (elapsed)

end
function beatHit (beat)

end

function stepHit (step)
	-- do nothing
end

function keyPressed (key)
	-- do nothing
end

print("HI")
print("Mod Chart script loaded :)")