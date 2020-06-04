text = <<-TEXT
名前：伊藤淳一
電話：03(1234)5678
電話：090-1234-5678
電話：0795(12)3456
電話：04992-1-2345
住所：兵庫県西脇市板波町1-2-3
TEXT

puts text.scan /0[1-9]\d{0,3}[-(]\d{1,4}[-)]\d{4}/





text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

puts text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)



# <select name="game_console">
# none,,
# wii_u, selected,Wii U
# ps4,,プレステ4
# gb,,ゲームボーイ
# </select>


def hello(name)
puts "Hello, #{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')


# Lorem ipsum dolor sit amet.
# Vestibulum luctus est ut mauris tempor tincidunt.
# Suspendisse eget metus
# Curabitur nec urna eget ligula accumsan congue.


{
  japan: 'yen',
  america: 'dollar',
  italy: 'euro'
}

# name,email
# alice,alice@example.com
# bob,bob@example.com




p '123 456 789'.scan(/\d+/)

t = '1990年03月19日 2018年09月23日'
p '1990年03月19日 2018年09月23日'.scan(/\d+年\d+月\d+日/)
p '1990年03月19日 2018年09月23日'.scan(/(\d+)年(\d+)月(\d+)日/)
p '1990年03月19日 2018年09月23日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)



text = '郵便局は123-4567です。郵便局は321-7654です。'
p text[/\d{3}-\d{4}/]
p text[/(\d{3})-(\d{4})/,2]
m = t[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,:day]
p m


a = '123-456-789~123'
p a.split('-')
p a
p a.gsub('-',':')
p a.gsub(/-|~/,':')


b = '誕生日は1977年7月17日です。'
p b.gsub(
  /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,
  '\k<year>-\k<month>-\k<day>'
)



c = '123,456-789'
hash = {','=>':','-'=>'/'}
p c.gsub(/,|-/,hash)



12
1234
123456
1234567
12
1,234
123,456
1,234,567