Rails.application.routes.draw do
  
   root to: "homes#index"
   devise_for :users, controllers: {
        registerations: 'users/registerations',
        sessions: 'users/sessions',
        omniauth_callbacks: 'users/omniauth_callbacks'
      }
       
  devise_scope :user do
    get '/auth/:provider/callback', to: 'homes#dashboard'
  end
  
  resources :profiles
end
