module SolidusNewsletter
  class Configuration < Spree::Preferences::Configuration
    preference :title, :string, default: ''
    preference :text, :string, default: ''
  end
end
