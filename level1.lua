module(..., package.seeall)


new = function ( params )


local localGroup = display.newGroup()

local physics = require("physics")

local calcScore = require("calcScore")

local popUpEnd = require("popUpEnd")

local insertScore = require("insertScore")

local PP_params = {world = 1, level = 1}


local timeValue = 0

tmr = nil

local ui = require("ui")

--print(display.contentWidth)

--print(display.contentHeight)

physics.start()

--physics.setDrawMode( "hybrid" )

if background == nil then

	print("ok")

end

if music == nil then

	bgMusic = audio.loadStream("song.mp3")

	bgMusicChannel = audio.play( bgMusic, { loops=-1})
	
	audio.fade({ channel=1, time=0, volume=0.2 } )

	audio.fade({ channel=1, time=3000, volume=0.5 } )

	--local availableChannel = audio.findFreeChannel()
	--audio.play( backgroundMusic, { channel=availableChannel, lopps = -1 } )

	music = 1

end

local background = display.newImage("bg.png")

background:setReferencePoint(display.TopLeftReferencePoint)

background.x = 0

background.y = 0

background.xScale = display.contentWidth / background.contentWidth

background.yScale = display.contentHeight / background.contentHeight

--localGroup:insert(background)

--background.xScale = 1.78

--background.yScale = 1.78

local dietro = display.newGroup()

local oggetti = display.newGroup()

local palla = display.newGroup()

local btns = display.newGroup()

dietro:insert(background)

local accNumber = 0

local points = display.newText( accNumber, 35, 12, native.systemFont, 35 )

points:setReferencePoint(display.TopLeftReferencePoint)

points.x = 0

points.y = 0

points:setTextColor(255, 32 ,25)

--localGroup:insert(points)

dietro:insert(points)

local muro_sx = display.newRect(0, 0, 1, display.contentHeight)

--localGroup:insert(muro_sx)

local muro_dx = display.newRect(display.contentWidth, 0, 1, display.contentHeight)

--localGroup:insert(muro_dx)

muro_dx:setReferencePoint(display.TopLeftReferencePoint)

physics.addBody(muro_sx, "static",{bounce = 0.3, friction = 0.5})

physics.addBody(muro_dx, "static",{bounce = 0.3, friction = 0.5})

dietro:insert(muro_sx)

dietro:insert(muro_dx)

local physicsData = (require "universal").physicsData()

local pinguino = display.newImage("pinguino.png")

pinguino:setReferencePoint(display.CenterReferencePoint)

pinguino.x = 105

pinguino.y = 88

pinguino.rotation = 105

--localGroup:insert(pinguino)

palla:insert(pinguino)

physics.addBody(pinguino, physicsData:get("pinguino"))

local p_1 = display.newImage("p_1.png")

p_1:setReferencePoint(display.CenterReferencePoint)

p_1.x = 125

p_1.y = 188

p_1.rotation = 23

p_1.type = "p_1"

--localGroup:insert(p_1)

oggetti:insert(p_1)

physics.addBody(p_1, "static", physicsData:get("p_1"))

local p_2 = display.newImage("p_3.png")

p_2.x = 285

p_2.y = 205

p_2.type = "p_2"

--localGroup:insert(p_2)

oggetti:insert(p_2)

physics.addBody(p_2, "static", physicsData:get("p_3"))

local p_3 = display.newImage("p_2.png")

p_3.x = 437

p_3.y = 90

p_3.rotation = 190

p_3.type = "p_3"

--localGroup:insert(p_3)

oggetti:insert(p_3)

physics.addBody(p_3, "static", physicsData:get("p_2"))

local p_4 = display.newImage("p_4.png")

p_4.x = 558

p_4.y = 218

p_4.rotation = -105

p_4.type = "p_4"

--localGroup:insert(p_4)

physics.addBody(p_4, "static", physicsData:get("p_4"))

oggetti:insert(p_4)

local p_5 = display.newImage("p_4.png")

p_5.x = 585

p_5.y = 363

p_5.rotation = -95

