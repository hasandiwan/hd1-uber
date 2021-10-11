# User.create!({:email => "guy@gmail.com", :roles => ["admin"], :password => "111111", :password_confirmation => "111111" })
FactoryBot.define do 
    factory :user do
        email { "user@example.com" }
        password { "password" }
        password_confirmation { password }
    end
end
