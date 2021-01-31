Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

      resources :cities, only: :index

      resources :companies, only: :index

      resources :people, only: [:index, :show] do
        scope module: :people do
          resources :companies, only: :update
        end
      end

    end
  end
end
