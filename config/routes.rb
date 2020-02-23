Rails.application.routes.draw do
  get 'administrator_pages/home'
  get 'administrator_pages/help'
  root 'static_pages#home'
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :study_areas
  resources :sensors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
