require 'airport'

describe Airport do
  it 'allows a plane to land' do

      expect(subject).to respond_to :land
    end

    it 'allows a plane to take off from an airport' do
    plane=subject.release_plane
    expect(plane).to be_flight

  end
  it 'return the plane that was landed'do
  plane=Plane.new
  subject.land(plane)
  expect(subject.plane).to eq plane

  end
end
