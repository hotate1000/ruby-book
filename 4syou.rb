a = [1,2,3,1,2,3]

a.delete_if do |n|
  n.odd?
end

puts a


b = [1,2,3,4]
sum = 0
sam = 0
b.each do |n2|
  sum_value = n2.even? ? n2 * 10 : n2
  sum += sum_value
end
puts sum

b.each do |n3|
  if n3.even?
    sam += n3 * 10
  else
    n3 
    sam += n3
  end
end
puts sam

number = [1,2,3,4]
sum = 0
sum_value = 100
number.each do |sum_value|
  sum += sum_value
end
puts sum

test1 = [10,10,11,12,16].map {|n| n.to_s(16)} 
puts test1

a = [1,2,3,4,5]
b = [1,2,3,4,5]
puts a.values_at(1,2)
puts b[b.length-1]