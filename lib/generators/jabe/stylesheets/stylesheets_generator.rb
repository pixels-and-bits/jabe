module Jabe
  module Generators
    class StylesheetsGenerator < Rails::Generators::Base
      %w( boilerplate handheld jabe ).each do |sheet|
        system("bundle exec sass #{Jabe::Engine.root}/app/stylesheets/#{sheet}.scss public/stylesheets/#{sheet}.css")
      end
    end
  end
end
