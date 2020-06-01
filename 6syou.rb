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



<select name="game_console">
none,,
wii_u, selected,Wii U
ps4,,プレステ4
gb,,ゲームボーイ
</select>


def hello(name)
puts "Hello, #{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')


Lorem ipsum dolor sit amet.
Vestibulum luctus est ut mauris tempor tincidunt.
Suspendisse eget metus
Curabitur nec urna eget ligula accumsan congue.


{
  japan: 'yen',
  america: 'dollar',
  italy: 'euro'
}

name,email
alice,alice@example.com
bob,bob@example.com