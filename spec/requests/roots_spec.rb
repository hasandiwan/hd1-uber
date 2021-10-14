require 'rails_helper'
require 'digest'

RSpec.describe "Roots", type: :request do
    it "is the correct hash for the root page" do
        get '/'
        expect(response).to redirect_to('http://www.example.com/users/sign_in')
        expect(Digest::SHA1.hexdigest(response.body).to_s).to eql('66c61ad0d7241847bcb8841eb184b0a77ee21ca1')
    end
end
