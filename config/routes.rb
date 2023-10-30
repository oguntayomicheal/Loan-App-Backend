Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      devise_for :customers, controllers: {
        registrations: 'api/v1/customers/registrations',
        sessions: 'api/v1/customers/sessions'
      }

      namespace :customers do
        resources :loan_applications, only: [:create]
      end

      namespace :staffs do 
        post 'login', to: 'sessions#login'

        resources :loan_applications, only: [:index, :show] do
          resource :review, controller: 'loan_applications', only: [:update]
        end
      end
    end
  end
end
