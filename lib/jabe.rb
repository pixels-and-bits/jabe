require "rails/all"

module Jabe
  JABE_DIR = File.expand_path(File.join(__FILE__, '../../'))

  class Engine < Rails::Engine
    require File.join(JABE_DIR, 'app/helpers/jabe_helper.rb')

    initializer "static assets" do |app|
      if app.config.serve_static_assets
        app.middleware.insert 0, ::ActionDispatch::Static, "#{root}/public"
      end
    end

    initializer "jabe setup" do |app|
      ::ActionController::Base.send(:helper, :jabe)
    end

    def self.root
      JABE_DIR
    end
  end
end
