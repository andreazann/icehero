module(..., package.seeall)

local sqlite = require("sqlite3")

local path = system.pathForFile("level-db.sqlite", system.DocumentsDirectory)

local file = io.open(path, "r")

local db

function dbInit()

	if(file==nil) then

		local pathSource = system.pathForFile("level-db.sqlite", system.ResourceDirectory)

		local fileSource = io.open(pathSource, "r")

		local contentsSource = fileSource:read("*a")


		local pathDestination = system.pathForFile("level-db.sqlite", system.DocumentsDirectory)

		local fileDestination = io.open(pathDestination, "w")

		fileDestination:write(contentsSource)

		
		io.close(fileSource)

		io.close(fileDestination)

	else

		print("File gia' esistente!")

	end
end

function storeLevel:go()

	dbInit()

end


