module(..., package.seeall)

_W = display.contentWidth

_H = display.contentHeight

popUpEndGroup = display.newGroup()

function popUpEnd:init(params, score_value, localGroup)

	local insertScore = require("insertScore")

	local record_value = insertScore:go(params, score_value)

	local bg = display.newImage("ppEnd-bg.png")

	bg.x = _W / 2

	bg.y = _H / 2

	bg.alpha = 0.95

	local world = display.newText( params.world, 0, 0, "Komika Axis", 41 )

	world.x = 130

	world.y = 355 

	local dash = display.newImage("tratto.png")

	dash.x = 150

	dash.y = 355

	local level = display.newText( params.level, 0, 0, "Komika Axis", 41 )

	level.x = 180

	level.y = 355

	--local completed = display.newImage("level-compl.png")

	local completed = display.newText( "Level Completed!", 0, 0, "Komika Axis", 30 )

	--completed:setReferencePoint(display.TopLeftReferencePoint)

	completed.x = 270

	completed.y = 430

	--local score = display.newImage("score.png")

	local score_label = display.newText( "Score:", 0, 0, "Komika Axis", 24 )

	score_label.x = 165

	score_label.y = 480

	local score = display.newText( score_value, 0, 0, "Komika Axis", 35 )

	score.x = 180

	score.y = 535

	local record_label = display.newText("Record:", 0, 0, "Komika Axis", 17 )

	record_label.x = 420

	record_label.y = 340

	local record = display.newText(record_value, 0, 0, "Komika Axis", 24)

	record.x = 370

	record.y = 360

	local s_stars = display.newGroup()

	if (record_value <= 10000) then

		star1 = display.newImage("null_star.png")

		star2 = display.newImage("null_star.png")

		star3 = display.newImage("null_star.png")

	elseif (record_value <= 20000) then

		star1 = display.newImage("star.png")

		star2 = display.newImage("null_star.png")

		star3 = display.newImage("null_star.png")

	elseif (record_value < 30000) then

		star1 = display.newImage("star.png")

		star2 = display.newImage("star.png")

		star3 = display.newImage("null_star.png")

	elseif (record_value >= 30000) then

		star1 = display.newImage("star.png")

		star2 = display.newImage("star.png")

		star3 = display.newImage("star.png")

	end

	s_stars:insert(star1)

	s_stars:insert(star2)

	s_stars:insert(star3)

	star1.x = 0

	star2.x = star1.contentWidth + 10

	star3.x = (star1.contentWidth * 2) + 20

	s_stars.x = 430

	s_stars.y = 345
	
	s_stars.xScale = 0.5

	s_stars.yScale = 0.5

	local stars = display.newGroup()

	if (score_value <= 10000) then

		star1 = display.newImage("null_star.png")

		star2 = display.newImage("null_star.png")

		star3 = display.newImage("null_star.png")

	elseif (score_value <= 20000) then

		star1 = display.newImage("star.png")

		star2 = display.newImage("null_star.png")

		star3 = display.newImage("null_star.png")

	elseif (score_value < 30000) then

		star1 = display.newImage("star.png")

		star2 = display.newImage("star.png")

		star3 = display.newImage("null_star.png")

	elseif (score_value >= 30000) then

		star1 = display.newImage("star.png")

		star2 = display.newImage("star.png")

		star3 = display.newImage("star.png")

	end

	stars:insert(star1)

	stars:insert(star2)

	stars:insert(star3)

	star1.x = 0

	star2.x = star1.contentWidth + 10

	star3.x = (star1.contentWidth * 2) + 20

	stars.x = 310

	stars.y = 500

	local popUp_btns = display.newGroup()

	local replay = display.newImage("replay.png")

	replay.x = 0

	replay.y = 0

	local select = display.newImage("select.png")

	select.x = replay.contentWidth + 30

	select.y = 0

	local avanti = display.newImage("avanti.png")

	avanti.x = (replay.contentWidth * 2) + 60

	avanti.y = 0
	
	popUp_btns:insert(replay)

	popUp_btns:insert(select)

	popUp_btns:insert(avanti)

	popUp_btns.x = 180

	popUp_btns.y = 630

	popUp_btns.xScale = 1.5

	popUp_btns.yScale = 1.5

	localGroup:insert(bg)

	localGroup:insert(world)

	localGroup:insert(dash)

	localGroup:insert(level)

	localGroup:insert(completed)	

	localGroup:insert(score_label)

	localGroup:insert(score)

	localGroup:insert(record_label)

	localGroup:insert(record)

	localGroup:insert(s_stars)

	localGroup:insert(stars)

	localGroup:insert(popUp_btns)

	function red(event)

		if (event.phase == "ended") then

				audio.stop(bgMusicChannel)

				bgMusicChannel = nil

				director:changeScene("red", "fade", "black")		
		
		end

	end
	
	function reload(event)

		if (event.phase == "ended") then

			director:changeScene("level", "fade", "black")
		
		end

	return true

	end

	replay:addEventListener("touch", reload)

	select:addEventListener("touch", red)

	return localGroup

end