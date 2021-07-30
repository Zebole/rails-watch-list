Rails.application.routes.draw do
  # get 'lists/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists , except: [:edit, :update, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
end
