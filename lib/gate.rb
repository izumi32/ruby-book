class Gate
  attr_reader :station
  STATION = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  def initialize(station)
    @station = station
  end

  def enter(ticket)
    ticket.enter_station = self.station
  end

  def exit(ticket)
    price = calc_fare(ticket)
    price <= ticket.price
  end

  def calc_fare(ticket)
    from = STATION.index(ticket.enter_station)
    to = STATION.index(self.station)
    distance = to - from
    FARES[distance - 1]
  end
end
