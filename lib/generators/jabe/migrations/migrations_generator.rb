require 'rails/generators'
require 'rails/generators/migration'

module Jabe
  module Generators
    class MigrationsGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      self.source_root(File.expand_path(JABE_DIR, 'templates', 'migrations')))

      desc "run this generator to create the necessary migrations"

      def create_migrations
        existing_migrations = Dir["db/migrate/*.rb"]
        migrations = %w(
          create_settings.rb
          create_slugs.rb
          devise_create_admins.rb
          create_entries.rb
          create_comments.rb
        ).reject { |file|
          existing_migrations.any? { |migration|
            match = migration.match(/#{file}$/)
            puts "skipping #{file}, exists." if match
            match
          }
        }

        migrations.each do |migration|
          migration_template migration, "db/migrate/#{migration}"
          sleep 1 # timestamps...
        end
      end

      def self.next_migration_number(dirname)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end
    end
  end
end
