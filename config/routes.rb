Rails.application.routes.draw do
  get 'administrators/new'
  root 'administrator_pages#home'
  #get 'administrator_pages/home'
  get  '/help',    to: 'administrator_pages#help'
  get  '/about',   to: 'administrator_pages#about'
  get  '/contact', to: 'administrator_pages#contact'
  get  '/signup',  to: 'administrators#new'


  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :study_areas
  resources :sensors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
