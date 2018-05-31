# def find_next_square(sq)
#   # Return the next square if sq is a perfect square, -1 otherwise
#   sqrt = Math.sqrt(sq).to_i * Math.sqrt(sq).to_i
#   found = true
#   if sqrt == sq
#     flag = true
#     while flag do
#       sq = sq + 1
#       sqrt = Math.sqrt(sq).to_i * Math.sqrt(sq).to_i
#       if sqrt == sq
#          found = sq
#          flag = false
#       end
#     end
#     found
#   else
#     -1
#   end
# end

def find_next_square(sq)
  number = Math.sqrt(sq) + 1
  number % 1 == 0 ? (number * number) : -1
end




