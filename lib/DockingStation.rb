require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  def initialize
    @bike = []
  end
  def release_bike
    fail 'No bikes available' if empty?
    @bike.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bike << bike
  end

  private

  def full?
    @bike.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bike.empty?
  end

  attr_reader :bike
end
