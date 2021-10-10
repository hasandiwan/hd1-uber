client = Uber::Client.new do |config|
    config.server_token  = ENV['UBER_SERVER_TOKEN']
    config.client_id     = ENV['UBER_CLIENT_ID']
    config.client_secret = ENV["UBER_CLIENT_SECRET"]
    config.sandbox       = true
    if config.sandbox.equal? true then
        config.debug = true
    end
end
