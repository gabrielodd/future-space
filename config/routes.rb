Rails.application.routes.draw do
  resources :launchers
  get '/launches', to: "launchers#get_launches"
  root to: "launchers#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
