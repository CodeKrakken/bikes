require 'docking_station'
# require 'bike'

describe DockingStation do
  it { should respond_to :working? }
  it { should respond_to(:dock).with(1).argument }
  it { should respond_to (:bike) }
  it { should respond_to (:dock) }
  
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

  describe '#dock' do
    it 'raises an error when full' do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end
end