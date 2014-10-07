Rails.application.routes.draw do

  root 'welcome#index'

  resources :students do
    resources :schedules
  end

end
