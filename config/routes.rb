Rails.application.routes.draw do

  devise_for :students
  root 'welcome#index'

  resources :schedules

end
