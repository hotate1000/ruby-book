class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES   = [150, 190]

  def initialize(name)
    @name = name
    # 駅名
  end

  def enter(ticket)
    ticket.stamp(@name)
    # 入場
  end

  def calc_fare(ticket)
    from     = STATIONS.index(ticket.stamped_at)
    to       = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
  
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
    # 退場
  end
end
