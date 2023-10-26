Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # devise_for :customers, controllers: {
      #   registrations: 'api/v1/customers/registrations',
      #   # sessions: 'api/v1/customers/sessions'
      # }
      devise_for :customers, controllers: {
        registrations: 'api/v1/customers/registrations',
        sessions: 'api/v1/sessions'
      }
    end
  end
end
