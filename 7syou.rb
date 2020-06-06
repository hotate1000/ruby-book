users = []
users << {first_name: 'Akice', last_name: 'Ruby' , age: '20'}
users << {first_name: 'Bob'  , last_name: 'Pyton', age: '30'}

def full_name(username)
  "#{username[:first_name]}#{username[:last_name]}"
end

users.each do |user|
  # puts "氏名：#{user[:first_name]}#{user[:last_name]}、年齢：#{user[:age]}"
  puts "氏名：#{full_name(user)}、年齢：#{user[:age]}"
end

p users[0][:first_name]


class User

  def initialize
  # def hello
    puts 'testA'
  end

end

p user = User.new
p user.class
# p user.initialize
# p user.hello



class User2
  def initialize
    @name = name
  end

  def self.create_users(name)
    names.map do |name|
      Users.new(name)
    end
  end
end

class Product
  @name = 'Product'

  def self.name
    @name
  end

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class DVD < Product
  def self.name
    @name = 'DVD'
  end

  def upcace_name
    @name.upcase
  end
end

p Product.name
p DVD.name

product = Product.new('A great movie')
p product.name

dvd = DVD.new('An awesome film')
p dvd.name
p dvd.upcace_name

p product.name




class User3
  def name=(value)
    @name = value
  end
end

p user = User3.new
p user.name='Alice'

# p 'MyString'.underscore