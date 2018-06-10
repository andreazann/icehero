module(..., package.seeall)

new =function (params)

local localGroup = display.newGroup()

local rect = display.newRect(0,0,display.contentWidth, display.contentHeight)

rect:setFillColor(255,0,0)

localGroup:insert(rect)

return localGroup

end