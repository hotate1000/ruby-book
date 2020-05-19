#自作
# for i in 1..15
#   if i%15==0
#     puts "FizzBuzz"
#   elsif i%3==0  
#     puts "Fizz"
#   elsif i%5==0
#     puts "Buzz"
#   else
#     puts i
#   end
#     i += 1
# end


#テキスト
def fizz_buzz(n)
  if n % 15 == 0
    'FizzBuzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

