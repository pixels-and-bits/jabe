# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jabe}
  s.version = "0.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Moen a.k.a. UnderpantsGnome", "Neil Heinrich"]
  s.date = %q{2010-12-30}
  s.description = %q{Blog engine for Rails 3+}
  s.email = %q{michael@pixels-and-bits.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.textile"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.textile",
    "Rakefile",
    "VERSION",
    "app/controllers/admin/base_controller.rb",
    "app/controllers/admin/entries_controller.rb",
    "app/controllers/admin/settings_controller.rb",
    "app/controllers/comments_controller.rb",
    "app/controllers/entries_controller.rb",
    "app/helpers/jabe_helper.rb",
    "app/models/admin.rb",
    "app/models/comment.rb",
    "app/models/entry.rb",
    "app/models/settings.rb",
    "app/stylesheets/_will_paginate.scss",
    "app/stylesheets/boilerplate.scss",
    "app/stylesheets/grid.scss",
    "app/stylesheets/handheld.scss",
    "app/stylesheets/jabe.scss",
    "app/views/admin/entries/_form.html.haml",
    "app/views/admin/entries/edit.html.haml",
    "app/views/admin/entries/index.html.haml",
    "app/views/admin/entries/new.html.haml",
    "app/views/admin/settings/edit.html.haml",
    "app/views/entries/_comment.html.haml",
    "app/views/entries/_comment_form.html.haml",
    "app/views/entries/index.html.haml",
    "app/views/entries/show.html.haml",
    "app/views/layouts/_footer.html.haml",
    "app/views/layouts/_header.html.haml",
    "app/views/layouts/_sidebar.html.haml",
    "app/views/layouts/application.html.haml",
    "config/initializers/sass.rb",
    "config/initializers/settings.rb",
    "config/initializers/time_formats.rb",
    "config/routes.rb",
    "lib/generators/jabe/migrations/migrations_generator.rb",
    "lib/generators/jabe/stylesheets/stylesheets_generator.rb",
    "lib/generators/jabe/templates/migrations/create_comments.rb",
    "lib/generators/jabe/templates/migrations/create_entries.rb",
    "lib/generators/jabe/templates/migrations/create_settings.rb",
    "lib/generators/jabe/templates/migrations/create_slugs.rb",
    "lib/generators/jabe/templates/migrations/devise_create_admins.rb",
    "lib/jabe.rb",
    "public/.htaccess",
    "public/apple-touch-icon.png",
    "public/blackbird/blackbird.css",
    "public/blackbird/blackbird.js",
    "public/blackbird/blackbird.png",
    "public/crossdomain.xml",
    "public/images/delete_page.png",
    "public/images/full_page.png",
    "public/javascripts/application.js",
    "public/javascripts/jquery-ui.js",
    "public/javascripts/jquery-ui.min.js",
    "public/javascripts/jquery.js",
    "public/javascripts/jquery.min.js",
    "public/javascripts/libs/dd_belatedpng.js",
    "public/javascripts/libs/modernizr-1.6.min.js",
    "public/javascripts/libs/profiling/charts.swf",
    "public/javascripts/libs/profiling/config.js",
    "public/javascripts/libs/profiling/yahoo-profiling.css",
    "public/javascripts/libs/profiling/yahoo-profiling.min.js",
    "public/javascripts/plugins.js",
    "public/javascripts/rails.js",
    "public/nginx.conf",
    "public/robots.txt"
  ]
  s.homepage = %q{http://github.com/pixels-and-bits/jabe}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Just Another Blog Engine}
  s.test_files = [
    "features/admin.feature",
    "features/entries.feature",
    "features/step_definitions/admin_steps.rb",
    "features/step_definitions/entry_steps.rb",
    "features/step_definitions/support_steps.rb",
    "features/step_definitions/web_steps.rb",
    "features/support/blueprints.rb",
    "features/support/env.rb",
    "features/support/paths.rb",
    "spec/support/blueprints.rb",
    "test/dummy/app/controllers/application_controller.rb",
    "test/dummy/app/helpers/application_helper.rb",
    "test/dummy/config/application.rb",
    "test/dummy/config/boot.rb",
    "test/dummy/config/environment.rb",
    "test/dummy/config/environments/development.rb",
    "test/dummy/config/environments/production.rb",
    "test/dummy/config/environments/test.rb",
    "test/dummy/config/initializers/backtrace_silencers.rb",
    "test/dummy/config/initializers/devise.rb",
    "test/dummy/config/initializers/inflections.rb",
    "test/dummy/config/initializers/mime_types.rb",
    "test/dummy/config/initializers/secret_token.rb",
    "test/dummy/config/initializers/session_store.rb",
    "test/dummy/config/routes.rb",
    "test/dummy/db/migrate/20101229224027_create_settings.rb",
    "test/dummy/db/migrate/20101229224028_create_slugs.rb",
    "test/dummy/db/migrate/20101229224029_devise_create_admins.rb",
    "test/dummy/db/migrate/20101229224030_create_entries.rb",
    "test/dummy/db/migrate/20101229224031_create_comments.rb",
    "test/dummy/db/schema.rb",
    "test/dummy/vendor/plugins/acts_as_textiled/init.rb",
    "test/dummy/vendor/plugins/acts_as_textiled/lib/acts_as_textiled.rb",
    "test/dummy/vendor/plugins/acts_as_textiled/test/fixtures/author.rb",
    "test/dummy/vendor/plugins/acts_as_textiled/test/fixtures/story.rb",
    "test/dummy/vendor/plugins/acts_as_textiled/test/helper.rb",
    "test/dummy/vendor/plugins/acts_as_textiled/test/textiled_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<devise>, [">= 0"])
      s.add_runtime_dependency(%q<friendly_id>, ["= 3.1.8"])
      s.add_runtime_dependency(%q<formtastic>, [">= 1.2.3.beta"])
      s.add_runtime_dependency(%q<haml>, [">= 3.0.23"])
      s.add_runtime_dependency(%q<haml-rails>, [">= 0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<RedCloth>, [">= 0"])
      s.add_runtime_dependency(%q<sass>, [">= 3.1.0.alpha.206"])
      s.add_runtime_dependency(%q<will_paginate>, [">= 3.0.pre2"])
      s.add_development_dependency(%q<rails>, ["~> 3.0.3"])
      s.add_development_dependency(%q<autotest>, [">= 0"])
      s.add_development_dependency(%q<autotest-fsevent>, [">= 0"])
      s.add_development_dependency(%q<autotest-growl>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<cucumber-rails>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0.6.0"])
      s.add_development_dependency(%q<faker>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<launchy>, [">= 0"])
      s.add_development_dependency(%q<machinist>, [">= 2.0.0.beta2"])
      s.add_development_dependency(%q<mysql>, [">= 0"])
      s.add_development_dependency(%q<pickle>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<redgreen>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["= 2.0.1"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
      s.add_development_dependency(%q<wirble>, [">= 0"])
    else
      s.add_dependency(%q<devise>, [">= 0"])
      s.add_dependency(%q<friendly_id>, ["= 3.1.8"])
      s.add_dependency(%q<formtastic>, [">= 1.2.3.beta"])
      s.add_dependency(%q<haml>, [">= 3.0.23"])
      s.add_dependency(%q<haml-rails>, [">= 0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<RedCloth>, [">= 0"])
      s.add_dependency(%q<sass>, [">= 3.1.0.alpha.206"])
      s.add_dependency(%q<will_paginate>, [">= 3.0.pre2"])
      s.add_dependency(%q<rails>, ["~> 3.0.3"])
      s.add_dependency(%q<autotest>, [">= 0"])
      s.add_dependency(%q<autotest-fsevent>, [">= 0"])
      s.add_dependency(%q<autotest-growl>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<cucumber-rails>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0.6.0"])
      s.add_dependency(%q<faker>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<machinist>, [">= 2.0.0.beta2"])
      s.add_dependency(%q<mysql>, [">= 0"])
      s.add_dependency(%q<pickle>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<redgreen>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["= 2.0.1"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
      s.add_dependency(%q<wirble>, [">= 0"])
    end
  else
    s.add_dependency(%q<devise>, [">= 0"])
    s.add_dependency(%q<friendly_id>, ["= 3.1.8"])
    s.add_dependency(%q<formtastic>, [">= 1.2.3.beta"])
    s.add_dependency(%q<haml>, [">= 3.0.23"])
    s.add_dependency(%q<haml-rails>, [">= 0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<RedCloth>, [">= 0"])
    s.add_dependency(%q<sass>, [">= 3.1.0.alpha.206"])
    s.add_dependency(%q<will_paginate>, [">= 3.0.pre2"])
    s.add_dependency(%q<rails>, ["~> 3.0.3"])
    s.add_dependency(%q<autotest>, [">= 0"])
    s.add_dependency(%q<autotest-fsevent>, [">= 0"])
    s.add_dependency(%q<autotest-growl>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<cucumber-rails>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0.6.0"])
    s.add_dependency(%q<faker>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<machinist>, [">= 2.0.0.beta2"])
    s.add_dependency(%q<mysql>, [">= 0"])
    s.add_dependency(%q<pickle>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<redgreen>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["= 2.0.1"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
    s.add_dependency(%q<wirble>, [">= 0"])
  end
end

