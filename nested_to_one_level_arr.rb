# Convert any nested array to one level deep 
# input = [[20, 7, "kjkj", "sadfsd"], [[1, 2, "iuiu"], [7676, 8, 9], [[87, 9, 9]]], ["uhh", "kji", "kjij"]]
# output = [[20, 7, "kjkj", "sadfsd"], [1, 2, "iuiu"], [7676, 8, 9], [87, 9, 9], ["uhh", "kji", "kjij"]]


given_arr = [[20, 7, "kjkj", "fdsd"], [[1, 2, "iuiu"], [7676, 8, 9], [[87, 9, 9]]], ["fdsd", "kji", "kjij"]]

# 1 st Solution
def convert_1_level_deep (arr, output=[])
  arr.each do |a|
    unless a.first.is_a?(Array)
      output.push a
    else
      convert(a, output)
    end
  end
  output
end

# 2nd Solution
def convert_1_level_deep(arr, result=[])
  arr.each_with_object(result) { |obj, res|
    obj.first.is_a?(Array) ? convert_1_level_deep(obj, res) : res.push(obj)
  }
  result
end

p convert_1_level_deep(given_arr)


# 3rd Solution if all the nested element having the same length
# input = [[20, 7, "kjkj"], [[1, 2, "iuiu"], [7676, 8, 9], [[87, 9, 9]]], ["uhh", "kji", "kjij"]]
def convert_1_level_deep(arr, result=[])
  arr.flatten.each_slice(3) { |ele| result.push(ele)}
  result
end

#original file content


