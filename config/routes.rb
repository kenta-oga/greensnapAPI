Rails.application.routes.draw do
  resources :samples do
    collection do
      get 'change'
    end
  end
end
