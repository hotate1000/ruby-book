# name  = ENV['MY_NAME']
# email = ARGV[0]
# age   = ARGV[1]

# puts "name:#{name},email:#{email},age:#{age}"

puts 'a1'
BEGIN{
  puts 'a2'
}

# print << EOF
# This is a sample text
# EOF
# print << "EOF";
# a1
# EOF

puts 'a "\\"'
puts 'a\a'


puts "a" << "b"
puts "a".concat("d")

aa = "hello world"
puts aa.scan(/(..)(..)/)

puts 'Ruby FFF'.unpack('A6')

print "aaa a\n" if $debug