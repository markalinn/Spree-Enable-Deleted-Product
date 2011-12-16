Rails.application.routes.draw do
  namespace :admin do
    resources :products do
        member do
          get :enable
        end
    end
  end
end
