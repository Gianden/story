Rails.application.routes.draw do
  resources :main_menus
  root to: "main_menus#index" 
end
