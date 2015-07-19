# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV.fetch('AWS_BUCKET')
  config.aws_acl    = 'public-read'


  config.aws_credentials = {
    access_key_id:     ENV.fetch('AWS_ACCESS_KEY'),
    secret_access_key: ENV.fetch('AWS_SECRET_KEY'),
    region:            ENV.fetch('AWS_REGION') # Required
  }
end