# a = "1,2,3,4,6,8,9,10"
#output = 1-4,6,8-10

a="44,45,46,47,50,55,56,57,58,59,60,61,62"

a = a.split(",")
output = ""

a.each_slice(5).with_index do |slice, index|
  last_ele =  slice.count < 5 ? slice.last :  slice[-2]
  output += slice.first + "-" + last_ele
  output += "," + slice.last  unless slice.count < 5
  output += "," if (index + 1) * 5 < a.count
end

puts output
