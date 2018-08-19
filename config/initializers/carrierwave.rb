CarrierWave.configure do |config|
  case Rails.env
  when "development"
    config.asset_host = "http://localhost:3000"
  end
end
