Rails.application.routes.draw do

  namespace :admin do
    resources :patients
  end
  get '/locations/:id' => "locations#show", :as => "location"
end
