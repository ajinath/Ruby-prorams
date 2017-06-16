require "pry"

# problem Statement
# Find the minimal step count to kill King 

# input1 = knight x position
# input2 = knight y position
# input3 = king x position
# input4 = king y position

def getStepCount(input1,input2,input3,input4)
	ways = possible_moves(input1,input2,input3,input4)
	found = true
	count = 1

	while found do
	  temp = []
		ways.each do |way|
			moves = possible_moves(way.first,way.last,input3,input4)
			if moves.include?([input3,input4])
				found = false
			end
			moves.each {|arr| temp.push(arr) }
		end
		count += 1
		ways = temp
	end
	count
end

def reject_invalid_moves(ways)
	ways.select {|way| way.first > 0 && way.first < 9 && way.last > 0 && way.last < 9}
end

def possible_moves(x,y, target_x, target_y)
	ways = [
		[x-1, y+2], [x-1, y-2],
		[x-2, y+1], [x-2, y-1],
		[x+1, y+2], [x+1, y-2],
		[x+2, y+1], [x+2, y-1],
	]
	reject_invalid_moves(ways)
end

puts getStepCount(2,1,6,5)
puts getStepCount(6,6,5,5)
