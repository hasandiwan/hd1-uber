require 'rails_helper'

RSpec.describe Ride, type: :model do
    describe 'Ride parameters within range' do
        it 'raises Exception if source_latitude is not within [-90,90]' do
            r = create(:ride, source_latitude: '91')
            r.validate
            expect((r.errors)).to include('source_latitude is out of range')
        end

        it 'raises Exception if target_latitude is not within [-90,90]' do
            r = create(:ride, target_latitude: '91')
            r.validate
            expect((r.errors)).to include('target_latitude is out of range')
        end                                                                                                                                                                             

        it 'raises Exception if source_longitude is not within [-180,180]' do
            r = create(:ride, source_longitude: '181')
            r.validate
            expect((r.errors)).to include('source_longitude is out of range')
        end                                                                                                                                                                             

        it 'raises Exception if target_longitude is not within [-180,180]' do
            r = create(:ride, target_longitude: '181')
            r.validate
            expect((r.errors)).to include('target_longitude is out of range')
        end                                                                                                                                                                             
    end
end
