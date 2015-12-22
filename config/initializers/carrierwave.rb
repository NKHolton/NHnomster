CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["AKIAICM3ZDIFZEFL2ZAA"],                        # required
    :aws_secret_access_key  => ENV["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"]                         # required
  }
  config.fog_directory  = ENV["nkholton"]                     # required
end