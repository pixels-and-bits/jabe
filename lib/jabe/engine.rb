module Jabe
  class Engine < ::Rails::Engine
    isolate_namespace Jabe

    initializer "jabe.config" do |app|
      app.config.assets.precompile += %w(
        jabe/libs/dd_belatedpng.js
        libs/jabe/modernizr-1.6.min.js
      )
    end

  end
end
