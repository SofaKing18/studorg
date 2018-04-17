Rails.application.routes.draw do
  resources :schedules
  resources :chemestries
  devise_for :users
  resources :groups
  resources :teachers
  resources :lecture_halls
  resources :timelines
  resources :subjects
  resources :homewords
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
