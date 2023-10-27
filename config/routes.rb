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
        get "/login", to: "sessions#login"
        post 'login', to: 'sessions#login'

      end


      # namespace :staff do
      #   post 'login', to: 'sessions#login'
      #   get 'login', to: 'sessions#login'
      #   delete 'logout', to: 'sessions#destroy'
      # end

    end
  end
end
