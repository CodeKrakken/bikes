

class DockingStation
  attr_reader :bike


  def working?
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
 end
end

class Bike
  def working?
    true
end

  def release_bike
  @bike
end
