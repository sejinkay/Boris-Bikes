require_relative 'bike'

class DockingStation
  def initialize
    @bike = []
  end
  def release_bike
    fail 'No bikes available' if @bike.empty?
    @bike.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bike.count >= 20
    @bike << bike
  end

  attr_reader :bike
end
