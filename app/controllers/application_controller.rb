module YourAppName
  class Application < Rails::Application
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:4000' # Your React frontend URL
        resource '*', headers: :any, methods: [:get, :post, :options]
      end
    end
  end
end
