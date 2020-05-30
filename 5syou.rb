currencies = {'japan'=>'yen','us'=>'doller','india'=>'rupee'}
currencies['itaiy'] = 'euro'
puts currencies 
puts currencies['japan']

currencies.each {|key,value|
  puts "#{key}:#{value}"
}

puts currencies.size

p currencies.delete('japan'){|key| 'Not'}
p currencies.delete('japan'){|key| 'Not'}

puts currencies

p currencies.keys
p currencies.values
puts currencies.has_key?('japan')