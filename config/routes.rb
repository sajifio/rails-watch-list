Rails.application.routes.draw do
  # verb 'path', to: 'controller#action't

  resources :lists do
    # resources :bookmark, except: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
