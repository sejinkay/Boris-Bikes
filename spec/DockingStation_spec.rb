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

#it "releases a working bike" do
#  bike = subject.release_bike
#  expect(bike).to be_working
#end

it {is_expected.to respond_to(:dock).with(1).argument}

it {is_expected.to respond_to(:bike)}

it 'docks a bike' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end

end
