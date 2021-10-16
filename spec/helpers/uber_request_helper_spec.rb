require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UberRequestHelper. For example:
#
# describe UberRequestHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UberRequestHelper, type: :helper do
    it 'logs user in' do
        resource ||= user
        scope = Devise::Mapping.find_scope!(resource)
        login_as(resource, scope: scope)
    end
end
