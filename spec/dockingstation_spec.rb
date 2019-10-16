require 'docking_station'

describe DockingStation do
  it { should respond_to(:release_bike) }
  it { should respond_to :working? }
  it { should respond_to(:dock).with(1).argument }
  it { should respond_to (:bike) }

  describe '#release_bike' do
    it 'releases a bike'
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
