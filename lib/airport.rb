require_relative 'plane'

class Airport
   DEFAULT_CAPACITY = 20
  def initialize(capacity=DEFAULT_CAPACITY)
    @planes= []
    @capacity=capacity
  end
  attr_reader :planes
  def land(plane)
    fail 'Airport is full' if full?
    @planes << plane
  end

  def release_plane
    fail 'No planes landed' if empty?
    @planes.pop
  end
  
  def full?
    planes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @planes.size == 0 ? true : false

  end

end
