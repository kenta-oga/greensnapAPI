Rails.application.routes.draw do
  resources :samples, only: [] do
    collection do
      get 'change'
    end
  end
end
