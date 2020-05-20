foods = ['ピーマン','トマト','セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか"
  anser = ['いいえ']
  puts anser

  count += 1
  # redo unless anser == 'いいえ' && count < 2
  redo if anser != 'はい' && count < 2

  count = 0
end