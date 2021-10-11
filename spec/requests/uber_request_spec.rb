require 'rails_helper'
require 'set'
RSpec.describe "UberRequests", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/uber_request/new"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body.read)
      expect(json.has_key(:from)).to_be truthy
      expect(json[:from] =~  /^[-0-9.,]+$/).to_be 0
      expect(json[:from].split(/,/)[0].to_f.abs < 90)

      expect(json.has_key(:to)).to_be truthy
      expect(json[:to] =~  /^[-0-9.,]+$/).to_be 0
      expect(json[:to].split(/,/)[1].to_f.abs < 180)
    end
  end

end
