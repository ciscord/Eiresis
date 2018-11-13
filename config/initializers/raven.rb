EIRESIS_VERSION = '1.0.0'

if Rails.env.production? && SENTRY_ACTIVE
  require 'raven'
  Raven.configure do |config|
    config.dsn = "https://#{ENV['SENTRY_PUBLIC_KEY']}:#{ENV['SENTRY_PRIVATE_KEY']}@app.getsentry.com/#{ENV['SENTRY_PORT']}"
    config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
    config.environments = ['production']
    config.release = EIRESIS_VERSION
  end
end
