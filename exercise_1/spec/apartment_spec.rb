require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do

    it 'initializes' do
        apartment = Apartment.new
        expect(apartment).to be_an_instance_of(Apartment)
    end

    it 'is rented?' do
        apartment = Apartment.new
        expect(apartment.is_rented?).to eq(false)
        apartment.rent 
        expect(apartment.is_rented?).to eq(true)
    end

    it 'add_room' do
        apartment = Apartment.new
        bathroom = Room.new("Bathroom")
        apartment.add_room(bathroom)
        apartment.add_room(Room.new("Landry"))


    end

end