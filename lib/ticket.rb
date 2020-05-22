class Ticket
  attr_reader :fare, :stamped_at
  def initialize(fare)
    @fare = fare
    # 切符の購入額
  end
  
  def stamp(name)
    @stamped_at = name 
    # 駅名
  end
end