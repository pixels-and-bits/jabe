require "rails/all"

module Jabe
  JABE_DIR = File.expand_path(File.join(__FILE__, '../../'))

  class Engine < Rails::Engine
    require File.join(JABE_DIR, 'app/helpers/jabe_helper.rb')

    initializer "jabe setup" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
      ::ActionController::Base.send(:helper, :jabe)
    end

    def self.root
      JABE_DIR
    end
  end
end
