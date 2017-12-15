def convert_to_1d(array_of_arrays, output=[])
	array_of_arrays = [array_of_arrays] if array_of_arrays.is_a? Integer
	array_of_arrays.each do |ele|
		if ele.class == Array
			ele.each { |num| convert_to_1d(num, output)}
		else
			output.push(ele)
		end
	end
	output
end

array_of_arrays = [1,[3,4, [5,6], [7,8, [9,10]]], 7]
convert_to_1d(array_of_arrays)
