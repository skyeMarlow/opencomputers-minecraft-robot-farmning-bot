local robot = require("robot")
local os = require("os")
while true
do
function move()
	local i = 0;
	while(i < 5)
	do
		robot.forward()
		robot.useDown()
		i = i+1
	end
	i = 0
end

function goLeft()
	robot.useDown()
	robot.turnLeft()
	robot.forward()
	robot.turnLeft()
	robot.useDown()
end

function goRight()
	robot.useDown()
	robot.turnRight()
	robot.forward()
	robot.turnRight()
	robot.useDown()
end

function returnC()
	robot.forward()
	robot.turnRight()
	local i = 0
	while(i < 5)
	do
		robot.forward()
		i = i+1
	end
	i = 0
end

function deposit()
	robot.turnRight()
	local i = 0
	while(i < robot.inventorySize())
	do
		robot.drop()
	robot.select(i + 1)
	i = i+1
	end
	i = 0
end

robot.up()
robot.forward()
move()
goRight()
move()
goLeft()
move()
goRight()
move()
goLeft()
move()
goRight()
move()
returnC()
robot.down()
deposit()
os.sleep(120)
end
