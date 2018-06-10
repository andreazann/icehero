module(..., package.seeall)

local timeValue = 0

function calcScore:get()

	timeValue = timeValue + 1

	print(timeValue)

end

function calcScore:exec(score_value, accNumber, levelVar)

	score_value = levelVar - (timeValue * 4000) - (accNumber * 1000)

	if (score_value < 0) then

		score_value = 0

	elseif (score_value > 30000) then

		score_value = 30000

	end

	timeValue = 0

	return score_value

end