Sidekiq.configure_server do |config|
    config.redis = {
      url: ENV["redis://:pcade59066a193168b54132ce927691b95898b03dd5b0f1db09f9c6bf3b48671b@ec2-34-206-166-87.compute-1.amazonaws.com:8399"],
      ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE }
    }
  end
  
  Sidekiq.configure_client do |config|
    config.redis = {
        url: ENV["redis://:pcade59066a193168b54132ce927691b95898b03dd5b0f1db09f9c6bf3b48671b@ec2-34-206-166-87.compute-1.amazonaws.com:8399"],
        ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE }
    }
  end