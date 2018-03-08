Rails.application.routes.draw do
  resources :records do
    resources :laps
  end
end
