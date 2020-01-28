
test = [1,2,3,4,5,6,7,8]

def my_select(collection)
  result = []
  i = 0
  while i < collection.length do
    result << collection[i] if yield(collection[i])
    i += 1
  end  
  result
end

puts my_select(test) { |item| item.odd? }
