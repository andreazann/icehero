module(..., package.seeall)




new = function ()
	
	
	
	
local localGroup = display.newGroup()
	
	

	
		
local background = display.newImage( "popup-bg.png" )


background:setReferencePoint(display.BottomCenterReferencePoint)

background.x = display.contentWidth / 2

background.y = 0

background.xScale = 1.5
	
background.yScale = 1.5
	
background.alpha = 0.90

transition.to(background, { time=500, y=background.contentHeight, transition=easing.outQuad})

local darkening = display.newImage("darkening.png")

darkening:setReferencePoint(display.TopLeftReferencePoint)

darkening.x = 0

darkening.y = 0

darkening.alpha = 0.7

local replay = display.newImage("replay.png")

replay:setReferencePoint(display.TopRightReferencePoint)

replay.x = display.contentWidth - 20 - replay.contentWidth

replay.y = 10

	
	
local touched = function ( event )
		
if event.phase == "ended" then
			
director:closePopUp()
	
end
	
end


function reload(event)

	if (event.phase == "ended") then

		--Runtime:removeEventListener("enterFrame", rotazione)

		director:changeScene("level")

		print(1)

	end

end

localGroup:insert( darkening )	
		
		
localGroup:insert( background )


localGroup:insert( replay )
	
		
background:addEventListener( "touch" , touched )


replay:addEventListener("touch", reload)
	
return localGroup


end
