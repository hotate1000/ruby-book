# text = '私の誕生日は1997年7月17日です。'
# m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)

# puts m[1]
# puts m[2]
# puts m[3]
# puts m[0,2]

# puts m[:year]
# puts m[:month]


mm = '123 456 789'.scan(/d+/)
puts mm