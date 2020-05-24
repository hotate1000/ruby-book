modle DeepFreezable
  def deep_freeze(array_or_hash)
  end
end

class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(['Japan','US','India'])
end

Team::COUNTRIES.frozen?
Team::COUNTRIES.all?{|country| country.frozen?}

class Bank
  extend DeepFreezable
  
  COUNTRIES = deep_freeze({'japan' => 'yen','US' => 'dollar','India' => 'rupee'})
end

Bank::COUNTRIES.frozen?
Bank::COUNTRIES.all?{|key,value| key.frozen? && value.frozen? && value.frozen?}

