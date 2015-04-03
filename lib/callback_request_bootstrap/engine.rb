module CallbackRequestBootstrap
  class Engine < ::Rails::Engine
    isolate_namespace CallbackRequestBootstrap

    config.to_prepare do
      Dir.glob(Rails.root + "app/decorators/**/*_decorator*.rb").each do |c|
        require_dependency(c)
      end
    end

  end
end
