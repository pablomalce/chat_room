Rails.application.routes.draw do
  root to: 'chatrooms#index'
  get 'login', to: 'sessions#new'
end
