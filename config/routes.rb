Rails.application.routes.draw do
  devise_for :users
  root to: 'targets#index'
   resources :targets do
     resources :stories
   end
end