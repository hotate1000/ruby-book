require './lib/deep_freezable.rb'

class Team
  extend DeepFreezable
  # 配列
  COUNTRIES = deep_freeze(['Japan','US','India'])
end