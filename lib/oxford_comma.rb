#def oxford_comma(array)
#  if array.length == 1
#    array.join(",")
#  elsif array.length == 2
#    array.insert(1, "and")
#    array.join(" ")
#  else
#    last = array.pop
#    array = array.collect { |x| x + ","}
#    array << last
#    and_place = array.length - 1
#    array.insert(and_place, "and")
#    array.join(" ")
#  end
#end

def oxford_comma(array)
  if array.length == 2
    return "#{array[0]} and #{array[1]}"
  elsif 2 < array.length
    array[-1].insert(0, "and ")
  end
  array.join(", ")    
end