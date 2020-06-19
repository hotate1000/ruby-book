require './lib/deep_freezable'

class Bank
  extend DeepFreezable
  # ハッシュ
  CURRENCIES = deep_freeze({'Japan'=>'yen','US'=>'dollar','India'=>'rupee'})
end