p_5.type = "p_5"

--localGroup:insert(p_5)

physics.addBody(p_5, "static", physicsData:get("p_4"))

oggetti:insert(p_5)

local p_6 = display.newImage("p_4.png")

p_6.x = 590

p_6.y = 512

p_6.rotation = -88

p_6.type = "p_6"

--localGroup:insert(p_6)

physics.addBody(p_6, "static", physicsData:get("p_4"))

oggetti:insert(p_6)

local p_7 = display.newImage("p_4.png")

p_7.x = 578

p_7.y = 660

p_7.rotation = -83

p_7.type = "p_7"

--localGroup:insert(p_7)

physics.addBody(p_7, "static", physicsData:get("p_4"))

oggetti:insert(p_7)

local p_8 = display.newImage("p_2.png")

p_8.x = 487

p_8.y = 810

p_8.rotation = -25

p_8.type = "p_8"

--localGroup:insert(p_8)

physics.addBody(p_8, "static", physicsData:get("p_2"))

oggetti:insert(p_8)

local p_9 = display.newImage("p_10.png")

p_9.x = 320

p_9.y = 805

p_9.rotation = 20

p_9.type = "p_9"

--localGroup:insert(p_9)

physics.addBody(p_9, "static", physicsData:get("p_10"))

oggetti:insert(p_9)

local p_10 = display.newImage("p_5r.png")

p_10.x = 180

p_10.y = 718

p_10.rotation = 20

p_10.type = "p_10"

--localGroup:insert(p_10)

physics.addBody(p_10, "static", physicsData:get("p_5r"))

oggetti:insert(p_10)

local meta = display.newImage("meta.png")

meta.x = 190

meta.y = 504

meta.type = "meta"

--localGroup:insert(meta)

physics.addBody(meta, "static")

oggetti:insert(meta)

local acc = display.newImage("acc.png")

acc.x = 55

acc.y = 909

--localGroup:insert(acc)

btns:insert(acc)

local pause = display.newImage("pause.png")

pause:setReferencePoint(display.TopRightReferencePoint)

pause.x = display.contentWidth - 10

pause.y = 10

btns:insert(pause)

local i = 0

local num = 0

local bo = 0

local incr = 0

--[[function rotazione(event)

	local pinguino_rot = math.ceil(pinguino.rotation)

	--print(pinguino.rotation)
	--print(pinguino_rot)
	if (bo == 0) then

		--print(pinguino_rot)

		--print(i)

		if ((pinguino_rot <=360) and (pinguino_rot >=0)) then
	
			num = pinguino_rot

			bo = 1

		else

			i = i + 360

			if (i>pinguino_rot) then

				--print ("ciao1")

				i = i -360

				num = pinguino_rot - i

				bo = 1
				
			end
		end
	else

		--print ("ciao")

		--print (num)

		--print (incr)

		if (incr >= num) then

			Runtime:removeEventListener("enterFrame", rotazione)

		else
		
			pinguino.rotation = pinguino.rotation - 1

			incr = incr + 1

		end
	end
	
end

]]--

--local number = 0

--local i = 0

local zone = "z0"

function collisioni2(event)

	if (event.phase == "began") then

		--print(i%3)

		local type = event.other.type 

		if(type == "p_1") then

			zone = "z1"

		elseif(type == "p_2") then

			zone = "z2"

		elseif(type == "p_3") then

			zone = "z3"

		elseif(type == "p_4") then

			zone = "z4"

		elseif(type == "p_5") then

			zone = "z5"

		elseif(type == "p_6") then

			zone = "z6"
	
		elseif(type == "p_7") then

			zone = "z7"

		elseif(type == "p_8") then

			zone = "z8"

		elseif(type == "p_9") then

			zone = "z9"

		elseif(type == "p_10") then

			zone = "z10"

		elseif(type == "p_11") then

			zone = "z11"

		elseif(type == "meta") then

			local score_value
			meta.isBodyActive = false
			pinguino.isBodyActive = false
			transition.to( pinguino, { time=1000, x=meta.x, y=meta.y} )
			--Runtime:addEventListener("enterFrame", rotazione)
			score_value = calcScore:exec(score_value, accNumber)
			print(score_value)
			popUpEnd:init(PP_params, score_value, localGroup)
			timer.cancel(tmr)
			tmr = nil
			acc:removeEventListener("touch", aumento)
			pause:removeEventListener("touch", touchPopUp)
			insertScore:go(PP_params, score_value)
			--pinguino:setLinearVelocity(0, 0 )
			--Runtime:removeEventListener("enterFrame", rotazione)
			print("fatto")

		end

	end

