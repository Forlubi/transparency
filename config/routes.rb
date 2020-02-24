Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :study_areas
  resources :sensors

  root 'static_pages#home'
  get  '/info',    to: 'static_pages#info'
  get  '/news',    to: 'static_pages#news'
  get  '/feedback',    to: 'static_pages#feedback'
end
