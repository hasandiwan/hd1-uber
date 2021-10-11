require 'rails_helper'

RSpec.describe Ride, type: :model do
    describe 'Ride parameters within range' do
        it 'raises RangeException if source_latitude is not within [-90,90]' do
            r = create(:ride, source_latitude: 91)
            expect {r.save}.to raise_error('source_latitude is out of range')
        end

        it 'raises RangeException if target_latitude is not within [-90,90]' do
            r = create(:ride, target_latitude: 91)
            expect {r.save}.to raise_error('target_latitude is out of range')
        end                                                                                                                                                                             

        it 'raises RangeException if source_longitude is not within [-180,180]' do
            r = create(:ride, source_longitude: 181)
            expect {r.save}.to raise_error('source_longitude is out of range')
        end                                                                                                                                                                             

        it 'raises RangeException if target_longitude is not within [-180,180]' do
            r = create(:ride, target_longitude: 181)
            expect {r.save}.to raise_error('target_longitude is out of range')
        end                                                                                                                                                                             
    end
end