end

function aumento(event)

	if (event.phase == "ended") then

		accNumber = accNumber + 1

		points.text = accNumber

		if (zone == "z0") then

			pinguino:setLinearVelocity(700, 400)

		elseif(zone == "z1") then

			pinguino:setLinearVelocity(700, 300)

		elseif(zone == "z2") then

			pinguino:setLinearVelocity(600, -50)

		elseif(zone == "z3") then

			pinguino:setLinearVelocity(600, -100)

		elseif(zone == "z4") then

			pinguino:setLinearVelocity(100, 500)

		elseif(zone == "z5") then
		
			pinguino:setLinearVelocity(100, 500)

		elseif(zone == "z6") then

			pinguino:setLinearVelocity(100, 500)

		elseif(zone == "z7") then

			pinguino:setLinearVelocity(50, 500)

		elseif(zone == "z8") then

			pinguino:setLinearVelocity(-600, 300)

		elseif(zone == "z9") then

			pinguino:setLinearVelocity(-600, -50)

		elseif(zone == "z10") then

			pinguino:setLinearVelocity(-700, -250)

		end
	
	end

end

local count = 0

function popClosed()

	physics.start()

	count = 0

end

function popUp()

		local popUpGroup = display.newGroup()

		physics.pause()

		--Runtime:removeEventListener("enterFrame", rotazione)

		acc:removeEventListener("touch", aumento)

		pause:removeEventListener("touch", touchPopUp)

		local darkening = display.newImage("darkening.png")

		darkening:setReferencePoint(display.TopLeftReferencePoint)

		darkening.x = 0

		darkening.y = 0

		darkening.isVisible = true

		darkening.alpha = 0.7

		local popUp_bg = display.newImage( "popUp-bg.png" )


		popUp_bg:setReferencePoint(display.BottomCenterReferencePoint)

		popUp_bg.x = display.contentWidth / 2

		popUp_bg.y = 0

		popUp_bg.xScale = 1.5
	
		popUp_bg.yScale = 1.5

		popUp_bg.isVisible = true
		popUp_bg.alpha = 0.9

		transition.to(popUp_bg, { time=500, y=popUp_bg.contentHeight, transition=easing.outQuad})

		local replay = display.newImage("replay.png")

		replay:setReferencePoint(display.BottomLeftReferencePoint)

		replay.x = 40

		replay.y = -10

		replay.xScale = 2

		replay.yScale = 2

		replay.isVisible = true

		local select = display.newImage("select.png")

		select:setReferencePoint(display.BottomLeftReferencePoint)

		select.x = replay.contentWidth + 80

		select.y = -10

		select.xScale = 2

		select.yScale = 2

		select.isVisible = true

		local ritorna = display.newImage("ritorna.png")

		ritorna:setReferencePoint(display.BottomLeftReferencePoint)

		ritorna.x = (replay.contentWidth * 2) + 120

		ritorna.y = -10

		ritorna.xScale = 2

		ritorna.yScale = 2

		ritorna.isVisible = true

		local soundOn = display.newImage("sound-on.png")

		soundOn:setReferencePoint(display.BottomLeftReferencePoint)

		soundOn.x = display.contentWidth - soundOn.contentWidth - 40

		soundOn.y = -10

		soundOn.isVisible = false

		soundOn.status = "on"

		local soundOff = display.newImage("sound-off.png")

		soundOff:setReferencePoint(display.BottomLeftReferencePoint)

		soundOff.x = display.contentWidth - soundOff.contentWidth - 40

		soundOff.y = -10

		soundOff.status = "off"

		function sound(event)

			if (event.phase == "ended") then

				if (event.target.status == "off") then

					soundOn.isVisible = true

					soundOff.isVisible = false

					audio.stop(bgMusicChannel)

					audio.rewind(bgMusic)

				elseif (event.target.status == "on") then

					soundOff.isVisible = true

					soundOn.isVisible = false

					audio.play(bgMusic, {loops = -1})

				end

			end

		return true

		end			

		transition.to(replay, { time=500, y=popUp_bg.contentHeight -35, transition=easing.outQuad})

		transition.to(select, { time=500, y=popUp_bg.contentHeight -35, transition=easing.outQuad})

		transition.to(ritorna, { time=500, y=popUp_bg.contentHeight -35, transition=easing.outQuad})

		transition.to(soundOn, { time=500, y=popUp_bg.contentHeight -35, transition=easing.outQuad})

		transition.to(soundOff, { time=500, y=popUp_bg.contentHeight -35, transition=easing.outQuad})
	
	
		local touched = function ( event )
		
		if event.phase == "ended" then

			--Runtime:addEventListener("enterFrame", rotazione)		
		
	popUp_bg.isVisible = false
			darkening.isVisible = false
			replay.isVisible = false
			select.isVisible = false
			ritorna.isVisible = false
			soundOn.isVisible = false
			soundOff.isVisible = false

			count = 0

			physics.start()
	
			tmr = timer.performWithDelay(1000, gt, -1)

			acc:addEventListener("touch", aumento)

			pause:addEventListener("touch", touchPopUp)	
				
		end


		return true		
	
		end

	
		function red(event)

			if (event.phase == "ended") then

				audio.stop(bgMusicChannel)

				bgMusicChannel = nil

				director:changeScene("red", "fade", "black")

			end

		end

		function reload(event)

			if (event.phase == "ended") then

				count = 0

				director:changeScene("level", "fade", "black")
		
			end

			return true

		end

		localGroup:insert( darkening )	
		
		
		localGroup:insert( popUp_bg )


		localGroup:insert( replay )

		localGroup:insert( select )

		localGroup:insert( ritorna )

		localGroup:insert( soundOn )

		localGroup:insert( soundOff )

		timer.cancel(tmr)

		tmr = nil
	
		
		ritorna:addEventListener( "touch" , touched )


		--darkening:addEventListener( "touch" , touched )


		replay:addEventListener("touch", reload)

		soundOn:addEventListener("touch", sound)

		soundOff:addEventListener("touch", sound)

		select:addEventListener("touch", red)

		count = 1

end

function resumePopUp()

	if(count == 0) then

		popUp()

		count = 1

	end

end

function touchPopUp(event)

	print("not ended")

	print(count)

	if (event.phase == "ended" and count == 0) then

		print("touched")

		popUp()

		count = 1

		print(count)

	end

end

function sospensione(event)

	--if(event.type == "applicationSuspend" and count == 0) then

		--physics.pause()

		--director:openPopUp("popup", popClosed)

		--count = 1

	--end

	if(event.type == "applicationResume" and count == 0) then

		resumePopUp()
	
		print("ciao")

	end

	--if(event.type == "applicationExit" and count == 0) then

	--	physics.pause()

	--	director:openPopUp("popup", popClosed)

	--	count = 1

	--end

end

function gt()

	calcScore:get()

end

localGroup:insert(dietro)

localGroup:insert(oggetti)

localGroup:insert(palla)

localGroup:insert(btns)

Runtime:addEventListener("system", sospensione)

pinguino:addEventListener("collision", collisioni2)

acc:addEventListener("touch", aumento)

pause:addEventListener("touch", touchPopUp)

------------------------------------------
--Creare il timer per la durata del gioco
------------------------------------------

tmr = timer.performWithDelay(1000, gt, -1)

return localGroup

end

