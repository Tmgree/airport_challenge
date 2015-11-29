require_relative 'plane'

class Airport
  def initialize
    @planes= []
  end
  attr_reader :planes
  def land(plane)
    fail 'Airport is full' if @planes.count >= 20
@planes << plane
  end

  def release_plane
    fail 'No planes landed' if @planes.empty?
@planes.pop
  end

end
