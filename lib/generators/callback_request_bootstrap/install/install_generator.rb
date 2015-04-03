require 'rails/generators/active_record'
require 'rails/generators/migration'

module CallbackRequestBootstrap
  module Generators
    class InstallGenerator < ActiveRecord::Generators::Base
      desc "Installs callback_request_bootstrap and generates the necessary migrations"
      source_root File.expand_path("../templates", __FILE__)

      def create_migrations
        migration_template 'migrations/create_requests.rb', 'db/migrate/create_requests.rb'
      end

    end
  end
end
