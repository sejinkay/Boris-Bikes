require_relative 'bike'

class DockingStation
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike = []
    @capacity = capacity
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
    @bike.count >= @capacity
  end

  def empty?
    @bike.empty?
  end

  attr_reader :bike
end
