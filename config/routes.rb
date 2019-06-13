Rails.application.routes.draw do
  resources :leituras
  get "/add" => "leituras#create", :as => :forums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
