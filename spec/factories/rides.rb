FactoryBot.define do
  factory :ride do
      source_latitude { "34.0658998" }
      source_longitude { "-118.374461" }
      target_latitude { "34.0658998" }
      target_longitude { "-118.374461" }
      user_id { User.create!(FactoryBot.attributes_for(:user)).id }
  end
end
