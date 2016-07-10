Rails.application.routes.draw do
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/reminder' => 'todos#reminder'
  post '/entry' => 'tropo#entry'
end
