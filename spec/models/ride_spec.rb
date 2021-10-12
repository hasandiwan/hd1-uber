require 'rails_helper'

RSpec.describe Ride, type: :model do
    it 'raises Exception if source_latitude is not within [-90,90]' do
        r = create(:ride)
        expect{r.source_latitude = '91'}.to raise_error Exception, 'source_latitude out of range'
    end

    it 'raises Exception if target_latitude is not within [-90,90]' do
        r = create(:ride)
        expect{r.target_latitude = '91'}.to raise_error Exception, 'target_latitude out of range'
    end
    
    it 'raises Exception if source_longitude is not within [-180,180]' do
        r = create(:ride)
        expect{r.source_longitude = '181'}.to raise_error Exception, 'source_longitude out of range'
    end

    it 'raises Exception if target_longitude is not within [-180,180]' do
        r = create(:ride)
        expect{r.target_longitude = '181'}.to raise_error Exception, 'target_longitude out of range'
    end
end
