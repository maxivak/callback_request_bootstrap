require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/active_record'

module CallbackRequestBootstrap
  module Generators
    class InstallGenerator < Rails::Generators::Base
    #class InstallGenerator < ActiveRecord::Generators::Base
      include Rails::Generators::Migration

      desc "Installs callback_request_bootstrap and generates the necessary migrations"
      source_root File.expand_path("../templates", __FILE__)

      def self.next_migration_number(path)
        #Time.now.utc.strftime("%Y%m%d%H%M%S")
        ActiveRecord::Generators::Base.next_migration_number(path)
      end

      def create_migrations
        migration_template 'migrations/create_requests.rb', 'db/migrate/create_requests.rb'
      end

    end
  end
end
