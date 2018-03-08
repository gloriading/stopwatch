Rails.application.routes.draw do

  get '/', to: 'main#index', as: :home

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :records
    end
  end

  # resources :records do
  #   resources :laps
  # end


end
