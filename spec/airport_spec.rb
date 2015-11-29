require 'airport'

describe Airport do
  it 'allows a plane to land' do

      expect(subject).to respond_to :land
    end
 describe '#release_bike' do
    it 'allows a plane to take off from an airport' do
      plane=Plane.new
    subject.land(plane)
    expect(subject.release_plane).to eq plane
end

it 'raises an error when there are no planes in the airport' do
expect { subject.release_plane }.to raise_error 'No planes landed'
end

  end
  describe '#land' do
    it 'raises an error when full' do
      20.times {subject.land(Plane.new)}
      expect { subject.land Plane.new }.to raise_error 'Airport is full'
    end
  end
  it 'return the plane that was landed'do
  plane=Plane.new
  subject.land(plane)
  expect(subject.release_plane).to eq plane

  end
end
