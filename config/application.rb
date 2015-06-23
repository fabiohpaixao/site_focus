require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module Focus
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Enable the asset pipeline
    config.assets.enabled = true
    config.assets.paths << "#{Rails.root}/assets/fonts"
    config.assets.paths << "#{Rails.root}/app/assets/images"
    # Precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf )
    config.assets.precompile += %w( *.png *.jpg *.jpeg *.gif) 

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :address              => "mail.focusautomation.com.br",
      :port                 => 26,
      :domain               => 'focusautomation.com.br',
      :user_name            => 'web@focusautomation.com.br',
      :password             => 'Focus21!',
      :authentication       => 'plain',
      :enable_starttls_auto => true 
    }
    # Para debug apenas, é melhor que a linha abaixo seja adicionado apenas no ambiente de desenvolvimento
    config.action_mailer.raise_delivery_errors = true
  end
end
