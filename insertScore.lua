module(..., package.seeall)


local hscore

function insertScore:go(PP_params, score_value)

	local sqlite = require("sqlite3")

	local path = system.pathForFile("level-db.sqlite", system.DocumentsDirectory)

	local file = io.open(path, "r")

	local num = 0

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

			num = 1

		else

			print("File gia' esistente!")

		end
	end

	dbInit()

	local db = sqlite.open(path)
	
	local sql = "SELECT * FROM game WHERE level = ".. PP_params.level ..";"

	local i = 0

	for row in db:nrows(sql) do

		i = i + 1

		hscore = row.hscore

	end

	if (hscore == nil) then

			hscore = 0

	end

	print("i =".. i)

	if ((i ~= 0) and (hscore < score_value)) then

		local sql = "UPDATE game SET hscore = ".. score_value .." WHERE level = ".. PP_params.level ..";"

		db:exec(sql)

		print("update: ".. sql)

	end
	
	db:close()

	if (num == 0) then

		io.close(file)

	end

	print("hscore = ")

	print(hscore)

	local record_value = hscore

	return record_value

end