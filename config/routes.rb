Rails.application.routes.draw do
  resources :samples do
    collection do
      post 'change'
    end
  end
end
