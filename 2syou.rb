puts 'Line 1
Line 2'

a = <<~"text"
    これはヒアドキュメントです。
    複数行に渡る長い文章列を作成するのに便利です。
    text

puts a

puts sprintf('%0.3f + %0.3f',1.2,1.2)
puts '%0.3f + %0.3f'%[1.2, 1.2]

puts 2e-3

puts 10.class
puts 1.5.class

n = 11
puts n > 10 ? '10より大きい':'10以下'

if n > 10
  puts '10より大きい'
else
  puts '10以下'
end


def foo(time = Time.new, message = bar)
  puts "time: #{time}, message:#{message}"
end
def bar
  'BAR'
end
print foo

def reverse_upcase(s)
  s.reverse!.upcase!
end
  s = 'ruby'
g = reverse_upcase(s)
puts g

# require 'date'
puts Date.today
