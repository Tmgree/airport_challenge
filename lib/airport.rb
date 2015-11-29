require_relative 'plane'

class Airport
  def initialize
    
  end
  attr_reader :planes
  def land(plane)
    fail 'Airport is full' if @plane
@plane=plane
  end

  def release_plane
    fail 'No planes landed' unless @plane
@plane
  end

end
