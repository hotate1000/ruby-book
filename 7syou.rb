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


class User
  def initialize(name,age,phone_number,user_height,user_weight)
    @name         = name
    @age          = age
    @phone_number = phone_number
    @user_height  = user_height
    @user_weight  = user_weight
  end

  def user_data_organize
    "名前：#{@name}、年齢：#{@age}、電話番号：#{@phone_number}、BMI：#{bmi}"
  end

  def bmi #体重(kg)/身長(m)の2乗
    (@user_weight.to_f/((@user_height.to_f/100)**2)).round(2)
  end
end

# user_data1 = User.new('tanaka', '20', '123-456-7890', '170', '60')
user_data1 = User.new('tanaka', '20', '123-456-7890', '170', '100') 
user_data2 = User.new('yamada', '30', '321-654-0987', '220', '80' ) 

p user_data1.bmi
p user_data1.user_data_organize
p user_data2.user_data_organize
