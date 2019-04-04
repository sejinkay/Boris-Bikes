require 'DockingStation'

describe DockingStation do
it {is_expected.to respond_to :release_bike}

describe '#release_bike' do

  it "releases a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it "raises an error when no bikes are docked" do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end
end

describe '#dock' do
  it "raises an error if the docking station is full" do
    subject.capacity.times {subject.dock(Bike.new)}
    expect{subject.dock(Bike.new)}.to raise_error 'Docking station full'
  end

  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  #it 'docks a bike' do
  #  subject.dock(bike)
  #  expect(subject.dock(bike)).to eq @bike
  #end
end

#it "releases a working bike" do
#  bike = subject.release_bike
#  expect(bike).to be_working
#end

it {is_expected.to respond_to(:dock).with(1).argument}

end
