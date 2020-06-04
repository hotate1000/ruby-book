# class Gate
#   STATIONS = [:umeda, :juso, :mikuni]
#   FARES   = [150, 190]

#   def initialize(name)
#     @name = name
#     # 駅名
#   end

#   def enter(ticket)
#     ticket.stamp(@name)
#     # 入場
#   end

#   def calc_fare(ticket)
#     from     = STATIONS.index(ticket.stamped_at)
#     to       = STATIONS.index(@name)
#     distance = to - from
#     FARES[distance - 1]
#   end
  
#   def exit(ticket)
#     fare = calc_fare(ticket)
#     fare <= ticket.fare
#     # 退場
#   end
# end


class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES    = [150,190]

  def initialize(name)
    @name  = name # umeda,mikuni
    # @umeda = umeda
    # @juso  = juso
  end

  def enter(ticket)
    # 受け取った切符に対して、改札機の名前(@name)を記録(stap)せよと伝えます。
    ticket.stamp(@name) #チケットメゾットのstampメゾットを呼び出す。umeda,mikuni
  end

  def exit(ticket)
    true
  end

  def calc_fare(ticket)
    form = STATIONS.index(ticket.stamped_at) #Ticketクラスstampメゾットから
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance -1]
  end
end

class Ticket
  attr_reader :fare, :stamped_at
  def initialize(fare) # 150
    @fare = fare #150
  end

  def stamp(name) #@name?umeda,mikluni
    @stamped_at = name #umeda,mikluni
  end
end
